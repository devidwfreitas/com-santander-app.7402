package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.Order;

class StructureBuilder {
  private ModelAssembler assembler;
  
  private LabelMap attributes;
  
  private ExpressionBuilder builder;
  
  private LabelMap elements;
  
  private Instantiator factory;
  
  private boolean primitive;
  
  private InstantiatorBuilder resolver;
  
  private Model root;
  
  private Scanner scanner;
  
  private Support support;
  
  private Label text;
  
  private LabelMap texts;
  
  private Label version;
  
  public StructureBuilder(Scanner paramScanner, Detail paramDetail, Support paramSupport) {
    this.builder = new ExpressionBuilder(paramDetail, paramSupport);
    this.assembler = new ModelAssembler(this.builder, paramDetail, paramSupport);
    this.resolver = new InstantiatorBuilder(paramScanner, paramDetail);
    this.root = new TreeModel(paramScanner, paramDetail);
    this.attributes = new LabelMap(paramScanner);
    this.elements = new LabelMap(paramScanner);
    this.texts = new LabelMap(paramScanner);
    this.scanner = paramScanner;
    this.support = paramSupport;
  }
  
  private Model create(Expression paramExpression) {
    Model model2 = this.root;
    Expression expression = paramExpression;
    Model model1 = model2;
    while (true) {
      model2 = model1;
      if (model1 != null) {
        String str1 = expression.getPrefix();
        String str2 = expression.getFirst();
        int i = expression.getIndex();
        model2 = model1;
        if (str2 != null)
          model2 = model1.register(str2, str1, i); 
        if (expression.isPath()) {
          expression = expression.getPath(1);
          model1 = model2;
          continue;
        } 
      } 
      return model2;
    } 
  }
  
  private boolean isAttribute(String paramString) {
    Expression expression = this.builder.build(paramString);
    Model model = lookup(expression);
    if (model != null) {
      String str = expression.getLast();
      return !expression.isPath() ? model.isAttribute(paramString) : model.isAttribute(str);
    } 
    return false;
  }
  
  private boolean isElement(String paramString) {
    Expression expression = this.builder.build(paramString);
    Model model = lookup(expression);
    if (model != null) {
      String str = expression.getLast();
      int i = expression.getIndex();
      if (model.isElement(str))
        return true; 
      if (model.isModel(str))
        return !model.lookup(str, i).isEmpty(); 
    } 
    return false;
  }
  
  private boolean isEmpty() {
    return (this.text != null) ? false : this.root.isEmpty();
  }
  
  private Model lookup(Expression paramExpression) {
    Expression expression = paramExpression.getPath(0, 1);
    return paramExpression.isPath() ? this.root.lookup(expression) : this.root;
  }
  
  private void process(Contact paramContact, Annotation paramAnnotation, LabelMap paramLabelMap) {
    Label label = this.support.getLabel(paramContact, paramAnnotation);
    String str1 = label.getPath();
    String str2 = label.getName();
    if (paramLabelMap.get(str1) != null)
      throw new PersistenceException("Duplicate annotation of name '%s' on %s", new Object[] { str2, paramContact }); 
    process(paramContact, label, paramLabelMap);
  }
  
  private void process(Contact paramContact, Label paramLabel, LabelMap paramLabelMap) {
    Expression expression = paramLabel.getExpression();
    String str = paramLabel.getPath();
    Model model = this.root;
    if (!expression.isEmpty())
      model = register(expression); 
    this.resolver.register(paramLabel);
    model.register(paramLabel);
    paramLabelMap.put(str, paramLabel);
  }
  
  private Model register(Expression paramExpression) {
    Model model = this.root.lookup(paramExpression);
    return (model != null) ? model : create(paramExpression);
  }
  
  private void text(Contact paramContact, Annotation paramAnnotation) {
    Label label = this.support.getLabel(paramContact, paramAnnotation);
    Expression expression = label.getExpression();
    String str = label.getPath();
    Model model = this.root;
    if (!expression.isEmpty())
      model = register(expression); 
    if (this.texts.get(str) != null)
      throw new TextException("Multiple text annotations in %s", new Object[] { paramAnnotation }); 
    this.resolver.register(label);
    model.register(label);
    this.texts.put(str, label);
  }
  
  private void union(Contact paramContact, Annotation paramAnnotation, LabelMap paramLabelMap) {
    for (Label label : this.support.getLabels(paramContact, paramAnnotation)) {
      String str1 = label.getPath();
      String str2 = label.getName();
      if (paramLabelMap.get(str1) != null)
        throw new PersistenceException("Duplicate annotation of name '%s' on %s", new Object[] { str2, label }); 
      process(paramContact, label, paramLabelMap);
    } 
  }
  
  private void validateAttributes(Class paramClass, Order paramOrder) {
    if (paramOrder != null)
      for (String str : paramOrder.attributes()) {
        if (!isAttribute(str))
          throw new AttributeException("Ordered attribute '%s' missing in %s", new Object[] { str, paramClass }); 
      }  
  }
  
  private void validateElements(Class paramClass, Order paramOrder) {
    if (paramOrder != null)
      for (String str : paramOrder.elements()) {
        if (!isElement(str))
          throw new ElementException("Ordered element '%s' missing for %s", new Object[] { str, paramClass }); 
      }  
  }
  
  private void validateModel(Class paramClass) {
    if (!this.root.isEmpty())
      this.root.validate(paramClass); 
  }
  
  private void validateText(Class paramClass) {
    Label label = this.root.getText();
    if (label != null) {
      if (!label.isTextList()) {
        if (!this.elements.isEmpty())
          throw new TextException("Elements used with %s in %s", new Object[] { label, paramClass }); 
        if (this.root.isComposite())
          throw new TextException("Paths used with %s in %s", new Object[] { label, paramClass }); 
      } 
    } else if (this.scanner.isEmpty()) {
      this.primitive = isEmpty();
    } 
  }
  
  private void validateTextList(Class paramClass) {
    Label label = this.root.getText();
    if (label != null && label.isTextList()) {
      Object object = label.getKey();
      for (Label label1 : this.elements) {
        if (!label1.getKey().equals(object))
          throw new TextException("Elements used with %s in %s", new Object[] { label, paramClass }); 
        Class<String> clazz = label1.getDependent().getType();
        if (clazz == String.class)
          throw new TextException("Illegal entry of %s with text annotations on %s in %s", new Object[] { clazz, label, paramClass }); 
      } 
      if (this.root.isComposite())
        throw new TextException("Paths used with %s in %s", new Object[] { label, paramClass }); 
    } 
  }
  
  private void validateUnions(Class paramClass) {
    for (Label label : this.elements) {
      String[] arrayOfString = label.getPaths();
      Contact contact = label.getContact();
      int j = arrayOfString.length;
      for (int i = 0; i < j; i++) {
        String str = arrayOfString[i];
        Annotation annotation = contact.getAnnotation();
        Label label1 = this.elements.get(str);
        if (label.isInline() != label1.isInline())
          throw new UnionException("Inline must be consistent in %s for %s", new Object[] { annotation, contact }); 
        if (label.isRequired() != label1.isRequired())
          throw new UnionException("Required must be consistent in %s for %s", new Object[] { annotation, contact }); 
      } 
    } 
  }
  
  private void version(Contact paramContact, Annotation paramAnnotation) {
    Label label = this.support.getLabel(paramContact, paramAnnotation);
    if (this.version != null)
      throw new AttributeException("Multiple version annotations in %s", new Object[] { paramAnnotation }); 
    this.version = label;
  }
  
  public void assemble(Class paramClass) {
    Order order = this.scanner.getOrder();
    if (order != null)
      this.assembler.assemble(this.root, order); 
  }
  
  public Structure build(Class paramClass) {
    return new Structure(this.factory, this.root, this.version, this.text, this.primitive);
  }
  
  public void commit(Class paramClass) {
    if (this.factory == null)
      this.factory = this.resolver.build(); 
  }
  
  public void process(Contact paramContact, Annotation paramAnnotation) {
    if (paramAnnotation instanceof org.simpleframework.xml.Attribute)
      process(paramContact, paramAnnotation, this.attributes); 
    if (paramAnnotation instanceof org.simpleframework.xml.ElementUnion)
      union(paramContact, paramAnnotation, this.elements); 
    if (paramAnnotation instanceof org.simpleframework.xml.ElementListUnion)
      union(paramContact, paramAnnotation, this.elements); 
    if (paramAnnotation instanceof org.simpleframework.xml.ElementMapUnion)
      union(paramContact, paramAnnotation, this.elements); 
    if (paramAnnotation instanceof org.simpleframework.xml.ElementList)
      process(paramContact, paramAnnotation, this.elements); 
    if (paramAnnotation instanceof org.simpleframework.xml.ElementArray)
      process(paramContact, paramAnnotation, this.elements); 
    if (paramAnnotation instanceof org.simpleframework.xml.ElementMap)
      process(paramContact, paramAnnotation, this.elements); 
    if (paramAnnotation instanceof org.simpleframework.xml.Element)
      process(paramContact, paramAnnotation, this.elements); 
    if (paramAnnotation instanceof org.simpleframework.xml.Version)
      version(paramContact, paramAnnotation); 
    if (paramAnnotation instanceof org.simpleframework.xml.Text)
      text(paramContact, paramAnnotation); 
  }
  
  public void validate(Class paramClass) {
    Order order = this.scanner.getOrder();
    validateUnions(paramClass);
    validateElements(paramClass, order);
    validateAttributes(paramClass, order);
    validateModel(paramClass);
    validateText(paramClass);
    validateTextList(paramClass);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\StructureBuilder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */