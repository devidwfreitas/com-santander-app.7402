package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;

abstract class ParameterContact<T extends Annotation> implements Contact {
  protected final Constructor factory;
  
  protected final int index;
  
  protected final T label;
  
  protected final Annotation[] labels;
  
  protected final Class owner;
  
  public ParameterContact(T paramT, Constructor paramConstructor, int paramInt) {
    this.labels = paramConstructor.getParameterAnnotations()[paramInt];
    this.owner = paramConstructor.getDeclaringClass();
    this.factory = paramConstructor;
    this.index = paramInt;
    this.label = paramT;
  }
  
  public Object get(Object paramObject) {
    return null;
  }
  
  public Annotation getAnnotation() {
    return (Annotation)this.label;
  }
  
  public <A extends Annotation> A getAnnotation(Class<A> paramClass) {
    for (Annotation annotation : this.labels) {
      if (annotation.annotationType().equals(paramClass))
        return (A)annotation; 
    } 
    return null;
  }
  
  public Class getDeclaringClass() {
    return this.owner;
  }
  
  public Class getDependent() {
    return Reflector.getParameterDependent(this.factory, this.index);
  }
  
  public Class[] getDependents() {
    return Reflector.getParameterDependents(this.factory, this.index);
  }
  
  public abstract String getName();
  
  public Class getType() {
    return this.factory.getParameterTypes()[this.index];
  }
  
  public boolean isReadOnly() {
    return false;
  }
  
  public void set(Object paramObject1, Object paramObject2) {}
  
  public String toString() {
    return String.format("parameter %s of constructor %s", new Object[] { Integer.valueOf(this.index), this.factory });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\ParameterContact.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */