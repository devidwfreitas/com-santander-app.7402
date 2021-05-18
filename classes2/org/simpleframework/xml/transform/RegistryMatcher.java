package org.simpleframework.xml.transform;

import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.ConcurrentCache;

public class RegistryMatcher implements Matcher {
  private final Cache<Transform> transforms = (Cache<Transform>)new ConcurrentCache();
  
  private final Cache<Class> types = (Cache<Class>)new ConcurrentCache();
  
  private Transform create(Class paramClass) {
    Class clazz = (Class)this.types.fetch(paramClass);
    return (clazz != null) ? create(paramClass, clazz) : null;
  }
  
  private Transform create(Class paramClass1, Class<Transform> paramClass2) {
    Transform transform = paramClass2.newInstance();
    if (transform != null)
      this.transforms.cache(paramClass1, transform); 
    return transform;
  }
  
  public void bind(Class paramClass1, Class paramClass2) {
    this.types.cache(paramClass1, paramClass2);
  }
  
  public void bind(Class paramClass, Transform paramTransform) {
    this.transforms.cache(paramClass, paramTransform);
  }
  
  public Transform match(Class paramClass) {
    Transform transform2 = (Transform)this.transforms.fetch(paramClass);
    Transform transform1 = transform2;
    if (transform2 == null)
      transform1 = create(paramClass); 
    return transform1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\transform\RegistryMatcher.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */