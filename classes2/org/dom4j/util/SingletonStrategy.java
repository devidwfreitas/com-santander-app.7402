package org.dom4j.util;

public interface SingletonStrategy {
  Object instance();
  
  void reset();
  
  void setSingletonClassName(String paramString);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4\\util\SingletonStrategy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */