package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.List;

class SignatureScanner {
  private final SignatureBuilder builder;
  
  private final Constructor constructor;
  
  private final ParameterFactory factory;
  
  private final ParameterMap registry;
  
  private final Class type;
  
  public SignatureScanner(Constructor paramConstructor, ParameterMap paramParameterMap, Support paramSupport) {
    this.builder = new SignatureBuilder(paramConstructor);
    this.factory = new ParameterFactory(paramSupport);
    this.type = paramConstructor.getDeclaringClass();
    this.constructor = paramConstructor;
    this.registry = paramParameterMap;
    scan(this.type);
  }
  
  private List<Parameter> create(Annotation paramAnnotation, int paramInt) {
    Parameter parameter = this.factory.getInstance(this.constructor, paramAnnotation, paramInt);
    if (parameter != null)
      register(parameter); 
    return Collections.singletonList(parameter);
  }
  
  private Annotation[] extract(Annotation paramAnnotation) {
    Method[] arrayOfMethod = paramAnnotation.annotationType().getDeclaredMethods();
    if (arrayOfMethod.length != 1)
      throw new UnionException("Annotation '%s' is not a valid union for %s", new Object[] { paramAnnotation, this.type }); 
    return (Annotation[])arrayOfMethod[0].invoke(paramAnnotation, new Object[0]);
  }
  
  private List<Parameter> process(Annotation paramAnnotation, int paramInt) {
    return (paramAnnotation instanceof org.simpleframework.xml.Attribute) ? create(paramAnnotation, paramInt) : ((paramAnnotation instanceof org.simpleframework.xml.Element) ? create(paramAnnotation, paramInt) : ((paramAnnotation instanceof org.simpleframework.xml.ElementList) ? create(paramAnnotation, paramInt) : ((paramAnnotation instanceof org.simpleframework.xml.ElementArray) ? create(paramAnnotation, paramInt) : ((paramAnnotation instanceof org.simpleframework.xml.ElementMap) ? create(paramAnnotation, paramInt) : ((paramAnnotation instanceof org.simpleframework.xml.ElementListUnion) ? union(paramAnnotation, paramInt) : ((paramAnnotation instanceof org.simpleframework.xml.ElementMapUnion) ? union(paramAnnotation, paramInt) : ((paramAnnotation instanceof org.simpleframework.xml.ElementUnion) ? union(paramAnnotation, paramInt) : ((paramAnnotation instanceof org.simpleframework.xml.Text) ? create(paramAnnotation, paramInt) : Collections.emptyList()))))))));
  }
  
  private void register(Parameter paramParameter) {
    String str = paramParameter.getPath();
    Object object = paramParameter.getKey();
    if (this.registry.containsKey(object))
      validate(paramParameter, object); 
    if (this.registry.containsKey(str))
      validate(paramParameter, str); 
    this.registry.put(str, paramParameter);
    this.registry.put(object, paramParameter);
  }
  
  private void scan(Class paramClass) {
    Class[] arrayOfClass = this.constructor.getParameterTypes();
    for (int i = 0; i < arrayOfClass.length; i++)
      scan(arrayOfClass[i], i); 
  }
  
  private void scan(Class paramClass, int paramInt) {
    Annotation[][] arrayOfAnnotation = this.constructor.getParameterAnnotations();
    for (int i = 0; i < (arrayOfAnnotation[paramInt]).length; i++) {
      for (Parameter parameter : process(arrayOfAnnotation[paramInt][i], paramInt))
        this.builder.insert(parameter, paramInt); 
    } 
  }
  
  private List<Parameter> union(Annotation paramAnnotation, int paramInt) {
    Signature signature = new Signature(this.constructor);
    for (Annotation annotation : extract(paramAnnotation)) {
      Parameter parameter = this.factory.getInstance(this.constructor, paramAnnotation, annotation, paramInt);
      String str = parameter.getPath();
      if (signature.contains(str))
        throw new UnionException("Annotation name '%s' used more than once in %s for %s", new Object[] { str, paramAnnotation, this.type }); 
      signature.set(str, parameter);
      register(parameter);
    } 
    return signature.getAll();
  }
  
  private void validate(Parameter paramParameter, Object paramObject) {
    paramObject = this.registry.get(paramObject);
    if (paramParameter.isText() != paramObject.isText()) {
      Annotation annotation1 = paramParameter.getAnnotation();
      Annotation annotation2 = paramObject.getAnnotation();
      String str = paramParameter.getPath();
      if (!annotation1.equals(annotation2))
        throw new ConstructorException("Annotations do not match for '%s' in %s", new Object[] { str, this.type }); 
      if (paramObject.getType() != paramParameter.getType())
        throw new ConstructorException("Parameter types do not match for '%s' in %s", new Object[] { str, this.type }); 
    } 
  }
  
  public List<Signature> getSignatures() {
    return this.builder.build();
  }
  
  public boolean isValid() {
    return this.builder.isValid();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\SignatureScanner.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */