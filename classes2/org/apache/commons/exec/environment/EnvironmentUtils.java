package org.apache.commons.exec.environment;

import java.util.Iterator;
import java.util.Map;
import org.apache.commons.exec.OS;

public class EnvironmentUtils {
  private static final DefaultProcessingEnvironment PROCESSING_ENVIRONMENT_IMPLEMENTATION = new DefaultProcessingEnvironment();
  
  public static void addVariableToEnvironment(Map<String, String> paramMap, String paramString) {
    String[] arrayOfString = parseEnvironmentVariable(paramString);
    paramMap.put(arrayOfString[0], arrayOfString[1]);
  }
  
  public static Map getProcEnvironment() {
    return PROCESSING_ENVIRONMENT_IMPLEMENTATION.getProcEnvironment();
  }
  
  private static String[] parseEnvironmentVariable(String paramString) {
    int i = paramString.indexOf('=');
    if (i == -1)
      throw new IllegalArgumentException("Environment variable for this platform must contain an equals sign ('=')"); 
    return new String[] { paramString.substring(0, i), paramString.substring(i + 1) };
  }
  
  public static String[] toStrings(Map paramMap) {
    if (paramMap == null)
      return null; 
    String[] arrayOfString = new String[paramMap.size()];
    Iterator<Map.Entry> iterator = paramMap.entrySet().iterator();
    for (int i = 0; iterator.hasNext(); i++) {
      Map.Entry entry = iterator.next();
      arrayOfString[i] = entry.getKey().toString() + "=" + entry.getValue().toString();
    } 
    return arrayOfString;
  }
  
  static {
    if (OS.isFamilyOpenVms()) {
      PROCESSING_ENVIRONMENT_IMPLEMENTATION = new OpenVmsProcessingEnvironment();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\exec\environment\EnvironmentUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */