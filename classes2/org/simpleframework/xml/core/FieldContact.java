package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.ConcurrentCache;

class FieldContact implements Contact {
  private final Cache<Annotation> cache = (Cache<Annotation>)new ConcurrentCache();
  
  private final Field field;
  
  private final Annotation label;
  
  private final Annotation[] list;
  
  private final int modifier;
  
  private final String name;
  
  public FieldContact(Field paramField, Annotation paramAnnotation, Annotation[] paramArrayOfAnnotation) {
    this.modifier = paramField.getModifiers();
    this.name = paramField.getName();
    this.label = paramAnnotation;
    this.field = paramField;
    this.list = paramArrayOfAnnotation;
  }
  
  private <T extends Annotation> T getCache(Class<T> paramClass) {
    if (this.cache.isEmpty())
      for (Annotation annotation : this.list) {
        Class<? extends Annotation> clazz = annotation.annotationType();
        this.cache.cache(clazz, annotation);
      }  
    return (T)this.cache.fetch(paramClass);
  }
  
  public Object get(Object paramObject) {
    return this.field.get(paramObject);
  }
  
  public Annotation getAnnotation() {
    return this.label;
  }
  
  public <T extends Annotation> T getAnnotation(Class<T> paramClass) {
    return (T)((paramClass == this.label.annotationType()) ? this.label : (Object)getCache(paramClass));
  }
  
  public Class getDeclaringClass() {
    return this.field.getDeclaringClass();
  }
  
  public Class getDependent() {
    return Reflector.getDependent(this.field);
  }
  
  public Class[] getDependents() {
    return Reflector.getDependents(this.field);
  }
  
  public String getName() {
    return this.name;
  }
  
  public Class getType() {
    return this.field.getType();
  }
  
  public boolean isFinal() {
    return Modifier.isFinal(this.modifier);
  }
  
  public boolean isReadOnly() {
    return (!isStatic() && isFinal());
  }
  
  public boolean isStatic() {
    return Modifier.isStatic(this.modifier);
  }
  
  public void set(Object paramObject1, Object paramObject2) {
    if (!isFinal())
      this.field.set(paramObject1, paramObject2); 
  }
  
  public String toString() {
    return String.format("field '%s' %s", new Object[] { getName(), this.field.toString() });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\FieldContact.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */