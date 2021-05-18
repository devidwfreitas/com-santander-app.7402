package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class InstantiatorBuilder {
  private LabelMap attributes = new LabelMap();
  
  private Comparer comparer = new Comparer();
  
  private Detail detail;
  
  private LabelMap elements = new LabelMap();
  
  private Instantiator factory;
  
  private List<Creator> options = new ArrayList<Creator>();
  
  private Scanner scanner;
  
  private LabelMap texts = new LabelMap();
  
  public InstantiatorBuilder(Scanner paramScanner, Detail paramDetail) {
    this.scanner = paramScanner;
    this.detail = paramDetail;
  }
  
  private Instantiator build(Detail paramDetail) {
    if (this.factory == null)
      this.factory = create(paramDetail); 
    return this.factory;
  }
  
  private boolean contains(String[] paramArrayOfString, String paramString) {
    int j = paramArrayOfString.length;
    int i = 0;
    while (i < j) {
      String str = paramArrayOfString[i];
      if (str != paramString && !str.equals(paramString)) {
        i++;
        continue;
      } 
      return true;
    } 
    return false;
  }
  
  private Creator create(Signature paramSignature) {
    SignatureCreator signatureCreator = new SignatureCreator(paramSignature);
    if (paramSignature != null)
      this.options.add(signatureCreator); 
    return signatureCreator;
  }
  
  private Instantiator create(Detail paramDetail) {
    Signature signature = this.scanner.getSignature();
    ParameterMap parameterMap = this.scanner.getParameters();
    SignatureCreator signatureCreator = null;
    if (signature != null)
      signatureCreator = new SignatureCreator(signature); 
    return new ClassInstantiator(this.options, signatureCreator, parameterMap, paramDetail);
  }
  
  private Parameter create(Parameter paramParameter) {
    Label label = resolve(paramParameter);
    return (label != null) ? new CacheParameter(paramParameter, label) : null;
  }
  
  private void populate(Detail paramDetail) {
    Iterator<Signature> iterator = this.scanner.getSignatures().iterator();
    while (iterator.hasNext())
      populate(iterator.next()); 
  }
  
  private void populate(Signature paramSignature) {
    Signature signature = new Signature(paramSignature);
    Iterator<Parameter> iterator = paramSignature.iterator();
    while (iterator.hasNext()) {
      Parameter parameter = create(iterator.next());
      if (parameter != null)
        signature.add(parameter); 
    } 
    create(signature);
  }
  
  private void register(Label paramLabel, LabelMap paramLabelMap) {
    String str1 = paramLabel.getName();
    String str2 = paramLabel.getPath();
    if (paramLabelMap.containsKey(str1)) {
      if (!paramLabelMap.get(str1).getPath().equals(str1))
        paramLabelMap.remove(str1); 
    } else {
      paramLabelMap.put(str1, paramLabel);
    } 
    paramLabelMap.put(str2, paramLabel);
  }
  
  private Label resolve(Parameter paramParameter) {
    return paramParameter.isAttribute() ? resolve(paramParameter, this.attributes) : (paramParameter.isText() ? resolve(paramParameter, this.texts) : resolve(paramParameter, this.elements));
  }
  
  private Label resolve(Parameter paramParameter, LabelMap paramLabelMap) {
    String str = paramParameter.getName();
    Label label2 = paramLabelMap.get(paramParameter.getPath());
    Label label1 = label2;
    if (label2 == null)
      label1 = paramLabelMap.get(str); 
    return label1;
  }
  
  private void validate(Detail paramDetail) {
    for (Parameter parameter : this.scanner.getParameters().getAll()) {
      Label label = resolve(parameter);
      String str = parameter.getPath();
      if (label == null)
        throw new ConstructorException("Parameter '%s' does not have a match in %s", new Object[] { str, paramDetail }); 
      validateParameter(label, parameter);
    } 
    validateConstructors();
  }
  
  private void validateAnnotations(Label paramLabel, Parameter paramParameter) {
    Annotation annotation2 = paramLabel.getAnnotation();
    Annotation annotation1 = paramParameter.getAnnotation();
    String str = paramParameter.getName();
    if (!this.comparer.equals(annotation2, annotation1)) {
      Class<? extends Annotation> clazz2 = annotation2.annotationType();
      Class<? extends Annotation> clazz1 = annotation1.annotationType();
      if (!clazz2.equals(clazz1))
        throw new ConstructorException("Annotation %s does not match %s for '%s' in %s", new Object[] { clazz1, clazz2, str, paramParameter }); 
    } 
  }
  
  private void validateConstructor(Label paramLabel, List<Creator> paramList) {
    Iterator<Creator> iterator = paramList.iterator();
    while (iterator.hasNext()) {
      Signature signature = ((Creator)iterator.next()).getSignature();
      Contact contact = paramLabel.getContact();
      Object object = paramLabel.getKey();
      if (contact.isReadOnly() && signature.get(object) == null)
        iterator.remove(); 
    } 
  }
  
  private void validateConstructors() {
    List<Creator> list = this.factory.getCreators();
    if (this.factory.isDefault()) {
      validateConstructors(this.elements);
      validateConstructors(this.attributes);
    } 
    if (!list.isEmpty()) {
      validateConstructors(this.elements, list);
      validateConstructors(this.attributes, list);
    } 
  }
  
  private void validateConstructors(LabelMap paramLabelMap) {
    for (Label label : paramLabelMap) {
      if (label != null && label.getContact().isReadOnly())
        throw new ConstructorException("Default constructor can not accept read only %s in %s", new Object[] { label, this.detail }); 
    } 
  }
  
  private void validateConstructors(LabelMap paramLabelMap, List<Creator> paramList) {
    for (Label label : paramLabelMap) {
      if (label != null)
        validateConstructor(label, paramList); 
    } 
    if (paramList.isEmpty())
      throw new ConstructorException("No constructor accepts all read only values in %s", new Object[] { this.detail }); 
  }
  
  private void validateNames(Label paramLabel, Parameter paramParameter) {
    String[] arrayOfString = paramLabel.getNames();
    String str = paramParameter.getName();
    if (!contains(arrayOfString, str)) {
      String str1 = paramLabel.getName();
      if (str != str1) {
        if (str == null || str1 == null)
          throw new ConstructorException("Annotation does not match %s for '%s' in %s", new Object[] { paramLabel, str, paramParameter }); 
        if (!str.equals(str1))
          throw new ConstructorException("Annotation does not match %s for '%s' in %s", new Object[] { paramLabel, str, paramParameter }); 
      } 
    } 
  }
  
  private void validateParameter(Label paramLabel, Parameter paramParameter) {
    Contact contact = paramLabel.getContact();
    String str = paramParameter.getName();
    if (!Support.isAssignable(paramParameter.getType(), contact.getType()))
      throw new ConstructorException("Type is not compatible with %s for '%s' in %s", new Object[] { paramLabel, str, paramParameter }); 
    validateNames(paramLabel, paramParameter);
    validateAnnotations(paramLabel, paramParameter);
  }
  
  public Instantiator build() {
    if (this.factory == null) {
      populate(this.detail);
      build(this.detail);
      validate(this.detail);
    } 
    return this.factory;
  }
  
  public void register(Label paramLabel) {
    if (paramLabel.isAttribute()) {
      register(paramLabel, this.attributes);
      return;
    } 
    if (paramLabel.isText()) {
      register(paramLabel, this.texts);
      return;
    } 
    register(paramLabel, this.elements);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\InstantiatorBuilder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */