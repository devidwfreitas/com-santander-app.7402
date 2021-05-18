package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Proxy;
import java.util.Collection;
import java.util.Map;
import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementArray;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.stream.Format;
import org.simpleframework.xml.stream.Verbosity;

class AnnotationFactory {
  private final Format format;
  
  private final boolean required;
  
  public AnnotationFactory(Detail paramDetail, Support paramSupport) {
    this.required = paramDetail.isRequired();
    this.format = paramSupport.getFormat();
  }
  
  private ClassLoader getClassLoader() {
    return AnnotationFactory.class.getClassLoader();
  }
  
  private Annotation getInstance(Class paramClass) {
    ClassLoader classLoader = getClassLoader();
    Class<?> clazz = paramClass.getComponentType();
    return paramClass.isArray() ? (isPrimitive(clazz) ? getInstance(classLoader, Element.class) : getInstance(classLoader, ElementArray.class)) : ((isPrimitive(paramClass) && isAttribute()) ? getInstance(classLoader, Attribute.class) : getInstance(classLoader, Element.class));
  }
  
  private Annotation getInstance(ClassLoader paramClassLoader, Class paramClass) {
    return getInstance(paramClassLoader, paramClass, false);
  }
  
  private Annotation getInstance(ClassLoader paramClassLoader, Class paramClass, boolean paramBoolean) {
    AnnotationHandler annotationHandler = new AnnotationHandler(paramClass, this.required, paramBoolean);
    return (Annotation)Proxy.newProxyInstance(paramClassLoader, new Class[] { paramClass }, annotationHandler);
  }
  
  private boolean isAttribute() {
    boolean bool2 = false;
    Verbosity verbosity = this.format.getVerbosity();
    boolean bool1 = bool2;
    if (verbosity != null) {
      bool1 = bool2;
      if (verbosity == Verbosity.LOW)
        bool1 = true; 
    } 
    return bool1;
  }
  
  private boolean isPrimitive(Class<?> paramClass) {
    return (!Number.class.isAssignableFrom(paramClass) && paramClass != Boolean.class && paramClass != Character.class) ? paramClass.isPrimitive() : true;
  }
  
  private boolean isPrimitiveKey(Class[] paramArrayOfClass) {
    if (paramArrayOfClass != null && paramArrayOfClass.length > 0) {
      Class<?> clazz1 = paramArrayOfClass[0].getSuperclass();
      Class clazz = paramArrayOfClass[0];
      return (clazz1 == null || (!clazz1.isEnum() && !clazz.isEnum())) ? isPrimitive(clazz) : true;
    } 
    return false;
  }
  
  public Annotation getInstance(Class<?> paramClass, Class[] paramArrayOfClass) {
    ClassLoader classLoader = getClassLoader();
    return Map.class.isAssignableFrom(paramClass) ? ((isPrimitiveKey(paramArrayOfClass) && isAttribute()) ? getInstance(classLoader, ElementMap.class, true) : getInstance(classLoader, ElementMap.class)) : (Collection.class.isAssignableFrom(paramClass) ? getInstance(classLoader, ElementList.class) : getInstance(paramClass));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\AnnotationFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */