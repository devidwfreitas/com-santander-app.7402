package org.apache.commons.io.input;

import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Proxy;

public class ClassLoaderObjectInputStream extends ObjectInputStream {
  private final ClassLoader classLoader;
  
  public ClassLoaderObjectInputStream(ClassLoader paramClassLoader, InputStream paramInputStream) {
    super(paramInputStream);
    this.classLoader = paramClassLoader;
  }
  
  protected Class<?> resolveClass(ObjectStreamClass paramObjectStreamClass) {
    Class<?> clazz = Class.forName(paramObjectStreamClass.getName(), false, this.classLoader);
    return (clazz != null) ? clazz : super.resolveClass(paramObjectStreamClass);
  }
  
  protected Class<?> resolveProxyClass(String[] paramArrayOfString) {
    Class[] arrayOfClass = new Class[paramArrayOfString.length];
    for (int i = 0; i < paramArrayOfString.length; i++)
      arrayOfClass[i] = Class.forName(paramArrayOfString[i], false, this.classLoader); 
    try {
      return Proxy.getProxyClass(this.classLoader, arrayOfClass);
    } catch (IllegalArgumentException illegalArgumentException) {
      return super.resolveProxyClass(paramArrayOfString);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\input\ClassLoaderObjectInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */