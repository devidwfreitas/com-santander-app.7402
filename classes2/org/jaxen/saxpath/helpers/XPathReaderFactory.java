package org.jaxen.saxpath.helpers;

import org.jaxen.saxpath.SAXPathException;
import org.jaxen.saxpath.XPathReader;

public class XPathReaderFactory {
  protected static final String DEFAULT_DRIVER = "org.jaxen.saxpath.base.XPathReader";
  
  public static final String DRIVER_PROPERTY = "org.saxpath.driver";
  
  static Class class$org$jaxen$saxpath$XPathReader;
  
  static Class class$org$jaxen$saxpath$helpers$XPathReaderFactory;
  
  static Class class$(String paramString) {
    try {
      return Class.forName(paramString);
    } catch (ClassNotFoundException classNotFoundException) {
      throw new NoClassDefFoundError(classNotFoundException.getMessage());
    } 
  }
  
  public static XPathReader createReader() {
    String str1 = null;
    try {
      String str = System.getProperty("org.saxpath.driver");
      str1 = str;
    } catch (SecurityException securityException) {}
    if (str1 != null) {
      String str = str1;
      if (str1.length() == 0) {
        str = "org.jaxen.saxpath.base.XPathReader";
        return createReader(str);
      } 
      return createReader(str);
    } 
    String str2 = "org.jaxen.saxpath.base.XPathReader";
    return createReader(str2);
  }
  
  public static XPathReader createReader(String paramString) {
    Class<?> clazz;
    try {
      Class clazz1;
      if (class$org$jaxen$saxpath$helpers$XPathReaderFactory == null) {
        clazz1 = class$("org.jaxen.saxpath.helpers.XPathReaderFactory");
        class$org$jaxen$saxpath$helpers$XPathReaderFactory = clazz1;
      } else {
        clazz1 = class$org$jaxen$saxpath$helpers$XPathReaderFactory;
      } 
      clazz = Class.forName(paramString, true, clazz1.getClassLoader());
      if (class$org$jaxen$saxpath$XPathReader == null) {
        clazz1 = class$("org.jaxen.saxpath.XPathReader");
        class$org$jaxen$saxpath$XPathReader = clazz1;
      } else {
        clazz1 = class$org$jaxen$saxpath$XPathReader;
      } 
      if (!clazz1.isAssignableFrom(clazz))
        throw new SAXPathException("Class [" + paramString + "] does not implement the org.jaxen.saxpath.XPathReader interface."); 
    } catch (ClassNotFoundException classNotFoundException) {
      throw new SAXPathException(classNotFoundException);
    } 
    try {
      return (XPathReader)clazz.newInstance();
    } catch (IllegalAccessException illegalAccessException) {
      throw new SAXPathException(illegalAccessException);
    } catch (InstantiationException instantiationException) {
      throw new SAXPathException(instantiationException);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\saxpath\helpers\XPathReaderFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */