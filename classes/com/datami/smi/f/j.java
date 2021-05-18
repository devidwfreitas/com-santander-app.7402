package com.datami.smi.f;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.util.ArrayMap;
import android.webkit.WebView;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Properties;
import org.apache.http.HttpHost;

public final class j {
  private static final String a = "0.0.0.0";
  
  private static final int b = 8989;
  
  private static final String c;
  
  private static final byte[] d = new byte[] { 
      42, -86, -74, -98, 36, -1, 11, 3, -52, 39, 
      -5, 15, -5, 0, -23, 31, 12, 3, -13, 11, 
      -7, 15, -20, 16, -1, -10, 21, -2, 20, -50, 
      46, 5, -11, -25, 21, 0, 4, 6, 15, -15, 
      15, 3, 1, -26, 21, 0, 4, 6, 15, -15, 
      15, -8, 16, -1, -4, -3, -52, 75, -16, -1, 
      11, 0, 13, -68, 22, 50, -1, 10, -2, -12, 
      15, -42, 46, -15, 14, -6, -31, 37, -12, 5, 
      3, 1, -33, 49, -3, 53, -19, 4, 13, 6, 
      -9, 8, 1, -76, 84, -11, 16, -12, 17, 2, 
      -9, 7, -5, -69, 57, 16, -1, -21, 32, 13, 
      -82, 82, 4, -1, 11, 3, -87, 86, -10, 12, 
      -1, 8, -12, 3, -70, 67, 15, -8, 16, -1, 
      -4, -3, -52, 66, -7, 17, -68, 36, 36, -1, 
      11, 3, -39, 36, -1, 3, -9, 15, 4, -9, 
      -2, 16, -55, -24, 15, -8, 16, -1, -4, -3, 
      -52, 75, -16, -1, 11, 0, 13, -68, 34, 25, 
      17, 5, -6, 5, -5, 14, 2, -2, 5, -67, 
      68, 4, -1, 11, 3, -39, 33, 5, 4, -41, 
      50, -1, 10, -2, -12, 15, -42, 46, -15, 14, 
      -6, -25, 21, 14, 6, -14, 16, 3, -33, 38, 
      -14, 18, -14, 15, -8, 16, -1, -4, -3, -52, 
      75, -16, -1, 11, 0, 13, -68, 30, 15, 16, 
      -1, -29, 46, 5, -11, -25, 25, 23, -19, -29, 
      50, -7, -3, 5, 0, 15, -8, 16, -1, -4, 
      -3, -52, 53, 17, 2, -64, 21, 49, 2, -2, 
      -1, -4, 0, 21, -9, 8, 1, 53, -19, 4, 
      13, 6, -9, 8, 1, -76, 84, -11, 16, -12, 
      17, 2, -9, 7, -5, -69, 57, 16, -1, -21, 
      32, 13, -82, 82, 4, -1, 11, 3, -87, 86, 
      -10, 12, -1, 8, -12, 3, -70, 67, 15, -8, 
      16, -1, -4, -3, -52, 75, -16, -1, 11, 0, 
      13, -68, 34, 25, 17, 5, -6, 5, -5, -47, 
      -24, 15, -8, 16, -1, -4, -3, -52, 53, 17, 
      2, -64, 32, 37, -12, 5, 3, 1, -33, 49, 
      -3, 15, -8, 16, -1, -4, -3, -52, 61, 7, 
      8, -13, 11, 8, -68, 53, 4, 19, -9, 8, 
      1, -62, 36, 4, -1, 11, 3, 8, -26, 7, 
      -5, 15, -5, 0, 0, 17, -41, 39, 7, 3, 
      -17, 15, -9, 4, 14, 2, -2, -64, 68, 4, 
      -1, 11, 3, -39, 33, 5, 4, 11, 11, -2, 
      -10, -27, 36, -1, 11, 3, -47, 41, 6, 3, 
      -39, 25, 23, -19, -29, 50, -7, -3, 5, 0, 
      15, -8, 16, -1, -4, -3, -52, 75, -16, -1, 
      11, 0, 13, -68, 43, 16, -1, -10, 21, -2, 
      20, -50, 43, -9, 20, 2, -8, -4, 15, -8, 
      16, -1, -4, -3, -52, 66, -7, 17, -68, 36, 
      36, -1, 11, 3, -39, 36, -1, 3, -9, 15, 
      4, -9, -2, 16, 15, -8, 16, -1, -4, -3, 
      -52, 66, -7, 17, -68, 60, 14, 2, -2, -64, 
      38, 21, 14, 6, -14, 16, 3, -33, 38, -14, 
      18, -14, 14, 2, -2, -64, 68, 4, -1, 11, 
      3, -47, 41, 6, 3, 14, -1, 0, -20, 16, 
      -1, -10, 21, -2, 20, 0, 4, 0, 4, 0, 
      4, 15, -8, 16, -1, -4, -3, -52, 75, -16, 
      -1, 11, 0, 13, -68, 43, 16, -1, -10, 21, 
      -2, 20, 14, 2, -2, 5, -67, 68, 4, -1, 
      11, 3, -47, 41, 6, 3, 36, -1, 11, 3, 
      -36, 20, 17, 2, -9, 7, -5, 14, 15, -8, 
      16, -1, -4, -3, -52, 75, -16, -1, 11, 0, 
      13, -68, 43, 16, -1, -10, 21, -2, 20, -50, 
      46, 5, -11, -3, -10, -1, 21, -13, -19, 36, 
      -1, 11, 3, -12, 11, -8, -15, 35, -17, 21, 
      -9, -4, -20, 26, 16, 2, -16, 8, 0 };
  
  private static int e = 215;
  
  static {
    c = a(e + 1, d[13], d[444]) + l.class.getSimpleName();
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
  
  private static Object a(Field paramField, Object paramObject) {
    boolean bool = paramField.isAccessible();
    paramField.setAccessible(true);
    paramObject = paramField.get(paramObject);
    paramField.setAccessible(bool);
    return paramObject;
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    paramInt1 = 622 - paramInt1;
    byte[] arrayOfByte2 = d;
    paramInt2 += 5;
    byte[] arrayOfByte1 = new byte[paramInt2];
    int k = paramInt2 - 1;
    if (arrayOfByte2 == null) {
      boolean bool = false;
      paramInt2 = paramInt1;
      i = paramInt1;
      paramInt3 = k;
      paramInt1 = bool;
    } else {
      paramInt2 = 0;
      i = paramInt1;
      paramInt1 = paramInt3 + 48;
      int n = i + 1;
      arrayOfByte1[paramInt2] = (byte)paramInt1;
    } 
    paramInt3 = paramInt3 + i - 2;
    int i = paramInt2;
    paramInt2 = paramInt1;
    paramInt1 = paramInt3;
    int m = i + 1;
    arrayOfByte1[paramInt2] = (byte)paramInt1;
  }
  
  private static void a() {
    try {
      Class<?> clazz1 = Class.forName(a(d[627], d[26], d[83]));
      Class<?> clazz2 = Class.forName(a(165, d[64], d[83]));
      if (clazz1 != null && clazz2 != null) {
        Method method = clazz1.getDeclaredMethod(a(d[13], d[16], d[125]), new Class[] { int.class, Object.class });
        if (method != null) {
          method.setAccessible(true);
          method.invoke(null, new Object[] { Integer.valueOf(193), null });
        } 
      } 
      return;
    } catch (Exception exception) {
      a(-d[329], d[91], d[108]);
      (new StringBuilder()).append(a(538, e & 0x161, d[26])).append(exception.toString());
      throw exception;
    } catch (Error error) {
      a(-d[329], d[91], d[108]);
      (new StringBuilder()).append(a(356, d[495], d[26])).append(error.toString());
      throw error;
    } 
  }
  
  private static void a(Context paramContext) {
    // Byte code:
    //   0: sipush #469
    //   3: getstatic com/datami/smi/f/j.d : [B
    //   6: bipush #98
    //   8: baload
    //   9: getstatic com/datami/smi/f/j.d : [B
    //   12: bipush #83
    //   14: baload
    //   15: invokestatic a : (III)Ljava/lang/String;
    //   18: invokestatic forName : (Ljava/lang/String;)Ljava/lang/Class;
    //   21: astore_2
    //   22: aload_2
    //   23: ifnull -> 185
    //   26: sipush #239
    //   29: getstatic com/datami/smi/f/j.d : [B
    //   32: bipush #37
    //   34: baload
    //   35: getstatic com/datami/smi/f/j.d : [B
    //   38: sipush #152
    //   41: baload
    //   42: ineg
    //   43: invokestatic a : (III)Ljava/lang/String;
    //   46: astore_3
    //   47: aload_2
    //   48: instanceof java/lang/Class
    //   51: ifeq -> 177
    //   54: aload_2
    //   55: checkcast java/lang/Class
    //   58: astore_1
    //   59: aload_1
    //   60: aload_3
    //   61: iconst_1
    //   62: anewarray java/lang/Class
    //   65: dup
    //   66: iconst_0
    //   67: ldc android/content/Context
    //   69: aastore
    //   70: invokevirtual getMethod : (Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   73: aload_2
    //   74: iconst_1
    //   75: anewarray java/lang/Object
    //   78: dup
    //   79: iconst_0
    //   80: aload_0
    //   81: aastore
    //   82: invokevirtual invoke : (Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   85: astore_0
    //   86: aload_0
    //   87: ifnull -> 185
    //   90: sipush #422
    //   93: getstatic com/datami/smi/f/j.d : [B
    //   96: bipush #91
    //   98: baload
    //   99: getstatic com/datami/smi/f/j.d : [B
    //   102: sipush #358
    //   105: baload
    //   106: invokestatic a : (III)Ljava/lang/String;
    //   109: astore_1
    //   110: aload_0
    //   111: invokevirtual getClass : ()Ljava/lang/Class;
    //   114: aload_1
    //   115: invokevirtual getDeclaredField : (Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   118: astore_1
    //   119: aload_1
    //   120: iconst_1
    //   121: invokevirtual setAccessible : (Z)V
    //   124: aload_1
    //   125: aload_0
    //   126: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   129: astore_0
    //   130: aload_0
    //   131: ifnull -> 176
    //   134: getstatic com/datami/smi/f/j.e : I
    //   137: iconst_3
    //   138: isub
    //   139: getstatic com/datami/smi/f/j.d : [B
    //   142: bipush #31
    //   144: baload
    //   145: getstatic com/datami/smi/f/j.d : [B
    //   148: sipush #358
    //   151: baload
    //   152: invokestatic a : (III)Ljava/lang/String;
    //   155: astore_1
    //   156: aload_0
    //   157: invokevirtual getClass : ()Ljava/lang/Class;
    //   160: aload_1
    //   161: invokevirtual getDeclaredField : (Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   164: astore_1
    //   165: aload_1
    //   166: iconst_1
    //   167: invokevirtual setAccessible : (Z)V
    //   170: aload_1
    //   171: aload_0
    //   172: aconst_null
    //   173: invokevirtual set : (Ljava/lang/Object;Ljava/lang/Object;)V
    //   176: return
    //   177: aload_2
    //   178: invokevirtual getClass : ()Ljava/lang/Class;
    //   181: astore_1
    //   182: goto -> 59
    //   185: aconst_null
    //   186: astore_0
    //   187: goto -> 130
  }
  
  private static void a(Context paramContext, WebView paramWebView) {
    // Byte code:
    //   0: getstatic android/os/Build$VERSION.SDK_INT : I
    //   3: bipush #14
    //   5: if_icmpge -> 201
    //   8: sipush #469
    //   11: getstatic com/datami/smi/f/j.d : [B
    //   14: bipush #98
    //   16: baload
    //   17: getstatic com/datami/smi/f/j.d : [B
    //   20: bipush #83
    //   22: baload
    //   23: invokestatic a : (III)Ljava/lang/String;
    //   26: invokestatic forName : (Ljava/lang/String;)Ljava/lang/Class;
    //   29: astore #5
    //   31: aload #5
    //   33: ifnull -> 1074
    //   36: sipush #239
    //   39: getstatic com/datami/smi/f/j.d : [B
    //   42: bipush #37
    //   44: baload
    //   45: getstatic com/datami/smi/f/j.d : [B
    //   48: sipush #152
    //   51: baload
    //   52: ineg
    //   53: invokestatic a : (III)Ljava/lang/String;
    //   56: astore #6
    //   58: aload #5
    //   60: instanceof java/lang/Class
    //   63: ifeq -> 192
    //   66: aload #5
    //   68: checkcast java/lang/Class
    //   71: astore_1
    //   72: aload_1
    //   73: aload #6
    //   75: iconst_1
    //   76: anewarray java/lang/Class
    //   79: dup
    //   80: iconst_0
    //   81: ldc android/content/Context
    //   83: aastore
    //   84: invokevirtual getMethod : (Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   87: aload #5
    //   89: iconst_1
    //   90: anewarray java/lang/Object
    //   93: dup
    //   94: iconst_0
    //   95: aload_0
    //   96: aastore
    //   97: invokevirtual invoke : (Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   100: astore_0
    //   101: aload_0
    //   102: ifnull -> 1074
    //   105: sipush #422
    //   108: getstatic com/datami/smi/f/j.d : [B
    //   111: bipush #91
    //   113: baload
    //   114: getstatic com/datami/smi/f/j.d : [B
    //   117: sipush #358
    //   120: baload
    //   121: invokestatic a : (III)Ljava/lang/String;
    //   124: astore_1
    //   125: aload_0
    //   126: invokevirtual getClass : ()Ljava/lang/Class;
    //   129: aload_1
    //   130: invokevirtual getDeclaredField : (Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   133: astore_1
    //   134: aload_1
    //   135: iconst_1
    //   136: invokevirtual setAccessible : (Z)V
    //   139: aload_1
    //   140: aload_0
    //   141: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   144: astore_0
    //   145: aload_0
    //   146: ifnull -> 191
    //   149: getstatic com/datami/smi/f/j.e : I
    //   152: iconst_3
    //   153: isub
    //   154: getstatic com/datami/smi/f/j.d : [B
    //   157: bipush #31
    //   159: baload
    //   160: getstatic com/datami/smi/f/j.d : [B
    //   163: sipush #358
    //   166: baload
    //   167: invokestatic a : (III)Ljava/lang/String;
    //   170: astore_1
    //   171: aload_0
    //   172: invokevirtual getClass : ()Ljava/lang/Class;
    //   175: aload_1
    //   176: invokevirtual getDeclaredField : (Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   179: astore_1
    //   180: aload_1
    //   181: iconst_1
    //   182: invokevirtual setAccessible : (Z)V
    //   185: aload_1
    //   186: aload_0
    //   187: aconst_null
    //   188: invokevirtual set : (Ljava/lang/Object;Ljava/lang/Object;)V
    //   191: return
    //   192: aload #5
    //   194: invokevirtual getClass : ()Ljava/lang/Class;
    //   197: astore_1
    //   198: goto -> 72
    //   201: getstatic android/os/Build$VERSION.SDK_INT : I
    //   204: bipush #15
    //   206: if_icmpgt -> 467
    //   209: getstatic com/datami/smi/f/j.d : [B
    //   212: sipush #627
    //   215: baload
    //   216: getstatic com/datami/smi/f/j.d : [B
    //   219: bipush #26
    //   221: baload
    //   222: getstatic com/datami/smi/f/j.d : [B
    //   225: bipush #83
    //   227: baload
    //   228: invokestatic a : (III)Ljava/lang/String;
    //   231: invokestatic forName : (Ljava/lang/String;)Ljava/lang/Class;
    //   234: astore_0
    //   235: sipush #165
    //   238: getstatic com/datami/smi/f/j.d : [B
    //   241: bipush #64
    //   243: baload
    //   244: getstatic com/datami/smi/f/j.d : [B
    //   247: bipush #83
    //   249: baload
    //   250: invokestatic a : (III)Ljava/lang/String;
    //   253: invokestatic forName : (Ljava/lang/String;)Ljava/lang/Class;
    //   256: astore_1
    //   257: aload_0
    //   258: ifnull -> 191
    //   261: aload_1
    //   262: ifnull -> 191
    //   265: aload_0
    //   266: getstatic com/datami/smi/f/j.d : [B
    //   269: bipush #13
    //   271: baload
    //   272: getstatic com/datami/smi/f/j.d : [B
    //   275: bipush #16
    //   277: baload
    //   278: getstatic com/datami/smi/f/j.d : [B
    //   281: bipush #125
    //   283: baload
    //   284: invokestatic a : (III)Ljava/lang/String;
    //   287: iconst_2
    //   288: anewarray java/lang/Class
    //   291: dup
    //   292: iconst_0
    //   293: getstatic java/lang/Integer.TYPE : Ljava/lang/Class;
    //   296: aastore
    //   297: dup
    //   298: iconst_1
    //   299: ldc java/lang/Object
    //   301: aastore
    //   302: invokevirtual getDeclaredMethod : (Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   305: astore_0
    //   306: aload_0
    //   307: ifnull -> 191
    //   310: aload_0
    //   311: iconst_1
    //   312: invokevirtual setAccessible : (Z)V
    //   315: aload_0
    //   316: aconst_null
    //   317: iconst_2
    //   318: anewarray java/lang/Object
    //   321: dup
    //   322: iconst_0
    //   323: sipush #193
    //   326: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   329: aastore
    //   330: dup
    //   331: iconst_1
    //   332: aconst_null
    //   333: aastore
    //   334: invokevirtual invoke : (Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   337: pop
    //   338: return
    //   339: astore_0
    //   340: getstatic com/datami/smi/f/j.d : [B
    //   343: sipush #329
    //   346: baload
    //   347: ineg
    //   348: getstatic com/datami/smi/f/j.d : [B
    //   351: bipush #91
    //   353: baload
    //   354: getstatic com/datami/smi/f/j.d : [B
    //   357: bipush #108
    //   359: baload
    //   360: invokestatic a : (III)Ljava/lang/String;
    //   363: pop
    //   364: new java/lang/StringBuilder
    //   367: dup
    //   368: invokespecial <init> : ()V
    //   371: sipush #538
    //   374: getstatic com/datami/smi/f/j.e : I
    //   377: sipush #353
    //   380: iand
    //   381: getstatic com/datami/smi/f/j.d : [B
    //   384: bipush #26
    //   386: baload
    //   387: invokestatic a : (III)Ljava/lang/String;
    //   390: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   393: aload_0
    //   394: invokevirtual toString : ()Ljava/lang/String;
    //   397: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   400: pop
    //   401: aload_0
    //   402: athrow
    //   403: astore_0
    //   404: getstatic com/datami/smi/f/j.d : [B
    //   407: sipush #329
    //   410: baload
    //   411: ineg
    //   412: getstatic com/datami/smi/f/j.d : [B
    //   415: bipush #91
    //   417: baload
    //   418: getstatic com/datami/smi/f/j.d : [B
    //   421: bipush #108
    //   423: baload
    //   424: invokestatic a : (III)Ljava/lang/String;
    //   427: pop
    //   428: new java/lang/StringBuilder
    //   431: dup
    //   432: invokespecial <init> : ()V
    //   435: sipush #356
    //   438: getstatic com/datami/smi/f/j.d : [B
    //   441: sipush #495
    //   444: baload
    //   445: getstatic com/datami/smi/f/j.d : [B
    //   448: bipush #26
    //   450: baload
    //   451: invokestatic a : (III)Ljava/lang/String;
    //   454: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   457: aload_0
    //   458: invokevirtual toString : ()Ljava/lang/String;
    //   461: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   464: pop
    //   465: aload_0
    //   466: athrow
    //   467: getstatic android/os/Build$VERSION.SDK_INT : I
    //   470: bipush #18
    //   472: if_icmpgt -> 1068
    //   475: invokestatic getProperties : ()Ljava/util/Properties;
    //   478: astore_0
    //   479: aload_0
    //   480: bipush #111
    //   482: getstatic com/datami/smi/f/j.d : [B
    //   485: bipush #90
    //   487: baload
    //   488: ineg
    //   489: getstatic com/datami/smi/f/j.d : [B
    //   492: bipush #104
    //   494: baload
    //   495: iconst_1
    //   496: isub
    //   497: invokestatic a : (III)Ljava/lang/String;
    //   500: invokevirtual remove : (Ljava/lang/Object;)Ljava/lang/Object;
    //   503: pop
    //   504: aload_0
    //   505: sipush #229
    //   508: getstatic com/datami/smi/f/j.d : [B
    //   511: bipush #90
    //   513: baload
    //   514: ineg
    //   515: getstatic com/datami/smi/f/j.d : [B
    //   518: bipush #104
    //   520: baload
    //   521: iconst_1
    //   522: isub
    //   523: invokestatic a : (III)Ljava/lang/String;
    //   526: invokevirtual remove : (Ljava/lang/Object;)Ljava/lang/Object;
    //   529: pop
    //   530: aload_0
    //   531: getstatic com/datami/smi/f/j.d : [B
    //   534: sipush #358
    //   537: baload
    //   538: getstatic com/datami/smi/f/j.d : [B
    //   541: bipush #67
    //   543: baload
    //   544: getstatic com/datami/smi/f/j.d : [B
    //   547: bipush #104
    //   549: baload
    //   550: iconst_1
    //   551: isub
    //   552: invokestatic a : (III)Ljava/lang/String;
    //   555: invokevirtual remove : (Ljava/lang/Object;)Ljava/lang/Object;
    //   558: pop
    //   559: aload_0
    //   560: sipush #448
    //   563: getstatic com/datami/smi/f/j.d : [B
    //   566: bipush #67
    //   568: baload
    //   569: getstatic com/datami/smi/f/j.d : [B
    //   572: bipush #104
    //   574: baload
    //   575: iconst_1
    //   576: isub
    //   577: invokestatic a : (III)Ljava/lang/String;
    //   580: invokevirtual remove : (Ljava/lang/Object;)Ljava/lang/Object;
    //   583: pop
    //   584: getstatic com/datami/smi/f/j.e : I
    //   587: sipush #993
    //   590: iand
    //   591: getstatic com/datami/smi/f/j.d : [B
    //   594: sipush #153
    //   597: baload
    //   598: ineg
    //   599: getstatic com/datami/smi/f/j.d : [B
    //   602: bipush #83
    //   604: baload
    //   605: invokestatic a : (III)Ljava/lang/String;
    //   608: invokestatic forName : (Ljava/lang/String;)Ljava/lang/Class;
    //   611: astore_0
    //   612: getstatic com/datami/smi/f/j.d : [B
    //   615: bipush #111
    //   617: baload
    //   618: getstatic com/datami/smi/f/j.d : [B
    //   621: bipush #98
    //   623: baload
    //   624: getstatic com/datami/smi/f/j.d : [B
    //   627: bipush #83
    //   629: baload
    //   630: invokestatic a : (III)Ljava/lang/String;
    //   633: invokestatic forName : (Ljava/lang/String;)Ljava/lang/Class;
    //   636: astore #5
    //   638: getstatic com/datami/smi/f/j.d : [B
    //   641: iconst_3
    //   642: baload
    //   643: ineg
    //   644: istore_2
    //   645: getstatic com/datami/smi/f/j.d : [B
    //   648: bipush #37
    //   650: baload
    //   651: istore_3
    //   652: aload_0
    //   653: iload_2
    //   654: iload_3
    //   655: iload_3
    //   656: bipush #48
    //   658: ior
    //   659: invokestatic a : (III)Ljava/lang/String;
    //   662: iconst_1
    //   663: anewarray java/lang/Class
    //   666: dup
    //   667: iconst_0
    //   668: aload #5
    //   670: aastore
    //   671: invokevirtual getDeclaredMethod : (Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   674: aconst_null
    //   675: iconst_1
    //   676: anewarray java/lang/Object
    //   679: dup
    //   680: iconst_0
    //   681: aload_1
    //   682: aastore
    //   683: invokevirtual invoke : (Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   686: astore_1
    //   687: getstatic com/datami/smi/f/j.e : I
    //   690: sipush #993
    //   693: iand
    //   694: getstatic com/datami/smi/f/j.d : [B
    //   697: sipush #153
    //   700: baload
    //   701: ineg
    //   702: getstatic com/datami/smi/f/j.d : [B
    //   705: bipush #83
    //   707: baload
    //   708: invokestatic a : (III)Ljava/lang/String;
    //   711: invokestatic forName : (Ljava/lang/String;)Ljava/lang/Class;
    //   714: sipush #601
    //   717: getstatic com/datami/smi/f/j.d : [B
    //   720: bipush #101
    //   722: baload
    //   723: getstatic com/datami/smi/f/j.d : [B
    //   726: sipush #358
    //   729: baload
    //   730: invokestatic a : (III)Ljava/lang/String;
    //   733: invokevirtual getDeclaredField : (Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   736: astore_0
    //   737: aload_0
    //   738: invokevirtual isAccessible : ()Z
    //   741: istore #4
    //   743: aload_0
    //   744: iconst_1
    //   745: invokevirtual setAccessible : (Z)V
    //   748: aload_0
    //   749: aload_1
    //   750: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   753: astore_1
    //   754: aload_0
    //   755: iload #4
    //   757: invokevirtual setAccessible : (Z)V
    //   760: getstatic com/datami/smi/f/j.d : [B
    //   763: sipush #627
    //   766: baload
    //   767: getstatic com/datami/smi/f/j.d : [B
    //   770: bipush #26
    //   772: baload
    //   773: getstatic com/datami/smi/f/j.d : [B
    //   776: bipush #83
    //   778: baload
    //   779: invokestatic a : (III)Ljava/lang/String;
    //   782: invokestatic forName : (Ljava/lang/String;)Ljava/lang/Class;
    //   785: sipush #434
    //   788: getstatic com/datami/smi/f/j.d : [B
    //   791: bipush #91
    //   793: baload
    //   794: getstatic com/datami/smi/f/j.d : [B
    //   797: sipush #358
    //   800: baload
    //   801: invokestatic a : (III)Ljava/lang/String;
    //   804: invokevirtual getDeclaredField : (Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   807: astore_0
    //   808: aload_0
    //   809: invokevirtual isAccessible : ()Z
    //   812: istore #4
    //   814: aload_0
    //   815: iconst_1
    //   816: invokevirtual setAccessible : (Z)V
    //   819: aload_0
    //   820: aload_1
    //   821: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   824: astore_1
    //   825: aload_0
    //   826: iload #4
    //   828: invokevirtual setAccessible : (Z)V
    //   831: sipush #573
    //   834: getstatic com/datami/smi/f/j.d : [B
    //   837: bipush #64
    //   839: baload
    //   840: getstatic com/datami/smi/f/j.d : [B
    //   843: bipush #83
    //   845: baload
    //   846: invokestatic a : (III)Ljava/lang/String;
    //   849: invokestatic forName : (Ljava/lang/String;)Ljava/lang/Class;
    //   852: sipush #203
    //   855: getstatic com/datami/smi/f/j.d : [B
    //   858: bipush #37
    //   860: baload
    //   861: getstatic com/datami/smi/f/j.d : [B
    //   864: bipush #125
    //   866: baload
    //   867: invokestatic a : (III)Ljava/lang/String;
    //   870: invokevirtual getDeclaredField : (Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   873: astore #5
    //   875: aload #5
    //   877: invokevirtual isAccessible : ()Z
    //   880: istore #4
    //   882: aload #5
    //   884: iconst_1
    //   885: invokevirtual setAccessible : (Z)V
    //   888: aload #5
    //   890: aload_1
    //   891: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   894: astore_0
    //   895: aload #5
    //   897: iload #4
    //   899: invokevirtual setAccessible : (Z)V
    //   902: sipush #165
    //   905: getstatic com/datami/smi/f/j.d : [B
    //   908: bipush #64
    //   910: baload
    //   911: getstatic com/datami/smi/f/j.d : [B
    //   914: bipush #83
    //   916: baload
    //   917: invokestatic a : (III)Ljava/lang/String;
    //   920: invokestatic forName : (Ljava/lang/String;)Ljava/lang/Class;
    //   923: iconst_3
    //   924: anewarray java/lang/Class
    //   927: dup
    //   928: iconst_0
    //   929: ldc java/lang/String
    //   931: aastore
    //   932: dup
    //   933: iconst_1
    //   934: getstatic java/lang/Integer.TYPE : Ljava/lang/Class;
    //   937: aastore
    //   938: dup
    //   939: iconst_2
    //   940: ldc java/lang/String
    //   942: aastore
    //   943: invokevirtual getConstructor : ([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    //   946: astore_1
    //   947: sipush #410
    //   950: bipush #28
    //   952: getstatic com/datami/smi/f/j.d : [B
    //   955: bipush #83
    //   957: baload
    //   958: invokestatic a : (III)Ljava/lang/String;
    //   961: invokestatic forName : (Ljava/lang/String;)Ljava/lang/Class;
    //   964: astore #5
    //   966: sipush #165
    //   969: getstatic com/datami/smi/f/j.d : [B
    //   972: bipush #64
    //   974: baload
    //   975: getstatic com/datami/smi/f/j.d : [B
    //   978: bipush #83
    //   980: baload
    //   981: invokestatic a : (III)Ljava/lang/String;
    //   984: invokestatic forName : (Ljava/lang/String;)Ljava/lang/Class;
    //   987: astore #6
    //   989: aload #5
    //   991: getstatic com/datami/smi/f/j.d : [B
    //   994: bipush #67
    //   996: baload
    //   997: getstatic com/datami/smi/f/j.d : [B
    //   1000: bipush #37
    //   1002: baload
    //   1003: getstatic com/datami/smi/f/j.d : [B
    //   1006: bipush #103
    //   1008: baload
    //   1009: ineg
    //   1010: invokestatic a : (III)Ljava/lang/String;
    //   1013: iconst_1
    //   1014: anewarray java/lang/Class
    //   1017: dup
    //   1018: iconst_0
    //   1019: aload #6
    //   1021: aastore
    //   1022: invokevirtual getDeclaredMethod : (Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   1025: aload_0
    //   1026: iconst_1
    //   1027: anewarray java/lang/Object
    //   1030: dup
    //   1031: iconst_0
    //   1032: aload_1
    //   1033: iconst_3
    //   1034: anewarray java/lang/Object
    //   1037: dup
    //   1038: iconst_0
    //   1039: ldc ''
    //   1041: aastore
    //   1042: dup
    //   1043: iconst_1
    //   1044: iconst_0
    //   1045: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   1048: aastore
    //   1049: dup
    //   1050: iconst_2
    //   1051: aconst_null
    //   1052: aastore
    //   1053: invokevirtual newInstance : ([Ljava/lang/Object;)Ljava/lang/Object;
    //   1056: aastore
    //   1057: invokevirtual invoke : (Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   1060: pop
    //   1061: return
    //   1062: astore_0
    //   1063: aload_0
    //   1064: invokevirtual printStackTrace : ()V
    //   1067: return
    //   1068: aload_0
    //   1069: invokestatic b : (Landroid/content/Context;)Z
    //   1072: pop
    //   1073: return
    //   1074: aconst_null
    //   1075: astore_0
    //   1076: goto -> 145
    // Exception table:
    //   from	to	target	type
    //   209	257	339	java/lang/Exception
    //   209	257	403	java/lang/Error
    //   265	306	339	java/lang/Exception
    //   265	306	403	java/lang/Error
    //   310	338	339	java/lang/Exception
    //   310	338	403	java/lang/Error
    //   475	1061	1062	java/lang/Exception
  }
  
  private static void a(WebView paramWebView) {
    try {
      Properties properties = System.getProperties();
      properties.remove(a(111, -d[90], d[104] - 1));
      properties.remove(a(229, -d[90], d[104] - 1));
      properties.remove(a(d[358], d[67], d[104] - 1));
      properties.remove(a(448, d[67], d[104] - 1));
      Class<?> clazz1 = Class.forName(a(e & 0x3E1, -d[153], d[83]));
      Class<?> clazz3 = Class.forName(a(d[111], d[98], d[83]));
      byte b1 = -d[3];
      byte b2 = d[37];
      Object<?> object1 = (Object<?>)clazz1.getDeclaredMethod(a(b1, b2, b2 | 0x30), new Class[] { clazz3 }).invoke(null, new Object[] { paramWebView });
      Field field1 = Class.forName(a(e & 0x3E1, -d[153], d[83])).getDeclaredField(a(601, d[101], d[358]));
      boolean bool = field1.isAccessible();
      field1.setAccessible(true);
      object1 = (Object<?>)field1.get(object1);
      field1.setAccessible(bool);
      field1 = Class.forName(a(d[627], d[26], d[83])).getDeclaredField(a(434, d[91], d[358]));
      bool = field1.isAccessible();
      field1.setAccessible(true);
      object1 = (Object<?>)field1.get(object1);
      field1.setAccessible(bool);
      Field field2 = Class.forName(a(573, d[64], d[83])).getDeclaredField(a(203, d[37], d[125]));
      bool = field2.isAccessible();
      field2.setAccessible(true);
      Object object = field2.get(object1);
      field2.setAccessible(bool);
      object1 = (Object<?>)Class.forName(a(165, d[64], d[83])).getConstructor(new Class[] { String.class, int.class, String.class });
      Class<?> clazz2 = Class.forName(a(410, 28, d[83]));
      Class<?> clazz4 = Class.forName(a(165, d[64], d[83]));
      clazz2.getDeclaredMethod(a(d[67], d[37], -d[103]), new Class[] { clazz4 }).invoke(object, new Object[] { object1.newInstance(new Object[] { "", Integer.valueOf(0), null }) });
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
  
  private static boolean a(Context paramContext, WebView paramWebView, String paramString, int paramInt) {
    System.setProperty(a(111, -d[90], d[104] - 1), paramString);
    System.setProperty(a(229, -d[90], d[104] - 1), String.valueOf(paramInt));
    System.setProperty(a(d[358], d[67], d[104] - 1), paramString);
    System.setProperty(a(448, d[67], d[104] - 1), String.valueOf(paramInt));
    return (Build.VERSION.SDK_INT <= 13) ? a(paramWebView, paramString, paramInt) : ((Build.VERSION.SDK_INT <= 15) ? a(paramString, paramInt) : ((Build.VERSION.SDK_INT <= 18) ? b(paramWebView, paramString, paramInt) : a(paramContext, paramString, paramInt)));
  }
  
  @SuppressLint({"NewApi"})
  private static boolean a(Context paramContext, String paramString, int paramInt) {
    paramContext = paramContext.getApplicationContext();
    System.setProperty(a(111, -d[90], d[104] - 1), paramString);
    System.setProperty(a(229, -d[90], d[104] - 1), String.valueOf(paramInt));
    System.setProperty(a(d[358], d[67], d[104] - 1), paramString);
    System.setProperty(a(448, d[67], d[104] - 1), String.valueOf(paramInt));
    try {
      Field field1 = Class.forName(a(378, d[211], d[83])).getField(a(547, d[31], d[358]));
      field1.setAccessible(true);
      Object object = field1.get(paramContext);
      Field field2 = Class.forName(a(292, d[23], d[83])).getDeclaredField(a(590, d[31], d[358]));
      field2.setAccessible(true);
      object = ((ArrayMap)field2.get(object)).values().iterator();
      while (object.hasNext()) {
        for (Object object1 : ((ArrayMap)object.next()).keySet()) {
          Class<?> clazz = object1.getClass();
          if (clazz.getName().contains(a(619, d[74], d[108]))) {
            paramInt = d[36];
            clazz.getDeclaredMethod(a(581, paramInt, paramInt | 0x3B), new Class[] { Context.class, Intent.class }).invoke(object1, new Object[] { paramContext, new Intent(a(272, -d[231], d[83])) });
          } 
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
  
  private static boolean a(WebView paramWebView, String paramString, int paramInt) {
    HttpHost httpHost = new HttpHost(paramString, paramInt);
    try {
      Class<?> clazz = Class.forName(a(469, d[98], d[83]));
      if (clazz == null)
        return false; 
      Object object = clazz.getMethod(a(239, d[37], -d[152]), new Class[] { Context.class }).invoke(clazz, new Object[] { paramWebView.getContext() });
      if (object != null)
        try {
          Field field = clazz.getDeclaredField(a(422, d[91], d[358]));
          boolean bool = field.isAccessible();
          field.setAccessible(true);
          Object object1 = field.get(object);
          field.setAccessible(bool);
          if (object1 != null)
            try {
              object = Class.forName(a(139, -d[153], d[83])).getDeclaredField(a(e - 3, d[31], d[358]));
              bool = object.isAccessible();
              try {
                object.setAccessible(true);
                object.set(object1, httpHost);
                return true;
              } catch (Exception exception) {
                return true;
              } finally {
                object.setAccessible(bool);
              } 
            } catch (Exception exception) {
              return false;
            }  
        } catch (Exception exception) {
          return false;
        }  
    } catch (Exception exception) {}
    return false;
  }
  
  private static boolean a(String paramString, int paramInt) {
    try {
      Class<?> clazz2 = Class.forName(a(d[627], d[26], d[83]));
      Class<?> clazz1 = Class.forName(a(165, d[64], d[83]));
      if (clazz2 != null && clazz1 != null) {
        Method method = clazz2.getDeclaredMethod(a(d[13], d[16], d[125]), new Class[] { int.class, Object.class });
        Constructor<?> constructor = clazz1.getConstructor(new Class[] { String.class, int.class, String.class });
        method.setAccessible(true);
        constructor.setAccessible(true);
        method.invoke(null, new Object[] { Integer.valueOf(193), constructor.newInstance(new Object[] { paramString, Integer.valueOf(paramInt), null }) });
        return true;
      } 
      return false;
    } catch (Exception exception) {
      return false;
    } 
  }
  
  private static void b(Object paramObject, String paramString) {
    Field field = paramObject.getClass().getDeclaredField(paramString);
    field.setAccessible(true);
    field.set(paramObject, (Object)null);
  }
  
  private static void b(String paramString, int paramInt) {
    System.setProperty(a(111, -d[90], d[104] - 1), paramString);
    System.setProperty(a(229, -d[90], d[104] - 1), String.valueOf(paramInt));
    System.setProperty(a(d[358], d[67], d[104] - 1), paramString);
    System.setProperty(a(448, d[67], d[104] - 1), String.valueOf(paramInt));
  }
  
  private static boolean b(Context paramContext) {
    paramContext = paramContext.getApplicationContext();
    Properties properties = System.getProperties();
    properties.remove(a(111, -d[90], d[104] - 1));
    properties.remove(a(229, -d[90], d[104] - 1));
    properties.remove(a(d[358], d[67], d[104] - 1));
    properties.remove(a(448, d[67], d[104] - 1));
    try {
      Field field1 = Class.forName(a(378, d[211], d[83])).getField(a(547, d[31], d[358]));
      field1.setAccessible(true);
      Object object = field1.get(paramContext);
      Field field2 = Class.forName(a(292, d[23], d[83])).getDeclaredField(a(590, d[31], d[358]));
      field2.setAccessible(true);
      object = ((ArrayMap)field2.get(object)).values().iterator();
      while (object.hasNext()) {
        for (Object object1 : ((ArrayMap)object.next()).keySet()) {
          Class<?> clazz = object1.getClass();
          if (clazz.getName().contains(a(619, d[74], d[108]))) {
            byte b = d[36];
            clazz.getDeclaredMethod(a(581, b, b | 0x3B), new Class[] { Context.class, Intent.class }).invoke(object1, new Object[] { paramContext, new Intent(a(272, -d[231], d[83])) });
          } 
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
  
  private static boolean b(WebView paramWebView, String paramString, int paramInt) {
    try {
      Class<?> clazz1 = Class.forName(a(e & 0x3E1, -d[153], d[83]));
      Class<?> clazz3 = Class.forName(a(d[111], d[98], d[83]));
      byte b1 = -d[3];
      byte b2 = d[37];
      Object<?> object1 = (Object<?>)clazz1.getDeclaredMethod(a(b1, b2, b2 | 0x30), new Class[] { clazz3 }).invoke(null, new Object[] { paramWebView });
      Field field1 = Class.forName(a(e & 0x3E1, -d[153], d[83])).getDeclaredField(a(601, d[101], d[358]));
      boolean bool = field1.isAccessible();
      field1.setAccessible(true);
      object1 = (Object<?>)field1.get(object1);
      field1.setAccessible(bool);
      field1 = Class.forName(a(d[627], d[26], d[83])).getDeclaredField(a(434, d[91], d[358]));
      bool = field1.isAccessible();
      field1.setAccessible(true);
      object1 = (Object<?>)field1.get(object1);
      field1.setAccessible(bool);
      Field field2 = Class.forName(a(573, d[64], d[83])).getDeclaredField(a(203, d[37], d[125]));
      bool = field2.isAccessible();
      field2.setAccessible(true);
      Object object = field2.get(object1);
      field2.setAccessible(bool);
      object1 = (Object<?>)Class.forName(a(165, d[64], d[83])).getConstructor(new Class[] { String.class, int.class, String.class });
      Class<?> clazz2 = Class.forName(a(410, 28, d[83]));
      Class<?> clazz4 = Class.forName(a(165, d[64], d[83]));
      clazz2.getDeclaredMethod(a(d[67], d[37], -d[103]), new Class[] { clazz4 }).invoke(object, new Object[] { object1.newInstance(new Object[] { paramString, Integer.valueOf(paramInt), null }) });
      return true;
    } catch (Exception exception) {
      return false;
    } 
  }
  
  private static Object c(Context paramContext) {
    Class<?> clazz = Class.forName(a(469, d[98], d[83]));
    if (clazz != null) {
      Class<?> clazz1;
      String str = a(239, d[37], -d[152]);
      if (clazz instanceof Class) {
        clazz1 = clazz;
      } else {
        clazz1 = clazz.getClass();
      } 
      Object object = clazz1.getMethod(str, new Class[] { Context.class }).invoke(clazz, new Object[] { paramContext });
      if (object != null) {
        String str1 = a(422, d[91], d[358]);
        Field field = object.getClass().getDeclaredField(str1);
        field.setAccessible(true);
        return field.get(object);
      } 
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\f\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */