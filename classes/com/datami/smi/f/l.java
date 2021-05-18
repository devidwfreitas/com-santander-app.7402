package com.datami.smi.f;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.util.ArrayMap;
import com.datami.smi.b.k;
import com.datami.smi.b.m;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Properties;
import org.apache.http.HttpHost;

public class l {
  static final int a = 193;
  
  private static final String b;
  
  private static String c;
  
  private static final byte[] d = new byte[] { 
      73, -95, 44, 50, -35, 2, -10, -2, 53, -38, 
      6, -14, 6, 1, 24, -30, -11, -2, 14, -10, 
      8, -14, 26, -20, 1, -3, -5, -14, 16, -14, 
      -2, 0, 27, -20, 1, -3, -5, -14, 16, 32, 
      -36, 13, -4, -2, 0, 34, -48, 4, -20, 20, 
      -10, -10, 1, 9, -7, 0, 33, -30, -11, -2, 
      -13, -1, 3, -4, 68, -65, -2, 0, 29, -35, 
      2, -10, -2, 48, -40, -5, -2, 0, -14, 9, 
      -15, 2, 5, 4, 53, -74, 17, 2, -10, 1, 
      -12, 69, -33, -24, -16, -4, 7, -4, 6, -13, 
      -1, 3, -4, 68, -67, -3, 2, -10, -2, 40, 
      -32, -4, -3, -13, -1, 3, 65, -65, -2, 0, 
      29, -35, 2, -10, -2, 48, -40, -5, -2, 0, 
      26, -20, -13, -5, 15, -15, -2, 34, -37, 15, 
      -17, 15, -14, 9, -15, 2, 5, 4, 53, -52, 
      -16, -1, 65, -20, -48, -1, 3, 2, 5, 1, 
      -20, 10, -7, 0, -13, -1, 3, -19, -16, -1, 
      10, -6, 6, 70, -70, -20, 20, -10, -10, 1, 
      9, -7, 0, 77, -71, -10, -4, 81, -27, 25, 
      -14, 9, -15, 2, 5, 4, 53, -52, -16, -1, 
      65, -31, -36, 13, -4, -2, 0, 34, -48, 4, 
      -52, 20, -3, -12, -5, 10, -7, 0, 77, -84, 
      13, -16, -1, 10, -6, 6, 70, -56, -15, 2, 
      22, -31, -12, 83, -81, -3, 2, -10, -2, 88, 
      -85, 11, -11, 2, -7, 13, -2, 71, -66, -14, 
      9, -15, 2, 5, 4, 53, -74, 17, 2, -10, 
      1, -12, 69, -33, -24, -16, -4, 7, -4, 6, 
      48, 25, -14, 9, -15, 2, 5, 4, 53, -60, 
      -6, -7, 14, -10, -7, 69, -52, -3, -18, 10, 
      -7, 0, 63, -35, -3, 2, -10, -2, -7, 27, 
      -6, 6, -14, 6, 1, -52, 20, -3, -12, -5, 
      10, -7, 0, 77, -84, 13, -16, -1, 10, -6, 
      6, 70, -56, -15, 2, 22, -31, -12, 83, -81, 
      -3, 2, -10, -2, 88, -85, 11, -11, 2, -7, 
      13, -2, 71, -66, -14, 9, -15, 2, 5, 4, 
      53, -65, 8, -16, 69, -35, -35, 2, -10, -2, 
      40, -35, 2, -2, 10, -14, -3, 10, 3, -15, 
      56, 25, 1, -16, 42, -38, -6, -2, 18, -14, 
      10, -3, -13, -1, 3, 65, -67, -3, 2, -10, 
      -2, 40, -32, -4, -3, -10, -10, 3, 11, 28, 
      -35, 2, -10, -2, 48, -40, -5, -2, -14, -1, 
      2, -4, 81, -84, 13, -16, -1, 10, -6, 6, 
      70, -86, 4, 79, -88, 17, 2, -10, 1, -12, 
      83, -81, -3, 2, -10, -2, 15, -6, 6, -14, 
      9, -15, 2, 5, 4, 53, -65, 8, -16, 69, 
      -35, -35, 2, -10, -2, 40, -35, 2, -2, 10, 
      -14, -3, 10, 3, -15, -13, -1, 3, 65, -67, 
      -3, 2, -10, -2, 48, -40, -5, -2, -13, -1, 
      3, -4, 68, -67, -3, 2, -10, -2, 48, -40, 
      -5, -2, -35, 2, -10, -2, 37, -19, -16, -1, 
      10, -6, 6, -13, -14, 9, -15, 2, 5, 4, 
      53, -74, 17, 2, -10, 1, -12, 69, -42, -15, 
      2, 11, -20, 3, -19, 51, -45, -4, 12, 13, 
      -10, 9, 16, -34, 18, -20, 10, 5, 21, -25, 
      -15, -1, 17, -7, 1 };
  
  private static int e = 127;
  
  static {
    b = a(391, d[13], d[14]) + l.class.getSimpleName();
    c = null;
  }
  
  private static Object a(Class paramClass, String paramString, Object[] paramArrayOfObject, Class... paramVarArgs) {
    Class<?> clazz;
    if (paramClass instanceof Class) {
      clazz = paramClass;
    } else {
      clazz = paramClass.getClass();
    } 
    return (paramVarArgs != null) ? clazz.getMethod(paramString, paramVarArgs).invoke(paramClass, paramArrayOfObject) : clazz.getMethod(paramString, new Class[0]).invoke(paramClass, new Object[0]);
  }
  
  private static Object a(Object paramObject, String paramString) {
    Field field = paramObject.getClass().getDeclaredField(paramString);
    field.setAccessible(true);
    return field.get(paramObject);
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    byte b;
    int j = paramInt2 + 4;
    paramInt2 = paramInt1 + 4;
    byte[] arrayOfByte1 = d;
    paramInt3 = 115 - paramInt3;
    byte[] arrayOfByte2 = new byte[j];
    if (arrayOfByte1 == null) {
      paramInt1 = 0;
      b = paramInt2;
      i = paramInt2;
    } else {
      b = 0;
      paramInt1 = paramInt3;
      paramInt3 = b;
      arrayOfByte2[paramInt3] = (byte)paramInt1;
    } 
    int i = -paramInt3 + i - 1;
    paramInt2 = b + 1;
    paramInt3 = paramInt1;
    paramInt1 = i;
    arrayOfByte2[paramInt3] = (byte)paramInt1;
  }
  
  private static void a() {
    try {
      Properties properties = System.getProperties();
      properties.remove(a(461, d[161], d[241]));
      properties.remove(a(378, d[161], d[241]));
      byte b1 = d[241];
      properties.remove(a(474, b1, b1));
      b1 = -d[1];
      byte b2 = d[241];
      properties.remove(a(b1, b2, b2));
      if (c != null) {
        System.setProperty(a(e & 0x1ED, d[18], d[241]), c);
        System.setProperty(a(d[370], d[134], d[241]), c);
      } 
      Class<?> clazz1 = Class.forName(a(500, d[230], d[378]));
      Class<?> clazz2 = Class.forName(a(435, e & 0x17, d[378]));
      if (clazz1 != null && clazz2 != null) {
        Method method = clazz1.getDeclaredMethod(a(525, d[41], d[31]), new Class[] { int.class, Object.class });
        if (method != null) {
          method.setAccessible(true);
          method.invoke(null, new Object[] { Integer.valueOf(193), null });
        } 
      } 
      return;
    } catch (Exception exception) {
      a(488, d[53], -d[4]);
      (new StringBuilder()).append(a(301, e & 0x1C0, e & 0xAE)).append(exception.toString());
      throw exception;
    } catch (Error error) {
      a(488, d[53], -d[4]);
      (new StringBuilder()).append(a(206, e & 0xBB, e & 0xAE)).append(error.toString());
      throw error;
    } 
  }
  
  public static void a(Context paramContext) {
    if (Build.VERSION.SDK_INT < 14) {
      object = b(paramContext);
      if (object != null) {
        byte b = d[10];
        String str = a(395, b, b);
        Field field = object.getClass().getDeclaredField(str);
        field.setAccessible(true);
        field.set(object, null);
      } 
      return;
    } 
    if (Build.VERSION.SDK_INT <= 18)
      try {
        Properties properties = System.getProperties();
        properties.remove(a(461, d[161], d[241]));
        properties.remove(a(378, d[161], d[241]));
        byte b1 = d[241];
        properties.remove(a(474, b1, b1));
        b1 = -d[1];
        byte b2 = d[241];
        properties.remove(a(b1, b2, b2));
        if (c != null) {
          System.setProperty(a(e & 0x1ED, d[18], d[241]), c);
          System.setProperty(a(d[370], d[134], d[241]), c);
        } 
        object = Class.forName(a(500, d[230], d[378]));
        Class<?> clazz = Class.forName(a(435, e & 0x17, d[378]));
        if (object != null && clazz != null) {
          Method method = object.getDeclaredMethod(a(525, d[41], d[31]), new Class[] { int.class, Object.class });
          if (method != null) {
            method.setAccessible(true);
            method.invoke(null, new Object[] { Integer.valueOf(193), null });
            return;
          } 
        } 
        return;
      } catch (Exception null) {
        a(488, d[53], -d[4]);
        (new StringBuilder()).append(a(301, e & 0x1C0, e & 0xAE)).append(object.toString());
        throw object;
      } catch (Error object) {
        a(488, d[53], -d[4]);
        (new StringBuilder()).append(a(206, e & 0xBB, e & 0xAE)).append(object.toString());
        throw object;
      }  
    e((Context)object);
  }
  
  private static void a(Object paramObject, String paramString, HttpHost paramHttpHost) {
    Field field = paramObject.getClass().getDeclaredField(paramString);
    field.setAccessible(true);
    field.set(paramObject, paramHttpHost);
  }
  
  public static boolean a(Context paramContext, String paramString, int paramInt) {
    if (c == null && !m.f)
      c = k.a(paramContext).getString(a(d[2], d[53], d[18]), null); 
    try {
      HttpHost httpHost;
      System.setProperty(a(461, d[161], d[241]), paramString);
      System.setProperty(a(378, d[161], d[241]), String.valueOf(paramInt));
      byte b1 = d[241];
      System.setProperty(a(474, b1, b1), paramString);
      b1 = -d[1];
      byte b2 = d[241];
      System.setProperty(a(b1, b2, b2), String.valueOf(paramInt));
      (new StringBuilder()).append(a(163, d[49], d[39])).append(c);
      if (c != null) {
        System.setProperty(a(e & 0x1ED, d[18], d[241]), c);
        System.setProperty(a(d[370], d[134], d[241]), c);
      } 
      if (Build.VERSION.SDK_INT < 14) {
        Object object = b(paramContext);
        if (object != null) {
          httpHost = new HttpHost(paramString, paramInt, a(160, d[31], d[241]));
          paramInt = d[10];
          String str = a(395, paramInt, paramInt);
          Field field = object.getClass().getDeclaredField(str);
          field.setAccessible(true);
          field.set(object, httpHost);
          return true;
        } 
      } else {
        Constructor<?> constructor;
        if (Build.VERSION.SDK_INT <= 18) {
          Class<?> clazz2 = Class.forName(a(500, d[230], d[378]));
          Class<?> clazz1 = Class.forName(a(435, e & 0x17, d[378]));
          if (clazz2 != null && clazz1 != null) {
            Method method = clazz2.getDeclaredMethod(a(525, d[41], d[31]), new Class[] { int.class, Object.class });
            constructor = clazz1.getConstructor(new Class[] { String.class, int.class, String.class });
            method.setAccessible(true);
            constructor.setAccessible(true);
            method.invoke(null, new Object[] { Integer.valueOf(193), constructor.newInstance(new Object[] { httpHost, Integer.valueOf(paramInt), null }) });
            return true;
          } 
          return false;
        } 
        return b((Context)constructor, (String)httpHost, paramInt);
      } 
    } catch (Exception exception) {
      a(404, d[399], d[18]);
    } 
    return false;
  }
  
  private static boolean a(String paramString, int paramInt) {
    Class<?> clazz2 = Class.forName(a(500, d[230], d[378]));
    Class<?> clazz1 = Class.forName(a(435, e & 0x17, d[378]));
    if (clazz2 != null && clazz1 != null) {
      Method method = clazz2.getDeclaredMethod(a(525, d[41], d[31]), new Class[] { int.class, Object.class });
      Constructor<?> constructor = clazz1.getConstructor(new Class[] { String.class, int.class, String.class });
      method.setAccessible(true);
      constructor.setAccessible(true);
      method.invoke(null, new Object[] { Integer.valueOf(193), constructor.newInstance(new Object[] { paramString, Integer.valueOf(paramInt), null }) });
      return true;
    } 
    return false;
  }
  
  private static Object b(Context paramContext) {
    byte b1 = -d[85];
    byte b2 = d[378];
    Class<?> clazz = Class.forName(a(b1, b2, b2));
    if (clazz != null) {
      Class<?> clazz1;
      String str = a(368, d[96], d[528]);
      if (clazz instanceof Class) {
        clazz1 = clazz;
      } else {
        clazz1 = clazz.getClass();
      } 
      Object object = clazz1.getMethod(str, new Class[] { Context.class }).invoke(clazz, new Object[] { paramContext });
      if (object != null) {
        String str1 = a(e - 1, d[53], d[10]);
        Field field = object.getClass().getDeclaredField(str1);
        field.setAccessible(true);
        return field.get(object);
      } 
    } 
    return null;
  }
  
  private static void b(String paramString, int paramInt) {
    System.setProperty(a(461, d[161], d[241]), paramString);
    System.setProperty(a(378, d[161], d[241]), String.valueOf(paramInt));
    byte b1 = d[241];
    System.setProperty(a(474, b1, b1), paramString);
    b1 = -d[1];
    byte b2 = d[241];
    System.setProperty(a(b1, b2, b2), String.valueOf(paramInt));
    (new StringBuilder()).append(a(163, d[49], d[39])).append(c);
    if (c != null) {
      System.setProperty(a(e & 0x1ED, d[18], d[241]), c);
      System.setProperty(a(d[370], d[134], d[241]), c);
    } 
  }
  
  private static boolean b(Context paramContext, String paramString, int paramInt) {
    System.setProperty(a(461, d[161], d[241]), paramString);
    System.setProperty(a(378, d[161], d[241]), String.valueOf(paramInt));
    byte b1 = d[241];
    System.setProperty(a(474, b1, b1), paramString);
    b1 = -d[1];
    byte b2 = d[241];
    System.setProperty(a(b1, b2, b2), String.valueOf(paramInt));
    if (c != null && !m.f) {
      System.setProperty(a(e & 0x1ED, d[18], d[241]), c);
      System.setProperty(a(d[370], d[134], d[241]), c);
    } 
    try {
      Class<?> clazz1 = Class.forName(a(138, -d[167], d[378]));
      paramInt = -d[4];
      b1 = d[10];
      Field field1 = clazz1.getField(a(paramInt, b1, b1));
      field1.setAccessible(true);
      Object object = field1.get(paramContext);
      Class<?> clazz2 = Class.forName(a(186, d[86], d[378]));
      paramInt = d[378];
      b1 = d[10];
      Field field2 = clazz2.getDeclaredField(a(paramInt, b1, b1));
      field2.setAccessible(true);
      object = ((ArrayMap)field2.get(object)).values().iterator();
      while (object.hasNext()) {
        for (Object object1 : ((ArrayMap)object.next()).keySet()) {
          Class<?> clazz = object1.getClass();
          if (clazz.getName().contains(a(d[31], d[134], -d[4])))
            clazz.getDeclaredMethod(a(d[32], d[82], d[47]), new Class[] { Context.class, Intent.class }).invoke(object1, new Object[] { paramContext, new Intent(a(268, -d[15], d[378])) }); 
        } 
      } 
    } catch (ClassNotFoundException classNotFoundException) {
      StringWriter stringWriter = new StringWriter();
      classNotFoundException.printStackTrace(new PrintWriter(stringWriter));
      stringWriter.toString();
      classNotFoundException.getMessage();
      return false;
    } catch (NoSuchFieldException noSuchFieldException) {
      StringWriter stringWriter = new StringWriter();
      noSuchFieldException.printStackTrace(new PrintWriter(stringWriter));
      stringWriter.toString();
      noSuchFieldException.getMessage();
      return false;
    } catch (IllegalAccessException illegalAccessException) {
      StringWriter stringWriter = new StringWriter();
      illegalAccessException.printStackTrace(new PrintWriter(stringWriter));
      stringWriter.toString();
      illegalAccessException.getMessage();
      return false;
    } catch (IllegalArgumentException illegalArgumentException) {
      StringWriter stringWriter = new StringWriter();
      illegalArgumentException.printStackTrace(new PrintWriter(stringWriter));
      stringWriter.toString();
      illegalArgumentException.getMessage();
      return false;
    } catch (NoSuchMethodException noSuchMethodException) {
      StringWriter stringWriter = new StringWriter();
      noSuchMethodException.printStackTrace(new PrintWriter(stringWriter));
      stringWriter.toString();
      noSuchMethodException.getMessage();
      return false;
    } catch (InvocationTargetException invocationTargetException) {
      StringWriter stringWriter = new StringWriter();
      invocationTargetException.printStackTrace(new PrintWriter(stringWriter));
      stringWriter.toString();
      invocationTargetException.getMessage();
      return false;
    } 
    return true;
  }
  
  private static void c(Context paramContext) {
    Object object = b(paramContext);
    if (object != null) {
      byte b = d[10];
      String str = a(395, b, b);
      Field field = object.getClass().getDeclaredField(str);
      field.setAccessible(true);
      field.set(object, null);
    } 
  }
  
  private static void d(Context paramContext) {
    c = k.a(paramContext).getString(a(d[2], d[53], d[18]), null);
  }
  
  private static boolean e(Context paramContext) {
    paramContext = paramContext.getApplicationContext();
    Properties properties = System.getProperties();
    properties.remove(a(461, d[161], d[241]));
    properties.remove(a(378, d[161], d[241]));
    byte b1 = d[241];
    properties.remove(a(474, b1, b1));
    b1 = -d[1];
    byte b2 = d[241];
    properties.remove(a(b1, b2, b2));
    if (c != null) {
      System.setProperty(a(e & 0x1ED, d[18], d[241]), c);
      System.setProperty(a(d[370], d[134], d[241]), c);
    } 
    try {
      Class<?> clazz1 = Class.forName(a(138, -d[167], d[378]));
      b1 = -d[4];
      b2 = d[10];
      Field field1 = clazz1.getField(a(b1, b2, b2));
      field1.setAccessible(true);
      Object object = field1.get(paramContext);
      Class<?> clazz2 = Class.forName(a(186, d[86], d[378]));
      b1 = d[378];
      b2 = d[10];
      Field field2 = clazz2.getDeclaredField(a(b1, b2, b2));
      field2.setAccessible(true);
      object = ((ArrayMap)field2.get(object)).values().iterator();
      while (object.hasNext()) {
        for (Object object1 : ((ArrayMap)object.next()).keySet()) {
          Class<?> clazz = object1.getClass();
          if (clazz.getName().contains(a(d[31], d[134], -d[4])))
            clazz.getDeclaredMethod(a(d[32], d[82], d[47]), new Class[] { Context.class, Intent.class }).invoke(object1, new Object[] { paramContext, new Intent(a(268, -d[15], d[378])) }); 
        } 
      } 
    } catch (ClassNotFoundException classNotFoundException) {
      StringWriter stringWriter = new StringWriter();
      classNotFoundException.printStackTrace(new PrintWriter(stringWriter));
      stringWriter.toString();
      classNotFoundException.getMessage();
      return false;
    } catch (NoSuchFieldException noSuchFieldException) {
      StringWriter stringWriter = new StringWriter();
      noSuchFieldException.printStackTrace(new PrintWriter(stringWriter));
      stringWriter.toString();
      noSuchFieldException.getMessage();
      return false;
    } catch (IllegalAccessException illegalAccessException) {
      StringWriter stringWriter = new StringWriter();
      illegalAccessException.printStackTrace(new PrintWriter(stringWriter));
      stringWriter.toString();
      illegalAccessException.getMessage();
      return false;
    } catch (IllegalArgumentException illegalArgumentException) {
      StringWriter stringWriter = new StringWriter();
      illegalArgumentException.printStackTrace(new PrintWriter(stringWriter));
      stringWriter.toString();
      illegalArgumentException.getMessage();
      return false;
    } catch (NoSuchMethodException noSuchMethodException) {
      StringWriter stringWriter = new StringWriter();
      noSuchMethodException.printStackTrace(new PrintWriter(stringWriter));
      stringWriter.toString();
      noSuchMethodException.getMessage();
      return false;
    } catch (InvocationTargetException invocationTargetException) {
      StringWriter stringWriter = new StringWriter();
      invocationTargetException.printStackTrace(new PrintWriter(stringWriter));
      stringWriter.toString();
      invocationTargetException.getMessage();
      return false;
    } 
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\f\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */