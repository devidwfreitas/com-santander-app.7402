package org.simpleframework.xml.core;

import java.lang.reflect.Constructor;
import org.simpleframework.xml.strategy.Value;
import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.ConcurrentCache;

class InstanceFactory {
  private final Cache<Constructor> cache = (Cache<Constructor>)new ConcurrentCache();
  
  public Instance getInstance(Class paramClass) {
    return new InstanceFactory$ClassInstance(this, paramClass);
  }
  
  public Instance getInstance(Value paramValue) {
    return new InstanceFactory$ValueInstance(this, paramValue);
  }
  
  protected Object getObject(Class paramClass) {
    Constructor constructor2 = (Constructor)this.cache.fetch(paramClass);
    Constructor constructor1 = constructor2;
    if (constructor2 == null) {
      constructor1 = paramClass.getDeclaredConstructor(new Class[0]);
      if (!constructor1.isAccessible())
        constructor1.setAccessible(true); 
      this.cache.cache(paramClass, constructor1);
    } 
    return constructor1.newInstance(new Object[0]);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\InstanceFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */