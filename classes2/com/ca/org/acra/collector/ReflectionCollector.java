package com.ca.org.acra.collector;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

final class ReflectionCollector {
  public static String collectConstants(Class<?> paramClass) {
    StringBuilder stringBuilder = new StringBuilder();
    for (Field field : paramClass.getFields()) {
      stringBuilder.append(field.getName()).append("=");
      try {
        stringBuilder.append(field.get(null).toString());
      } catch (IllegalArgumentException illegalArgumentException) {
        stringBuilder.append("N/A");
      } catch (IllegalAccessException illegalAccessException) {
        stringBuilder.append("N/A");
      } 
      stringBuilder.append("\n");
    } 
    return stringBuilder.toString();
  }
  
  public static String collectStaticGettersResults(Class<?> paramClass) {
    StringBuilder stringBuilder = new StringBuilder();
    Method[] arrayOfMethod = paramClass.getMethods();
    int j = arrayOfMethod.length;
    int i = 0;
    while (true) {
      if (i < j) {
        Method method = arrayOfMethod[i];
        if ((method.getParameterTypes()).length == 0 && (method.getName().startsWith("get") || method.getName().startsWith("is")) && !method.getName().equals("getClass"))
          try {
            stringBuilder.append(method.getName());
            stringBuilder.append('=');
            stringBuilder.append(method.invoke(null, (Object[])null));
            stringBuilder.append("\n");
          } catch (IllegalArgumentException illegalArgumentException) {
          
          } catch (IllegalAccessException illegalAccessException) {
          
          } catch (InvocationTargetException invocationTargetException) {} 
        i++;
        continue;
      } 
      return stringBuilder.toString();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acra\collector\ReflectionCollector.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */