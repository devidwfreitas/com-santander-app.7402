package org.simpleframework.xml.convert;

import java.lang.reflect.Constructor;
import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.ConcurrentCache;

class ConverterFactory {
  private final Cache<Converter> cache = (Cache<Converter>)new ConcurrentCache();
  
  private Constructor getConstructor(Class paramClass) {
    Constructor constructor = paramClass.getDeclaredConstructor(new Class[0]);
    if (!constructor.isAccessible())
      constructor.setAccessible(true); 
    return constructor;
  }
  
  private Converter getConverter(Class paramClass) {
    Constructor constructor = getConstructor(paramClass);
    if (constructor == null)
      throw new ConvertException("No default constructor for %s", new Object[] { paramClass }); 
    return getConverter(paramClass, constructor);
  }
  
  private Converter getConverter(Class paramClass, Constructor<Converter> paramConstructor) {
    Converter converter = paramConstructor.newInstance(new Object[0]);
    if (converter != null)
      this.cache.cache(paramClass, converter); 
    return converter;
  }
  
  public Converter getInstance(Class paramClass) {
    Converter converter2 = (Converter)this.cache.fetch(paramClass);
    Converter converter1 = converter2;
    if (converter2 == null)
      converter1 = getConverter(paramClass); 
    return converter1;
  }
  
  public Converter getInstance(Convert paramConvert) {
    Class clazz = paramConvert.value();
    if (clazz.isInterface())
      throw new ConvertException("Can not instantiate %s", new Object[] { clazz }); 
    return getInstance(clazz);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\convert\ConverterFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */