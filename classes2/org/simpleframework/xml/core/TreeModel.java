package org.simpleframework.xml.core;

import java.util.ArrayList;
import java.util.Iterator;

class TreeModel implements Model {
  private LabelMap attributes;
  
  private Detail detail;
  
  private LabelMap elements;
  
  private Expression expression;
  
  private int index;
  
  private Label list;
  
  private ModelMap models;
  
  private String name;
  
  private TreeModel$OrderList order;
  
  private Policy policy;
  
  private String prefix;
  
  private Label text;
  
  public TreeModel(Policy paramPolicy, Detail paramDetail) {
    this(paramPolicy, paramDetail, null, null, 1);
  }
  
  public TreeModel(Policy paramPolicy, Detail paramDetail, String paramString1, String paramString2, int paramInt) {
    this.attributes = new LabelMap(paramPolicy);
    this.elements = new LabelMap(paramPolicy);
    this.models = new ModelMap(paramDetail);
    this.order = new TreeModel$OrderList();
    this.detail = paramDetail;
    this.policy = paramPolicy;
    this.prefix = paramString2;
    this.index = paramInt;
    this.name = paramString1;
  }
  
  private Model create(String paramString1, String paramString2, int paramInt) {
    TreeModel treeModel = new TreeModel(this.policy, this.detail, paramString1, paramString2, paramInt);
    if (paramString1 != null) {
      this.models.register(paramString1, treeModel);
      this.order.add(paramString1);
    } 
    return treeModel;
  }
  
  private void validateAttributes(Class paramClass) {
    for (String str : this.attributes.keySet()) {
      if (this.attributes.get(str) == null)
        throw new AttributeException("Ordered attribute '%s' does not exist in %s", new Object[] { str, paramClass }); 
      if (this.expression != null)
        this.expression.getAttribute(str); 
    } 
  }
  
  private void validateElements(Class paramClass) {
    for (String str : this.elements.keySet()) {
      ModelList modelList = this.models.get(str);
      Label label = this.elements.get(str);
      if (modelList == null && label == null)
        throw new ElementException("Ordered element '%s' does not exist in %s", new Object[] { str, paramClass }); 
      if (modelList != null && label != null && !modelList.isEmpty())
        throw new ElementException("Element '%s' is also a path name in %s", new Object[] { str, paramClass }); 
      if (this.expression != null)
        this.expression.getElement(str); 
    } 
  }
  
  private void validateExpression(Label paramLabel) {
    String str;
    Expression expression = paramLabel.getExpression();
    if (this.expression != null) {
      String str1 = this.expression.getPath();
      str = expression.getPath();
      if (!str1.equals(str))
        throw new PathException("Path '%s' does not match '%s' in %s", new Object[] { str1, str, this.detail }); 
    } else {
      this.expression = (Expression)str;
    } 
  }
  
  private void validateExpressions(Class paramClass) {
    for (Label label : this.elements) {
      if (label != null)
        validateExpression(label); 
    } 
    for (Label label : this.attributes) {
      if (label != null)
        validateExpression(label); 
    } 
    if (this.text != null)
      validateExpression(this.text); 
  }
  
  private void validateModels(Class paramClass) {
    Iterator<ModelList> iterator = this.models.iterator();
    while (iterator.hasNext()) {
      Iterator<Model> iterator1 = ((ModelList)iterator.next()).iterator();
      int i = 1;
      while (iterator1.hasNext()) {
        Model model = iterator1.next();
        if (model != null) {
          String str = model.getName();
          int j = model.getIndex();
          if (j != i)
            throw new ElementException("Path section '%s[%s]' is out of sequence in %s", new Object[] { str, Integer.valueOf(j), paramClass }); 
          model.validate(paramClass);
          i++;
        } 
      } 
    } 
  }
  
  private void validateText(Class paramClass) {
    if (this.text != null) {
      if (!this.elements.isEmpty())
        throw new TextException("Text annotation %s used with elements in %s", new Object[] { this.text, paramClass }); 
      if (isComposite())
        throw new TextException("Text annotation %s can not be used with paths in %s", new Object[] { this.text, paramClass }); 
    } 
  }
  
  public LabelMap getAttributes() {
    return this.attributes.getLabels();
  }
  
  public LabelMap getElements() {
    return this.elements.getLabels();
  }
  
  public Expression getExpression() {
    return this.expression;
  }
  
  public int getIndex() {
    return this.index;
  }
  
  public ModelMap getModels() {
    return this.models.getModels();
  }
  
  public String getName() {
    return this.name;
  }
  
  public String getPrefix() {
    return this.prefix;
  }
  
  public Label getText() {
    return (this.list != null) ? this.list : this.text;
  }
  
  public boolean isAttribute(String paramString) {
    return this.attributes.containsKey(paramString);
  }
  
  public boolean isComposite() {
    Iterator<ModelList> iterator = this.models.iterator();
    while (iterator.hasNext()) {
      for (Model model : iterator.next()) {
        if (model != null && !model.isEmpty())
          return true; 
      } 
    } 
    return !this.models.isEmpty();
  }
  
  public boolean isElement(String paramString) {
    return this.elements.containsKey(paramString);
  }
  
  public boolean isEmpty() {
    return (this.text == null && this.elements.isEmpty() && this.attributes.isEmpty() && !isComposite());
  }
  
  public boolean isModel(String paramString) {
    return this.models.containsKey(paramString);
  }
  
  public Iterator<String> iterator() {
    ArrayList<String> arrayList = new ArrayList();
    Iterator<String> iterator = this.order.iterator();
    while (iterator.hasNext())
      arrayList.add(iterator.next()); 
    return arrayList.iterator();
  }
  
  public Model lookup(String paramString, int paramInt) {
    return this.models.lookup(paramString, paramInt);
  }
  
  public Model lookup(Expression paramExpression) {
    Model model2 = lookup(paramExpression.getFirst(), paramExpression.getIndex());
    Model model1 = model2;
    if (paramExpression.isPath()) {
      paramExpression = paramExpression.getPath(1, 0);
      model1 = model2;
      if (model2 != null)
        model1 = model2.lookup(paramExpression); 
    } 
    return model1;
  }
  
  public Model register(String paramString1, String paramString2, int paramInt) {
    Model model2 = this.models.lookup(paramString1, paramInt);
    Model model1 = model2;
    if (model2 == null)
      model1 = create(paramString1, paramString2, paramInt); 
    return model1;
  }
  
  public void register(Label paramLabel) {
    if (paramLabel.isAttribute()) {
      registerAttribute(paramLabel);
      return;
    } 
    if (paramLabel.isText()) {
      registerText(paramLabel);
      return;
    } 
    registerElement(paramLabel);
  }
  
  public void registerAttribute(String paramString) {
    this.attributes.put(paramString, null);
  }
  
  public void registerAttribute(Label paramLabel) {
    String str = paramLabel.getName();
    if (this.attributes.get(str) != null)
      throw new AttributeException("Duplicate annotation of name '%s' on %s", new Object[] { str, paramLabel }); 
    this.attributes.put(str, paramLabel);
  }
  
  public void registerElement(String paramString) {
    if (!this.order.contains(paramString))
      this.order.add(paramString); 
    this.elements.put(paramString, null);
  }
  
  public void registerElement(Label paramLabel) {
    String str = paramLabel.getName();
    if (this.elements.get(str) != null)
      throw new ElementException("Duplicate annotation of name '%s' on %s", new Object[] { str, paramLabel }); 
    if (!this.order.contains(str))
      this.order.add(str); 
    if (paramLabel.isTextList())
      this.list = paramLabel; 
    this.elements.put(str, paramLabel);
  }
  
  public void registerText(Label paramLabel) {
    if (this.text != null)
      throw new TextException("Duplicate text annotation on %s", new Object[] { paramLabel }); 
    this.text = paramLabel;
  }
  
  public String toString() {
    return String.format("model '%s[%s]'", new Object[] { this.name, Integer.valueOf(this.index) });
  }
  
  public void validate(Class paramClass) {
    validateExpressions(paramClass);
    validateAttributes(paramClass);
    validateElements(paramClass);
    validateModels(paramClass);
    validateText(paramClass);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\TreeModel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */