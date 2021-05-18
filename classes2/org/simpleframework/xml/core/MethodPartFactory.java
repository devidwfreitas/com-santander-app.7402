package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;

class MethodPartFactory {
  private final AnnotationFactory factory;
  
  public MethodPartFactory(Detail paramDetail, Support paramSupport) {
    this.factory = new AnnotationFactory(paramDetail, paramSupport);
  }
  
  private Annotation getAnnotation(Method paramMethod) {
    Class[] arrayOfClass = getDependents(paramMethod);
    Class clazz = getType(paramMethod);
    return (clazz != null) ? this.factory.getInstance(clazz, arrayOfClass) : null;
  }
  
  private Class[] getDependents(Method paramMethod) {
    MethodType methodType = getMethodType(paramMethod);
    return (methodType == MethodType.SET) ? Reflector.getParameterDependents(paramMethod, 0) : ((methodType == MethodType.GET) ? Reflector.getReturnDependents(paramMethod) : ((methodType == MethodType.IS) ? Reflector.getReturnDependents(paramMethod) : null));
  }
  
  private MethodType getMethodType(Method paramMethod) {
    String str = paramMethod.getName();
    return str.startsWith("get") ? MethodType.GET : (str.startsWith("is") ? MethodType.IS : (str.startsWith("set") ? MethodType.SET : MethodType.NONE));
  }
  
  private MethodName getName(Method paramMethod, Annotation paramAnnotation) {
    MethodType methodType = getMethodType(paramMethod);
    if (methodType == MethodType.GET)
      return getRead(paramMethod, methodType); 
    if (methodType == MethodType.IS)
      return getRead(paramMethod, methodType); 
    if (methodType == MethodType.SET)
      return getWrite(paramMethod, methodType); 
    throw new MethodException("Annotation %s must mark a set or get method", new Object[] { paramAnnotation });
  }
  
  private Class getParameterType(Method paramMethod) {
    return ((paramMethod.getParameterTypes()).length == 1) ? paramMethod.getParameterTypes()[0] : null;
  }
  
  private MethodName getRead(Method paramMethod, MethodType paramMethodType) {
    Class[] arrayOfClass = paramMethod.getParameterTypes();
    String str2 = paramMethod.getName();
    if (arrayOfClass.length != 0)
      throw new MethodException("Get method %s is not a valid property", new Object[] { paramMethod }); 
    String str1 = getTypeName(str2, paramMethodType);
    if (str1 == null)
      throw new MethodException("Could not get name for %s", new Object[] { paramMethod }); 
    return new MethodName(paramMethod, paramMethodType, str1);
  }
  
  private Class getReturnType(Method paramMethod) {
    return ((paramMethod.getParameterTypes()).length == 0) ? paramMethod.getReturnType() : null;
  }
  
  private String getTypeName(String paramString, MethodType paramMethodType) {
    int i = paramMethodType.getPrefix();
    int j = paramString.length();
    String str = paramString;
    if (j > i)
      str = paramString.substring(i, j); 
    return Reflector.getName(str);
  }
  
  private MethodName getWrite(Method paramMethod, MethodType paramMethodType) {
    Class[] arrayOfClass = paramMethod.getParameterTypes();
    String str2 = paramMethod.getName();
    if (arrayOfClass.length != 1)
      throw new MethodException("Set method %s is not a valid property", new Object[] { paramMethod }); 
    String str1 = getTypeName(str2, paramMethodType);
    if (str1 == null)
      throw new MethodException("Could not get name for %s", new Object[] { paramMethod }); 
    return new MethodName(paramMethod, paramMethodType, str1);
  }
  
  public MethodPart getInstance(Method paramMethod, Annotation paramAnnotation, Annotation[] paramArrayOfAnnotation) {
    MethodName methodName = getName(paramMethod, paramAnnotation);
    return (MethodPart)((methodName.getType() == MethodType.SET) ? new SetPart(methodName, paramAnnotation, paramArrayOfAnnotation) : new GetPart(methodName, paramAnnotation, paramArrayOfAnnotation));
  }
  
  public MethodPart getInstance(Method paramMethod, Annotation[] paramArrayOfAnnotation) {
    Annotation annotation = getAnnotation(paramMethod);
    return (annotation != null) ? getInstance(paramMethod, annotation, paramArrayOfAnnotation) : null;
  }
  
  public Class getType(Method paramMethod) {
    MethodType methodType = getMethodType(paramMethod);
    return (methodType == MethodType.SET) ? getParameterType(paramMethod) : ((methodType == MethodType.GET) ? getReturnType(paramMethod) : ((methodType == MethodType.IS) ? getReturnType(paramMethod) : null));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\MethodPartFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */