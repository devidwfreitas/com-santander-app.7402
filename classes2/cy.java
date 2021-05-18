import android.content.Context;

public class cy {
  public static boolean a(Context paramContext) {
    return c(paramContext);
  }
  
  public static boolean b(Context paramContext) {
    return d(paramContext);
  }
  
  private static boolean c(Context paramContext) {
    // Byte code:
    //   0: getstatic android/os/Build.FINGERPRINT : Ljava/lang/String;
    //   3: ldc 'generic'
    //   5: invokevirtual startsWith : (Ljava/lang/String;)Z
    //   8: ifne -> 197
    //   11: getstatic android/os/Build.FINGERPRINT : Ljava/lang/String;
    //   14: ldc 'unknown'
    //   16: invokevirtual startsWith : (Ljava/lang/String;)Z
    //   19: ifne -> 197
    //   22: getstatic android/os/Build.MODEL : Ljava/lang/String;
    //   25: ldc 'google_sdk'
    //   27: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   30: ifne -> 197
    //   33: getstatic android/os/Build.MODEL : Ljava/lang/String;
    //   36: ldc 'Emulator'
    //   38: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   41: ifne -> 197
    //   44: getstatic android/os/Build.MODEL : Ljava/lang/String;
    //   47: ldc 'Android SDK built for x86'
    //   49: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   52: ifne -> 197
    //   55: getstatic android/os/Build.MANUFACTURER : Ljava/lang/String;
    //   58: ldc 'Genymotion'
    //   60: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   63: ifne -> 197
    //   66: iconst_0
    //   67: istore_1
    //   68: goto -> 191
    //   71: getstatic android/os/Build.BRAND : Ljava/lang/String;
    //   74: ldc 'generic'
    //   76: invokevirtual startsWith : (Ljava/lang/String;)Z
    //   79: ifeq -> 212
    //   82: getstatic android/os/Build.DEVICE : Ljava/lang/String;
    //   85: ldc 'generic'
    //   87: invokevirtual startsWith : (Ljava/lang/String;)Z
    //   90: ifeq -> 212
    //   93: iconst_1
    //   94: istore_2
    //   95: goto -> 202
    //   98: iload_1
    //   99: ldc 'google_sdk'
    //   101: getstatic android/os/Build.PRODUCT : Ljava/lang/String;
    //   104: invokevirtual equals : (Ljava/lang/Object;)Z
    //   107: ior
    //   108: ifeq -> 113
    //   111: iconst_1
    //   112: ireturn
    //   113: getstatic android/os/Build.BRAND : Ljava/lang/String;
    //   116: ldc 'generic'
    //   118: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   121: istore_3
    //   122: iload_3
    //   123: ifeq -> 130
    //   126: iconst_1
    //   127: ireturn
    //   128: astore #4
    //   130: getstatic android/os/Build.MANUFACTURER : Ljava/lang/String;
    //   133: ldc 'unknown'
    //   135: invokevirtual equals : (Ljava/lang/Object;)Z
    //   138: istore_3
    //   139: iload_3
    //   140: ifeq -> 147
    //   143: iconst_1
    //   144: ireturn
    //   145: astore #4
    //   147: getstatic android/os/Build.PRODUCT : Ljava/lang/String;
    //   150: ldc 'sdk'
    //   152: invokevirtual equals : (Ljava/lang/Object;)Z
    //   155: istore_3
    //   156: iload_3
    //   157: ifeq -> 164
    //   160: iconst_1
    //   161: ireturn
    //   162: astore #4
    //   164: ldc 'Android'
    //   166: aload_0
    //   167: ldc 'phone'
    //   169: invokevirtual getSystemService : (Ljava/lang/String;)Ljava/lang/Object;
    //   172: checkcast android/telephony/TelephonyManager
    //   175: invokevirtual getNetworkOperatorName : ()Ljava/lang/String;
    //   178: invokevirtual equals : (Ljava/lang/Object;)Z
    //   181: istore_3
    //   182: iload_3
    //   183: ifeq -> 189
    //   186: iconst_1
    //   187: ireturn
    //   188: astore_0
    //   189: iconst_0
    //   190: ireturn
    //   191: iload_1
    //   192: ifeq -> 71
    //   195: iconst_1
    //   196: ireturn
    //   197: iconst_1
    //   198: istore_1
    //   199: goto -> 191
    //   202: iload_2
    //   203: iload_1
    //   204: ior
    //   205: istore_1
    //   206: iload_1
    //   207: ifeq -> 98
    //   210: iconst_1
    //   211: ireturn
    //   212: iconst_0
    //   213: istore_2
    //   214: goto -> 202
    // Exception table:
    //   from	to	target	type
    //   0	66	128	java/lang/Exception
    //   71	93	128	java/lang/Exception
    //   98	111	128	java/lang/Exception
    //   113	122	128	java/lang/Exception
    //   130	139	145	java/lang/Exception
    //   147	156	162	java/lang/Exception
    //   164	182	188	java/lang/Throwable
  }
  
  private static boolean d(Context paramContext) {
    // Byte code:
    //   0: aconst_null
    //   1: astore #4
    //   3: getstatic android/os/Build.TAGS : Ljava/lang/String;
    //   6: astore_0
    //   7: aload_0
    //   8: ifnull -> 22
    //   11: aload_0
    //   12: ldc 'test-keys'
    //   14: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   17: ifeq -> 22
    //   20: iconst_1
    //   21: ireturn
    //   22: new java/io/File
    //   25: dup
    //   26: ldc '/system/app/Superuser.apk'
    //   28: invokespecial <init> : (Ljava/lang/String;)V
    //   31: invokevirtual exists : ()Z
    //   34: istore_3
    //   35: iload_3
    //   36: ifne -> 20
    //   39: bipush #8
    //   41: anewarray java/lang/String
    //   44: astore #5
    //   46: aload #5
    //   48: iconst_0
    //   49: ldc '/sbin/'
    //   51: aastore
    //   52: aload #5
    //   54: iconst_1
    //   55: ldc '/system/bin/'
    //   57: aastore
    //   58: aload #5
    //   60: iconst_2
    //   61: ldc '/system/xbin/'
    //   63: aastore
    //   64: aload #5
    //   66: iconst_3
    //   67: ldc '/data/local/xbin/'
    //   69: aastore
    //   70: aload #5
    //   72: iconst_4
    //   73: ldc '/data/local/bin/'
    //   75: aastore
    //   76: aload #5
    //   78: iconst_5
    //   79: ldc '/system/sd/xbin/'
    //   81: aastore
    //   82: aload #5
    //   84: bipush #6
    //   86: ldc '/system/bin/failsafe/'
    //   88: aastore
    //   89: aload #5
    //   91: bipush #7
    //   93: ldc '/data/local/'
    //   95: aastore
    //   96: aload #5
    //   98: arraylength
    //   99: istore_2
    //   100: iconst_0
    //   101: istore_1
    //   102: iload_1
    //   103: iload_2
    //   104: if_icmplt -> 171
    //   107: invokestatic getRuntime : ()Ljava/lang/Runtime;
    //   110: ldc 'which ls'
    //   112: invokevirtual exec : (Ljava/lang/String;)Ljava/lang/Process;
    //   115: astore_0
    //   116: new java/io/BufferedReader
    //   119: dup
    //   120: new java/io/InputStreamReader
    //   123: dup
    //   124: aload_0
    //   125: invokevirtual getInputStream : ()Ljava/io/InputStream;
    //   128: invokespecial <init> : (Ljava/io/InputStream;)V
    //   131: invokespecial <init> : (Ljava/io/Reader;)V
    //   134: invokevirtual readLine : ()Ljava/lang/String;
    //   137: astore #6
    //   139: aload #6
    //   141: ifnull -> 390
    //   144: iconst_1
    //   145: istore_1
    //   146: aload_0
    //   147: ifnull -> 154
    //   150: aload_0
    //   151: invokevirtual destroy : ()V
    //   154: iload_1
    //   155: ifeq -> 169
    //   158: aload #5
    //   160: arraylength
    //   161: istore_2
    //   162: iconst_0
    //   163: istore_1
    //   164: iload_1
    //   165: iload_2
    //   166: if_icmplt -> 244
    //   169: iconst_0
    //   170: ireturn
    //   171: new java/io/File
    //   174: dup
    //   175: new java/lang/StringBuilder
    //   178: dup
    //   179: aload #5
    //   181: iload_1
    //   182: aaload
    //   183: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   186: invokespecial <init> : (Ljava/lang/String;)V
    //   189: ldc 'su'
    //   191: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   194: invokevirtual toString : ()Ljava/lang/String;
    //   197: invokespecial <init> : (Ljava/lang/String;)V
    //   200: invokevirtual exists : ()Z
    //   203: ifne -> 20
    //   206: iload_1
    //   207: iconst_1
    //   208: iadd
    //   209: istore_1
    //   210: goto -> 102
    //   213: astore_0
    //   214: aconst_null
    //   215: astore_0
    //   216: aload_0
    //   217: ifnull -> 385
    //   220: aload_0
    //   221: invokevirtual destroy : ()V
    //   224: iconst_0
    //   225: istore_1
    //   226: goto -> 154
    //   229: astore #4
    //   231: aconst_null
    //   232: astore_0
    //   233: aload_0
    //   234: ifnull -> 241
    //   237: aload_0
    //   238: invokevirtual destroy : ()V
    //   241: aload #4
    //   243: athrow
    //   244: aload #5
    //   246: iload_1
    //   247: aaload
    //   248: astore_0
    //   249: invokestatic getRuntime : ()Ljava/lang/Runtime;
    //   252: new java/lang/StringBuilder
    //   255: dup
    //   256: aload_0
    //   257: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   260: invokespecial <init> : (Ljava/lang/String;)V
    //   263: ldc 'which su'
    //   265: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   268: invokevirtual toString : ()Ljava/lang/String;
    //   271: invokevirtual exec : (Ljava/lang/String;)Ljava/lang/Process;
    //   274: astore_0
    //   275: new java/io/BufferedReader
    //   278: dup
    //   279: new java/io/InputStreamReader
    //   282: dup
    //   283: aload_0
    //   284: invokevirtual getInputStream : ()Ljava/io/InputStream;
    //   287: invokespecial <init> : (Ljava/io/InputStream;)V
    //   290: invokespecial <init> : (Ljava/io/Reader;)V
    //   293: invokevirtual readLine : ()Ljava/lang/String;
    //   296: astore #6
    //   298: aload #6
    //   300: ifnull -> 344
    //   303: aload_0
    //   304: ifnull -> 20
    //   307: aload_0
    //   308: invokevirtual destroy : ()V
    //   311: iconst_1
    //   312: ireturn
    //   313: astore_0
    //   314: aconst_null
    //   315: astore_0
    //   316: aload_0
    //   317: ifnull -> 324
    //   320: aload_0
    //   321: invokevirtual destroy : ()V
    //   324: iload_1
    //   325: iconst_1
    //   326: iadd
    //   327: istore_1
    //   328: goto -> 164
    //   331: astore_0
    //   332: aload #4
    //   334: ifnull -> 342
    //   337: aload #4
    //   339: invokevirtual destroy : ()V
    //   342: aload_0
    //   343: athrow
    //   344: aload_0
    //   345: ifnull -> 324
    //   348: aload_0
    //   349: invokevirtual destroy : ()V
    //   352: goto -> 324
    //   355: astore #5
    //   357: aload_0
    //   358: astore #4
    //   360: aload #5
    //   362: astore_0
    //   363: goto -> 332
    //   366: astore #6
    //   368: goto -> 316
    //   371: astore #4
    //   373: goto -> 233
    //   376: astore #6
    //   378: goto -> 216
    //   381: astore_0
    //   382: goto -> 39
    //   385: iconst_0
    //   386: istore_1
    //   387: goto -> 154
    //   390: iconst_0
    //   391: istore_1
    //   392: goto -> 146
    // Exception table:
    //   from	to	target	type
    //   22	35	381	java/lang/Exception
    //   107	116	213	java/lang/Throwable
    //   107	116	229	finally
    //   116	139	376	java/lang/Throwable
    //   116	139	371	finally
    //   249	275	313	java/lang/Throwable
    //   249	275	331	finally
    //   275	298	366	java/lang/Throwable
    //   275	298	355	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */