package org.apache.commons.cli;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Date;

public class TypeHandler {
  public static Class createClass(String paramString) {
    try {
      return Class.forName(paramString);
    } catch (ClassNotFoundException classNotFoundException) {
      throw new ParseException("Unable to find the class: " + paramString);
    } 
  }
  
  public static Date createDate(String paramString) {
    throw new UnsupportedOperationException("Not yet implemented");
  }
  
  public static File createFile(String paramString) {
    return new File(paramString);
  }
  
  public static File[] createFiles(String paramString) {
    throw new UnsupportedOperationException("Not yet implemented");
  }
  
  public static Number createNumber(String paramString) {
    try {
      return (Number)((paramString.indexOf('.') != -1) ? Double.valueOf(paramString) : Long.valueOf(paramString));
    } catch (NumberFormatException numberFormatException) {
      throw new ParseException(numberFormatException.getMessage());
    } 
  }
  
  public static Object createObject(String paramString) {
    try {
      Class<?> clazz = Class.forName(paramString);
      try {
        return clazz.newInstance();
      } catch (Exception exception) {
        throw new ParseException(exception.getClass().getName() + "; Unable to create an instance of: " + paramString);
      } 
    } catch (ClassNotFoundException classNotFoundException) {
      throw new ParseException("Unable to find the class: " + paramString);
    } 
  }
  
  public static URL createURL(String paramString) {
    try {
      return new URL(paramString);
    } catch (MalformedURLException malformedURLException) {
      throw new ParseException("Unable to parse the URL: " + paramString);
    } 
  }
  
  public static Object createValue(String paramString, Class paramClass) {
    return (PatternOptionBuilder.STRING_VALUE == paramClass) ? paramString : ((PatternOptionBuilder.OBJECT_VALUE == paramClass) ? createObject(paramString) : ((PatternOptionBuilder.NUMBER_VALUE == paramClass) ? createNumber(paramString) : ((PatternOptionBuilder.DATE_VALUE == paramClass) ? createDate(paramString) : ((PatternOptionBuilder.CLASS_VALUE == paramClass) ? createClass(paramString) : ((PatternOptionBuilder.FILE_VALUE == paramClass) ? createFile(paramString) : ((PatternOptionBuilder.EXISTING_FILE_VALUE == paramClass) ? createFile(paramString) : ((PatternOptionBuilder.FILES_VALUE == paramClass) ? createFiles(paramString) : ((PatternOptionBuilder.URL_VALUE == paramClass) ? createURL(paramString) : null))))))));
  }
  
  public static Object createValue(String paramString, Object paramObject) {
    return createValue(paramString, (Class)paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\cli\TypeHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */