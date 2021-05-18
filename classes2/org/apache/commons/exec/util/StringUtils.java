package org.apache.commons.exec.util;

import java.io.File;
import java.util.ArrayList;
import java.util.Map;
import java.util.StringTokenizer;

public class StringUtils {
  private static final char BACKSLASH_CHAR = '\\';
  
  private static final String DOUBLE_QUOTE = "\"";
  
  private static final String SINGLE_QUOTE = "'";
  
  private static final char SLASH_CHAR = '/';
  
  public static String fixFileSeparatorChar(String paramString) {
    return paramString.replace('/', File.separatorChar).replace('\\', File.separatorChar);
  }
  
  public static boolean isQuoted(String paramString) {
    return ((paramString.startsWith("'") && paramString.endsWith("'")) || (paramString.startsWith("\"") && paramString.endsWith("\"")));
  }
  
  public static String quoteArgument(String paramString) {
    String str;
    for (str = paramString.trim();; str = str.substring(1)) {
      if (!str.startsWith("'")) {
        paramString = str;
        if (str.startsWith("\""))
          continue; 
        break;
      } 
      continue;
    } 
    while (true) {
      if (paramString.endsWith("'") || paramString.endsWith("\"")) {
        paramString = paramString.substring(0, paramString.length() - 1);
        continue;
      } 
      StringBuffer stringBuffer = new StringBuffer();
      if (paramString.indexOf("\"") > -1) {
        if (paramString.indexOf("'") > -1)
          throw new IllegalArgumentException("Can't handle single and double quotes in same argument"); 
        return stringBuffer.append("'").append(paramString).append("'").toString();
      } 
      if (paramString.indexOf("'") <= -1) {
        str = paramString;
        return (paramString.indexOf(" ") > -1) ? stringBuffer.append("\"").append(paramString).append("\"").toString() : str;
      } 
      return stringBuffer.append("\"").append(paramString).append("\"").toString();
    } 
  }
  
  public static String[] split(String paramString1, String paramString2) {
    StringTokenizer stringTokenizer = new StringTokenizer(paramString1, paramString2);
    ArrayList<String> arrayList = new ArrayList();
    while (stringTokenizer.hasMoreTokens())
      arrayList.add(stringTokenizer.nextToken()); 
    return arrayList.<String>toArray(new String[arrayList.size()]);
  }
  
  public static StringBuffer stringSubstitution(String paramString, Map paramMap, boolean paramBoolean) {
    StringBuffer stringBuffer = new StringBuffer();
    if (paramString == null || paramString.length() == 0)
      return stringBuffer; 
    if (paramMap == null || paramMap.size() == 0)
      return stringBuffer.append(paramString); 
    int j = paramString.length();
    int i = 0;
    while (i < j) {
      StringBuffer stringBuffer1;
      char c = paramString.charAt(i);
      switch (c) {
        case '$':
          stringBuffer1 = new StringBuffer();
          if (paramString.charAt(i + 1) == '{') {
            i = i + 1 + 1;
            while (i < paramString.length()) {
              c = paramString.charAt(i);
              if (c == '_' || c == '.' || c == '-' || c == '+' || Character.isLetterOrDigit(c)) {
                stringBuffer1.append(c);
                i++;
              } 
            } 
            if (stringBuffer1.length() >= 0) {
              Object object = paramMap.get(stringBuffer1.toString());
              if (object instanceof File) {
                object = fixFileSeparatorChar(((File)object).getAbsolutePath());
              } else if (object != null) {
                object = object.toString();
              } else {
                object = null;
              } 
              if (object != null) {
                stringBuffer.append((String)object);
              } else if (paramBoolean) {
                stringBuffer.append("${").append(stringBuffer1.toString()).append("}");
              } else {
                throw new RuntimeException("No value found for : " + stringBuffer1);
              } 
              if (paramString.charAt(i) != '}')
                throw new RuntimeException("Delimiter not found for : " + stringBuffer1); 
            } 
            i++;
            break;
          } 
          stringBuffer.append(c);
          i++;
          break;
      } 
    } 
    return stringBuffer;
  }
  
  public static String toString(String[] paramArrayOfString, String paramString) {
    StringBuffer stringBuffer = new StringBuffer();
    for (int i = 0; i < paramArrayOfString.length; i++) {
      if (i > 0)
        stringBuffer.append(paramString); 
      stringBuffer.append(paramArrayOfString[i]);
    } 
    return stringBuffer.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\exe\\util\StringUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */