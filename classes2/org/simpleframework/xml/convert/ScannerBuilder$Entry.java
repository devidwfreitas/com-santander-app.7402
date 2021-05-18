package org.simpleframework.xml.convert;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.util.ConcurrentCache;

class ScannerBuilder$Entry extends ConcurrentCache<Annotation> implements Scanner {
  private final Class root;
  
  public ScannerBuilder$Entry(Class paramClass) {
    this.root = paramClass;
  }
  
  private <T extends Annotation> T find(Class<T> paramClass) {
    for (Class clazz = this.root; clazz != null; clazz = clazz.getSuperclass()) {
      Object object = clazz.getAnnotation(paramClass);
      if (object != null)
        return (T)object; 
    } 
    return null;
  }
  
  public <T extends Annotation> T scan(Class<T> paramClass) {
    if (!contains(paramClass)) {
      Object object = find((Class)paramClass);
      if (paramClass != null && object != null)
        put(paramClass, object); 
    } 
    return (T)get(paramClass);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\convert\ScannerBuilder$Entry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */