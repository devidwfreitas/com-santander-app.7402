package br.com.santander.msgsdk.util;

import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.PriorityQueue;

public class FlatJsonParser {
  private static final String TAG = FlatJsonParser.class.getSimpleName();
  
  private static String cleanUp(String paramString) {
    return (paramString == null) ? null : paramString.replaceAll("\\[", "").replaceAll("\\]", "").replaceAll("\\{", "").replaceAll("\\}", "").replaceAll("\"", "").trim();
  }
  
  public static Object loadClassFromJson(Class paramClass, String paramString) {
    if (paramClass == null)
      return null; 
    Map<String, String> map = parseToMapStringString(paramString);
    return loadClassFromJson(paramClass.getClass().getName(), map);
  }
  
  public static Object loadClassFromJson(Class paramClass, String paramString1, String paramString2) {
    if (paramClass == null)
      return null; 
    Map<String, String> map = parseToMapStringString(paramString1, paramString2);
    return loadClassFromJson(paramClass.getName(), map);
  }
  
  private static Object loadClassFromJson(String paramString, Map<String, String> paramMap) {
    try {
      Class<?> clazz = Class.forName(paramString);
      Field[] arrayOfField = clazz.getDeclaredFields();
      paramString = clazz.getConstructor(new Class[0]).newInstance(new Object[0]);
      try {
        int j = arrayOfField.length;
        for (int i = 0;; i++) {
          if (i < j) {
            Field field = arrayOfField[i];
            Class<?> clazz1 = field.getType();
            String str1 = field.getName();
            String str2 = paramMap.get(str1);
            if (str2 != null) {
              boolean bool = "".equals(str2);
              if (!bool)
                try {
                  ArrayList<String> arrayList;
                  Method method = clazz.getMethod("set" + str1.substring(0, 1).toUpperCase() + str1.substring(1), new Class[] { clazz1 });
                  if (!String.class.equals(clazz1)) {
                    if (clazz1.equals(boolean.class) || clazz1.equals(Boolean.class)) {
                      method.invoke(paramString, new Object[] { Boolean.valueOf(str2) });
                    } else if (clazz1.equals(byte.class) || clazz1.equals(Byte.class)) {
                      method.invoke(paramString, new Object[] { Byte.valueOf(str2) });
                    } else if (clazz1.equals(char.class) || clazz1.equals(Character.class)) {
                      method.invoke(paramString, new Object[] { Character.valueOf(str2.charAt(0)) });
                    } else if (clazz1.equals(short.class) || clazz1.equals(Short.class)) {
                      method.invoke(paramString, new Object[] { Short.valueOf(str2) });
                    } else if (clazz1.equals(int.class) || clazz1.equals(Integer.class)) {
                      method.invoke(paramString, new Object[] { Integer.valueOf(str2) });
                    } else if (clazz1.equals(long.class) || clazz1.equals(Long.class)) {
                      method.invoke(paramString, new Object[] { Long.valueOf(str2) });
                    } else if (clazz1.equals(float.class) || clazz1.equals(Float.class)) {
                      method.invoke(paramString, new Object[] { Float.valueOf(str2) });
                    } else if (clazz1.equals(double.class) || clazz1.equals(Double.class)) {
                      method.invoke(paramString, new Object[] { Double.valueOf(str2) });
                    } else if (clazz1.equals(List.class)) {
                      String[] arrayOfString = str2.split("\\|");
                      arrayList = new ArrayList(arrayOfString.length);
                      int m = arrayOfString.length;
                      for (int k = 0; k < m; k++)
                        arrayList.add(arrayOfString[k]); 
                      method.invoke(paramString, new Object[] { arrayList });
                    } 
                  } else {
                    method.invoke(paramString, new Object[] { arrayList });
                  } 
                } catch (Exception exception) {
                  Log.e(TAG, exception.getMessage(), exception);
                }  
            } 
          } else {
            return paramString;
          } 
        } 
      } catch (Exception exception) {
        return paramString;
      } 
    } catch (Exception exception) {
      return null;
    } 
  }
  
  public static Map<String, String> parseToMapStringString(String paramString) {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    String[] arrayOfString = paramString.split(",");
    int i = 0;
    while (true) {
      if (i < arrayOfString.length) {
        int j;
        String str2;
        String str3;
        String[] arrayOfString1 = arrayOfString[i].split("\" *: *");
        String str1 = arrayOfString1[0];
        if (arrayOfString1.length > 1) {
          paramString = arrayOfString1[1];
          j = 1;
          while (paramString.contains("{") && j + 1 < arrayOfString1.length) {
            String str = arrayOfString1[++j];
            str1 = paramString;
            paramString = str;
          } 
          j = i;
          str2 = paramString;
          str3 = str1;
          if (paramString.contains("[")) {
            while (!arrayOfString[++i].contains("]")) {
              paramString = paramString + "|" + arrayOfString[i].trim();
              i++;
            } 
            str2 = paramString + "|" + arrayOfString[i].trim();
            str3 = str1;
            j = i;
          } 
        } else {
          str2 = null;
          j = i;
          str3 = str1;
        } 
        if (str2 != null)
          hashMap.put(cleanUp(str3), cleanUp(str2)); 
        i = j + 1;
        continue;
      } 
      return (Map)hashMap;
    } 
  }
  
  public static Map<String, String> parseToMapStringString(String paramString1, String paramString2) {
    String str = paramString1;
    if (paramString1 != null) {
      str = paramString1;
      if (!"".equals(paramString1)) {
        str = paramString1;
        if (paramString2 != null) {
          str = paramString1;
          if (!"".equals(paramString2)) {
            str = paramString1;
            if (paramString1.contains(paramString2)) {
              int j = paramString1.indexOf("{", paramString1.indexOf(paramString2) + paramString2.length());
              PriorityQueue<Character> priorityQueue = new PriorityQueue();
              priorityQueue.add(Character.valueOf(paramString1.charAt(j)));
              int i;
              for (i = j + 1; i < paramString1.length() && !priorityQueue.isEmpty(); i++) {
                char c = paramString1.charAt(i);
                if (c == '{' || c == '[') {
                  priorityQueue.add(Character.valueOf(c));
                } else if (c == '}' && ((Character)priorityQueue.peek()).charValue() == '{') {
                  priorityQueue.poll();
                } else if (c == ']' && ((Character)priorityQueue.peek()).charValue() == '[') {
                  priorityQueue.poll();
                } 
              } 
              str = paramString1.substring(j, i);
            } 
          } 
        } 
      } 
    } 
    return parseToMapStringString(str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsd\\util\FlatJsonParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */