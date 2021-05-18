package org.dom4j.util;

public class SimpleSingleton implements SingletonStrategy {
  private String singletonClassName = null;
  
  private Object singletonInstance = null;
  
  public Object instance() {
    return this.singletonInstance;
  }
  
  public void reset() {
    if (this.singletonClassName != null)
      try {
        this.singletonInstance = Thread.currentThread().getContextClassLoader().loadClass(this.singletonClassName).newInstance();
        return;
      } catch (Exception exception) {
        try {
          this.singletonInstance = Class.forName(this.singletonClassName).newInstance();
          return;
        } catch (Exception exception1) {
          return;
        } 
      }  
  }
  
  public void setSingletonClassName(String paramString) {
    this.singletonClassName = paramString;
    reset();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4\\util\SimpleSingleton.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */