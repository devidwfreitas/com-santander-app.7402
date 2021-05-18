package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.ConcurrentCache;

class SetPart implements MethodPart {
  private final Cache<Annotation> cache = (Cache<Annotation>)new ConcurrentCache();
  
  private final Annotation label;
  
  private final Annotation[] list;
  
  private final Method method;
  
  private final String name;
  
  private final MethodType type;
  
  public SetPart(MethodName paramMethodName, Annotation paramAnnotation, Annotation[] paramArrayOfAnnotation) {
    this.method = paramMethodName.getMethod();
    this.name = paramMethodName.getName();
    this.type = paramMethodName.getType();
    this.label = paramAnnotation;
    this.list = paramArrayOfAnnotation;
  }
  
  public Annotation getAnnotation() {
    return this.label;
  }
  
  public <T extends Annotation> T getAnnotation(Class<T> paramClass) {
    if (this.cache.isEmpty())
      for (Annotation annotation : this.list) {
        Class<? extends Annotation> clazz = annotation.annotationType();
        this.cache.cache(clazz, annotation);
      }  
    return (T)this.cache.fetch(paramClass);
  }
  
  public Class getDeclaringClass() {
    return this.method.getDeclaringClass();
  }
  
  public Class getDependent() {
    return Reflector.getParameterDependent(this.method, 0);
  }
  
  public Class[] getDependents() {
    return Reflector.getParameterDependents(this.method, 0);
  }
  
  public Method getMethod() {
    if (!this.method.isAccessible())
      this.method.setAccessible(true); 
    return this.method;
  }
  
  public MethodType getMethodType() {
    return this.type;
  }
  
  public String getName() {
    return this.name;
  }
  
  public Class getType() {
    return this.method.getParameterTypes()[0];
  }
  
  public String toString() {
    return this.method.toGenericString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\SetPart.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */