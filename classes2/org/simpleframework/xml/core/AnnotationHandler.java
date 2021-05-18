package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

class AnnotationHandler implements InvocationHandler {
  private static final String ATTRIBUTE = "attribute";
  
  private static final String CLASS = "annotationType";
  
  private static final String EQUAL = "equals";
  
  private static final String REQUIRED = "required";
  
  private static final String STRING = "toString";
  
  private final boolean attribute;
  
  private final Comparer comparer = new Comparer();
  
  private final boolean required;
  
  private final Class type;
  
  public AnnotationHandler(Class paramClass) {
    this(paramClass, true);
  }
  
  public AnnotationHandler(Class paramClass, boolean paramBoolean) {
    this(paramClass, paramBoolean, false);
  }
  
  public AnnotationHandler(Class paramClass, boolean paramBoolean1, boolean paramBoolean2) {
    this.attribute = paramBoolean2;
    this.required = paramBoolean1;
    this.type = paramClass;
  }
  
  private void attributes(StringBuilder paramStringBuilder) {
    Method[] arrayOfMethod = this.type.getDeclaredMethods();
    for (int i = 0; i < arrayOfMethod.length; i++) {
      String str = arrayOfMethod[i].getName();
      Object object = value(arrayOfMethod[i]);
      if (i > 0) {
        paramStringBuilder.append(',');
        paramStringBuilder.append(' ');
      } 
      paramStringBuilder.append(str);
      paramStringBuilder.append('=');
      paramStringBuilder.append(object);
    } 
    paramStringBuilder.append(')');
  }
  
  private boolean equals(Object paramObject, Object[] paramArrayOfObject) {
    paramObject = paramObject;
    Annotation annotation = (Annotation)paramArrayOfObject[0];
    if (paramObject.annotationType() != annotation.annotationType())
      throw new PersistenceException("Annotation %s is not the same as %s", new Object[] { paramObject, annotation }); 
    return this.comparer.equals((Annotation)paramObject, annotation);
  }
  
  private void name(StringBuilder paramStringBuilder) {
    String str = this.type.getName();
    if (str != null) {
      paramStringBuilder.append('@');
      paramStringBuilder.append(str);
      paramStringBuilder.append('(');
    } 
  }
  
  private Object value(Method paramMethod) {
    String str = paramMethod.getName();
    return str.equals("required") ? Boolean.valueOf(this.required) : (str.equals("attribute") ? Boolean.valueOf(this.attribute) : paramMethod.getDefaultValue());
  }
  
  public Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject) {
    String str = paramMethod.getName();
    return str.equals("toString") ? toString() : (str.equals("equals") ? Boolean.valueOf(equals(paramObject, paramArrayOfObject)) : (str.equals("annotationType") ? this.type : (str.equals("required") ? Boolean.valueOf(this.required) : (str.equals("attribute") ? Boolean.valueOf(this.attribute) : paramMethod.getDefaultValue()))));
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    if (this.type != null) {
      name(stringBuilder);
      attributes(stringBuilder);
    } 
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\AnnotationHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */