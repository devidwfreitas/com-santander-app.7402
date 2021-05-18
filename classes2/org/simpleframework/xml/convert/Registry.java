package org.simpleframework.xml.convert;

import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.ConcurrentCache;

public class Registry {
  private final RegistryBinder binder = new RegistryBinder();
  
  private final Cache<Converter> cache = (Cache<Converter>)new ConcurrentCache();
  
  private Converter create(Class paramClass) {
    Converter converter = this.binder.lookup(paramClass);
    if (converter != null)
      this.cache.cache(paramClass, converter); 
    return converter;
  }
  
  public Registry bind(Class paramClass1, Class paramClass2) {
    if (paramClass1 != null)
      this.binder.bind(paramClass1, paramClass2); 
    return this;
  }
  
  public Registry bind(Class paramClass, Converter paramConverter) {
    if (paramClass != null)
      this.cache.cache(paramClass, paramConverter); 
    return this;
  }
  
  public Converter lookup(Class paramClass) {
    Converter converter2 = (Converter)this.cache.fetch(paramClass);
    Converter converter1 = converter2;
    if (converter2 == null)
      converter1 = create(paramClass); 
    return converter1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\convert\Registry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */