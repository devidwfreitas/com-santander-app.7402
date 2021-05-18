import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class drf {
  public static <T extends dre> String a(T paramT) {
    if (paramT == null)
      return ""; 
    StringBuffer stringBuffer = new StringBuffer();
    try {
      a(null, paramT, new StringBuffer(), stringBuffer);
      return stringBuffer.toString();
    } catch (IllegalAccessException illegalAccessException) {
      String str = String.valueOf(illegalAccessException.getMessage());
      return (str.length() != 0) ? "Error printing proto: ".concat(str) : new String("Error printing proto: ");
    } catch (InvocationTargetException invocationTargetException) {
      String str = String.valueOf(invocationTargetException.getMessage());
      return (str.length() != 0) ? "Error printing proto: ".concat(str) : new String("Error printing proto: ");
    } 
  }
  
  private static String a(String paramString) {
    StringBuffer stringBuffer = new StringBuffer();
    for (int i = 0; i < paramString.length(); i++) {
      char c = paramString.charAt(i);
      if (i == 0) {
        stringBuffer.append(Character.toLowerCase(c));
      } else if (Character.isUpperCase(c)) {
        stringBuffer.append('_').append(Character.toLowerCase(c));
      } else {
        stringBuffer.append(c);
      } 
    } 
    return stringBuffer.toString();
  }
  
  private static void a(String paramString, Object paramObject, StringBuffer paramStringBuffer1, StringBuffer paramStringBuffer2) {
    if (paramObject != null) {
      if (paramObject instanceof dre) {
        int k = paramStringBuffer1.length();
        if (paramString != null) {
          paramStringBuffer2.append(paramStringBuffer1).append(a(paramString)).append(" <\n");
          paramStringBuffer1.append("  ");
        } 
        Class<?> clazz = paramObject.getClass();
        Field[] arrayOfField = clazz.getFields();
        int m = arrayOfField.length;
        int i = 0;
        label74: while (i < m) {
          Field field = arrayOfField[i];
          int n = field.getModifiers();
          String str = field.getName();
          if ("cachedSize".equals(str))
            continue; 
          if ((n & 0x1) == 1) {
            if ((n & 0x8) != 8) {
              if (!str.startsWith("_")) {
                if (!str.endsWith("_")) {
                  Class<?> clazz1 = field.getType();
                  Object object = field.get(paramObject);
                  if (clazz1.isArray()) {
                    if (clazz1.getComponentType() == byte.class) {
                      a(str, object, paramStringBuffer1, paramStringBuffer2);
                      continue;
                    } 
                    if (object == null) {
                      n = 0;
                    } else {
                      n = Array.getLength(object);
                    } 
                    int i1 = 0;
                    while (true) {
                      if (i1 < n) {
                        a(str, Array.get(object, i1), paramStringBuffer1, paramStringBuffer2);
                        i1++;
                        continue;
                      } 
                      i++;
                      continue label74;
                    } 
                  } 
                  a(str, object, paramStringBuffer1, paramStringBuffer2);
                  continue;
                } 
                continue;
              } 
              continue;
            } 
            continue;
          } 
          continue;
        } 
        Method[] arrayOfMethod = clazz.getMethods();
        int j = arrayOfMethod.length;
        for (i = 0; i < j; i++) {
          String str = arrayOfMethod[i].getName();
          if (str.startsWith("set")) {
            String str1 = str.substring(3);
            try {
              str = String.valueOf(str1);
              if (str.length() != 0) {
                str = "has".concat(str);
              } else {
                str = new String("has");
              } 
              Method method = clazz.getMethod(str, new Class[0]);
              if (((Boolean)method.invoke(paramObject, new Object[0])).booleanValue())
                try {
                  String str2 = String.valueOf(str1);
                  if (str2.length() != 0) {
                    str2 = "get".concat(str2);
                  } else {
                    str2 = new String("get");
                  } 
                  Method method1 = clazz.getMethod(str2, new Class[0]);
                  a(str1, method1.invoke(paramObject, new Object[0]), paramStringBuffer1, paramStringBuffer2);
                } catch (NoSuchMethodException noSuchMethodException) {} 
            } catch (NoSuchMethodException noSuchMethodException) {}
          } 
        } 
        if (paramString != null) {
          paramStringBuffer1.setLength(k);
          paramStringBuffer2.append(paramStringBuffer1).append(">\n");
          return;
        } 
        return;
      } 
      paramString = a(paramString);
      paramStringBuffer2.append(paramStringBuffer1).append(paramString).append(": ");
      if (paramObject instanceof String) {
        paramString = b((String)paramObject);
        paramStringBuffer2.append("\"").append(paramString).append("\"");
      } else if (paramObject instanceof byte[]) {
        a((byte[])paramObject, paramStringBuffer2);
      } else {
        paramStringBuffer2.append(paramObject);
      } 
      paramStringBuffer2.append("\n");
      return;
    } 
  }
  
  private static void a(byte[] paramArrayOfbyte, StringBuffer paramStringBuffer) {
    if (paramArrayOfbyte == null) {
      paramStringBuffer.append("\"\"");
      return;
    } 
    paramStringBuffer.append('"');
    for (int i = 0; i < paramArrayOfbyte.length; i++) {
      int j = paramArrayOfbyte[i] & 0xFF;
      if (j == 92 || j == 34) {
        paramStringBuffer.append('\\').append((char)j);
      } else if (j >= 32 && j < 127) {
        paramStringBuffer.append((char)j);
      } else {
        paramStringBuffer.append(String.format("\\%03o", new Object[] { Integer.valueOf(j) }));
      } 
    } 
    paramStringBuffer.append('"');
  }
  
  private static String b(String paramString) {
    String str = paramString;
    if (!paramString.startsWith("http")) {
      str = paramString;
      if (paramString.length() > 200)
        str = String.valueOf(paramString.substring(0, 200)).concat("[...]"); 
    } 
    return c(str);
  }
  
  private static String c(String paramString) {
    int j = paramString.length();
    StringBuilder stringBuilder = new StringBuilder(j);
    for (int i = 0; i < j; i++) {
      char c = paramString.charAt(i);
      if (c >= ' ' && c <= '~' && c != '"' && c != '\'') {
        stringBuilder.append(c);
      } else {
        stringBuilder.append(String.format("\\u%04x", new Object[] { Integer.valueOf(c) }));
      } 
    } 
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\drf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */