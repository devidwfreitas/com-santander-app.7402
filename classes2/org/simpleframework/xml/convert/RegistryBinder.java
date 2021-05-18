package org.simpleframework.xml.convert;

import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.ConcurrentCache;

class RegistryBinder {
  private final Cache<Class> cache = (Cache<Class>)new ConcurrentCache();
  
  private final ConverterFactory factory = new ConverterFactory();
  
  private Converter create(Class paramClass) {
    return this.factory.getInstance(paramClass);
  }
  
  public void bind(Class paramClass1, Class paramClass2) {
    this.cache.cache(paramClass1, paramClass2);
  }
  
  public Converter lookup(Class paramClass) {
    paramClass = (Class)this.cache.fetch(paramClass);
    return (paramClass != null) ? create(paramClass) : null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\convert\RegistryBinder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */