package org.simpleframework.xml.transform;

import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.ConcurrentCache;

public class Transformer {
  private final Cache<Transform> cache = (Cache<Transform>)new ConcurrentCache();
  
  private final Cache<Object> error = (Cache<Object>)new ConcurrentCache();
  
  private final Matcher matcher;
  
  public Transformer(Matcher paramMatcher) {
    this.matcher = new DefaultMatcher(paramMatcher);
  }
  
  private Transform lookup(Class paramClass) {
    if (!this.error.contains(paramClass)) {
      Transform transform = (Transform)this.cache.fetch(paramClass);
      return (transform != null) ? transform : match(paramClass);
    } 
    return null;
  }
  
  private Transform match(Class paramClass) {
    Transform transform = this.matcher.match(paramClass);
    if (transform != null) {
      this.cache.cache(paramClass, transform);
      return transform;
    } 
    this.error.cache(paramClass, this);
    return transform;
  }
  
  public Object read(String paramString, Class paramClass) {
    Transform transform = lookup(paramClass);
    if (transform == null)
      throw new TransformException("Transform of %s not supported", new Object[] { paramClass }); 
    return transform.read(paramString);
  }
  
  public boolean valid(Class paramClass) {
    return (lookup(paramClass) != null);
  }
  
  public String write(Object paramObject, Class paramClass) {
    Transform<Object> transform = lookup(paramClass);
    if (transform == null)
      throw new TransformException("Transform of %s not supported", new Object[] { paramClass }); 
    return transform.write(paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\transform\Transformer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */