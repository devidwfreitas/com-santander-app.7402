import java.util.Vector;
import org.json.JSONObject;

public class bu {
  static int a = 1719;
  
  public static final int b = 1810;
  
  public static final int c = 1811;
  
  public static final int d = 1812;
  
  public static final int e = 1813;
  
  public static final int f = 1814;
  
  public static final int g = 1816;
  
  static int h = 1819;
  
  public static final int i = 1710;
  
  public static final int j = 1711;
  
  public static final int k = 1712;
  
  public static final int l = 1713;
  
  public static final int m = 1714;
  
  public static final int n = 1716;
  
  public static String o = "&";
  
  public static String p = ":";
  
  static final String q = "6BF891D1C596FD5F4B0CD7AC1A2594AB284C41F5ACA2E7EC390701BD4F9A6256";
  
  public static int a(al paramal, byte[] paramArrayOfbyte, String paramString, StringBuffer paramStringBuffer1, StringBuffer paramStringBuffer2, Vector<String> paramVector) {
    return (paramStringBuffer2 == null || paramStringBuffer1 == null || paramVector == null) ? h : a(paramal, paramArrayOfbyte, paramString, paramStringBuffer1, paramVector, paramStringBuffer2);
  }
  
  public static int a(al paramal, byte[] paramArrayOfbyte, String paramString, StringBuffer paramStringBuffer, Vector<String> paramVector) {
    return (paramStringBuffer == null || paramVector == null) ? a : a(paramal, paramArrayOfbyte, paramString, paramStringBuffer, paramVector, (StringBuffer)null);
  }
  
  private static int a(al paramal, byte[] paramArrayOfbyte, String paramString, StringBuffer paramStringBuffer1, Vector<String> paramVector, StringBuffer paramStringBuffer2) {
    boolean bool;
    char c = 'ܓ';
    if (paramStringBuffer2 != null) {
      bool = true;
    } else {
      bool = false;
    } 
    try {
      Vector<String> vector = br.a(paramString.trim(), p);
      int i = vector.size();
      if (i < 2) {
        if (bool)
          return 1810; 
      } else {
        byte[] arrayOfByte = (byte[])null;
        int j = 0;
        while (true) {
          if (j >= i) {
            if (arrayOfByte == null)
              return bool ? 1811 : 1711; 
          } else {
            try {
              byte[] arrayOfByte1 = a(paramal, paramArrayOfbyte, vector.get(j));
              if (arrayOfByte1 != null) {
                j = i + 99;
                arrayOfByte = arrayOfByte1;
              } else {
                arrayOfByte = arrayOfByte1;
              } 
            } catch (Exception exception) {}
            j++;
            continue;
          } 
          String str = vector.lastElement();
          try {
            str = a(paramArrayOfbyte, arrayOfByte, str);
            JSONObject jSONObject = new JSONObject(str);
            Vector<String> vector1 = br.a(jSONObject.getString("a"), o);
            if (vector1.size() <= 0) {
              if (!bool)
                c = 'ڱ'; 
            } else {
              String str1 = vector1.get(0);
              if (str1.equals("1") || str1.equals("2") || str1.equals("3") || str1.equals("4")) {
                paramStringBuffer1.setLength(0);
                paramStringBuffer1.append(str1);
                vector1.remove(0);
                if (bool) {
                  paramStringBuffer2.append(vector1.get(0));
                  vector1.remove(0);
                } 
                if (str1.equals("4")) {
                  str1 = jSONObject.optString("b");
                  vector1.insertElementAt(jSONObject.optString("c"), 0);
                  vector1.insertElementAt(str1, 0);
                } 
                paramVector.addAll(vector1);
                return 0;
              } 
              if (!bool)
                c = 'گ'; 
              return c;
            } 
            return c;
          } catch (Exception exception) {
            return bool ? 1812 : 1712;
          } 
        } 
      } 
    } catch (Exception exception) {
      exception.printStackTrace();
      return bool ? 1814 : 1714;
    } 
    return 1710;
  }
  
  private static String a(byte[] paramArrayOfbyte1, byte[] paramArrayOfbyte2, String paramString) {
    // Byte code:
    //   0: bipush #16
    //   2: istore #4
    //   4: ldc '6BF891D1C596FD5F4B0CD7AC1A2594AB284C41F5ACA2E7EC390701BD4F9A6256'
    //   6: invokestatic a : (Ljava/lang/String;)[B
    //   9: astore #5
    //   11: new by
    //   14: dup
    //   15: new by
    //   18: dup
    //   19: aload_0
    //   20: invokespecial <init> : ([B)V
    //   23: aload #5
    //   25: invokevirtual a : ([B)[B
    //   28: invokespecial <init> : ([B)V
    //   31: aload_0
    //   32: invokevirtual a : ([B)[B
    //   35: astore #5
    //   37: bipush #32
    //   39: newarray byte
    //   41: astore #6
    //   43: iconst_0
    //   44: istore_3
    //   45: iload_3
    //   46: bipush #16
    //   48: if_icmplt -> 194
    //   51: iload #4
    //   53: istore_3
    //   54: iload_3
    //   55: aload #6
    //   57: arraylength
    //   58: if_icmplt -> 208
    //   61: new by
    //   64: dup
    //   65: new by
    //   68: dup
    //   69: aload #6
    //   71: invokespecial <init> : ([B)V
    //   74: aload #5
    //   76: invokevirtual a : ([B)[B
    //   79: invokespecial <init> : ([B)V
    //   82: aload_2
    //   83: invokevirtual getBytes : ()[B
    //   86: invokestatic c : ([B)[B
    //   89: invokevirtual c : ([B)[B
    //   92: astore_1
    //   93: new java/lang/String
    //   96: dup
    //   97: aload_1
    //   98: invokespecial <init> : ([B)V
    //   101: astore_0
    //   102: new java/lang/String
    //   105: dup
    //   106: aload_1
    //   107: ldc 'ISO-8859-1'
    //   109: invokespecial <init> : ([BLjava/lang/String;)V
    //   112: pop
    //   113: new java/lang/String
    //   116: dup
    //   117: aload_1
    //   118: ldc 'UTF-8'
    //   120: invokespecial <init> : ([BLjava/lang/String;)V
    //   123: pop
    //   124: new java/lang/String
    //   127: dup
    //   128: aload_1
    //   129: ldc 'UTF-16'
    //   131: invokespecial <init> : ([BLjava/lang/String;)V
    //   134: pop
    //   135: new org/json/JSONObject
    //   138: dup
    //   139: aload_0
    //   140: invokespecial <init> : (Ljava/lang/String;)V
    //   143: ldc 'z'
    //   145: aconst_null
    //   146: invokevirtual optString : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   149: astore_2
    //   150: aload_2
    //   151: ifnull -> 260
    //   154: aload_2
    //   155: invokevirtual length : ()I
    //   158: iconst_1
    //   159: if_icmple -> 260
    //   162: aload_2
    //   163: invokevirtual toLowerCase : ()Ljava/lang/String;
    //   166: astore_2
    //   167: aload_2
    //   168: ldc 'utf8'
    //   170: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   173: ifeq -> 230
    //   176: new java/lang/String
    //   179: dup
    //   180: aload_1
    //   181: ldc 'UTF-8'
    //   183: invokespecial <init> : ([BLjava/lang/String;)V
    //   186: astore_1
    //   187: aload_1
    //   188: astore_0
    //   189: aload_0
    //   190: invokevirtual trim : ()Ljava/lang/String;
    //   193: areturn
    //   194: aload #6
    //   196: iload_3
    //   197: aload_1
    //   198: iload_3
    //   199: baload
    //   200: bastore
    //   201: iload_3
    //   202: iconst_1
    //   203: iadd
    //   204: istore_3
    //   205: goto -> 45
    //   208: aload #6
    //   210: iload_3
    //   211: aload_0
    //   212: iload_3
    //   213: bipush #16
    //   215: isub
    //   216: baload
    //   217: aload_0
    //   218: iload_3
    //   219: baload
    //   220: ixor
    //   221: i2b
    //   222: bastore
    //   223: iload_3
    //   224: iconst_1
    //   225: iadd
    //   226: istore_3
    //   227: goto -> 54
    //   230: aload_2
    //   231: ldc 'latin1'
    //   233: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   236: ifeq -> 263
    //   239: new java/lang/String
    //   242: dup
    //   243: aload_1
    //   244: ldc 'ISO-8859-1'
    //   246: invokespecial <init> : ([BLjava/lang/String;)V
    //   249: astore_1
    //   250: aload_1
    //   251: astore_0
    //   252: goto -> 189
    //   255: astore_1
    //   256: aload_1
    //   257: invokevirtual printStackTrace : ()V
    //   260: goto -> 189
    //   263: aload_2
    //   264: ldc 'utf16'
    //   266: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   269: ifeq -> 260
    //   272: new java/lang/String
    //   275: dup
    //   276: aload_1
    //   277: ldc 'UTF-16'
    //   279: invokespecial <init> : ([BLjava/lang/String;)V
    //   282: astore_1
    //   283: aload_1
    //   284: astore_0
    //   285: goto -> 189
    // Exception table:
    //   from	to	target	type
    //   102	150	255	java/lang/Exception
    //   154	187	255	java/lang/Exception
    //   230	250	255	java/lang/Exception
    //   263	283	255	java/lang/Exception
  }
  
  private static byte[] a(al paramal, byte[] paramArrayOfbyte, String paramString) {
    if (paramal != null) {
      String str3 = paramal.u();
      String str4 = paramal.j();
      String str1 = paramal.l();
      String str2 = new String(az.a(paramArrayOfbyte));
      byte[] arrayOfByte = (String.valueOf(str1) + str4 + str3 + str2).toLowerCase().substring(0, 32).getBytes();
      try {
        arrayOfByte = (new by(arrayOfByte)).c(bz.c(paramString.getBytes()));
        if (arrayOfByte != null) {
          byte[] arrayOfByte1 = bw.a(arrayOfByte);
          if (arrayOfByte1 != null)
            return arrayOfByte; 
        } 
      } catch (Exception exception) {}
    } else {
      throw new Exception();
    } 
    return null;
  }
  
  public static byte[] a(bx parambx, String paramString) {
    try {
      return bz.c(bw.c(parambx.b(paramString)).getBytes());
    } catch (Exception exception) {
      throw new Exception();
    } 
  }
  
  public static byte[] b(bx parambx, String paramString) {
    try {
      return bz.c(bw.c(parambx.b(paramString)).getBytes());
    } catch (Exception exception) {
      throw new Exception();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */