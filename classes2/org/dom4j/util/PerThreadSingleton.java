package org.dom4j.util;

import java.lang.ref.WeakReference;

public class PerThreadSingleton implements SingletonStrategy {
  private ThreadLocal perThreadCache = new ThreadLocal();
  
  private String singletonClassName = null;
  
  public Object instance() {
    WeakReference weakReference = this.perThreadCache.get();
    if (weakReference == null || weakReference.get() == null) {
      try {
        weakReference = (WeakReference)Thread.currentThread().getContextClassLoader().loadClass(this.singletonClassName).newInstance();
      } catch (Exception exception) {}
      this.perThreadCache.set(new WeakReference<Exception>(exception));
      return exception;
    } 
    return exception.get();
  }
  
  public void reset() {
    this.perThreadCache = new ThreadLocal();
  }
  
  public void setSingletonClassName(String paramString) {
    this.singletonClassName = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4\\util\PerThreadSingleton.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */