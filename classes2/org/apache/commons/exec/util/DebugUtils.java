package org.apache.commons.exec.util;

public class DebugUtils {
  public static final String COMMONS_EXEC_DEBUG = "org.apache.commons.exec.debug";
  
  public static final String COMMONS_EXEC_LENIENT = "org.apache.commons.exec.lenient";
  
  public static void handleException(String paramString, Exception paramException) {
    if (isDebugEnabled()) {
      System.err.println(paramString);
      paramException.printStackTrace();
    } 
    if (!isLenientEnabled()) {
      if (paramException instanceof RuntimeException)
        throw (RuntimeException)paramException; 
      throw new RuntimeException(paramException.getMessage());
    } 
  }
  
  public static boolean isDebugEnabled() {
    return "true".equalsIgnoreCase(System.getProperty("org.apache.commons.exec.debug", "false"));
  }
  
  public static boolean isLenientEnabled() {
    return "true".equalsIgnoreCase(System.getProperty("org.apache.commons.exec.lenient", "true"));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\exe\\util\DebugUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */