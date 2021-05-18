package com.google.android.gms.dynamite;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import csp;
import cwx;
import cxo;
import cxt;
import cxu;
import cxv;
import cxw;
import cxx;
import cxy;
import cxz;
import cya;
import cyb;
import cyc;
import cyd;
import cye;
import cyf;
import cyi;
import cyj;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;

public final class DynamiteModule {
  public static final cyc a;
  
  public static final cyc b;
  
  public static final cyc c;
  
  public static final cyc d;
  
  public static final cyc e;
  
  private static Boolean f;
  
  private static cyf g;
  
  private static cyi h;
  
  private static final HashMap<String, byte[]> i = (HashMap)new HashMap<String, byte>();
  
  private static String j;
  
  private static final cyd k = (cyd)new cxt();
  
  private final Context l;
  
  static {
    a = (cyc)new cxu();
    b = (cyc)new cxv();
    c = (cyc)new cxw();
    d = (cyc)new cxx();
    e = (cyc)new cxy();
  }
  
  private DynamiteModule(Context paramContext) {
    this.l = (Context)csp.a(paramContext);
  }
  
  public static int a(Context paramContext, String paramString) {
    try {
      ClassLoader classLoader = paramContext.getApplicationContext().getClassLoader();
      String str1 = String.valueOf("com.google.android.gms.dynamite.descriptors.");
      String str2 = String.valueOf("ModuleDescriptor");
      Class<?> clazz = classLoader.loadClass((new StringBuilder(String.valueOf(str1).length() + 1 + String.valueOf(paramString).length() + String.valueOf(str2).length())).append(str1).append(paramString).append(".").append(str2).toString());
      Field field1 = clazz.getDeclaredField("MODULE_ID");
      Field field2 = clazz.getDeclaredField("MODULE_VERSION");
      if (!field1.get(null).equals(paramString)) {
        String str = String.valueOf(field1.get(null));
        Log.e("DynamiteModule", (new StringBuilder(String.valueOf(str).length() + 51 + String.valueOf(paramString).length())).append("Module descriptor id '").append(str).append("' didn't match expected id '").append(paramString).append("'").toString());
        return 0;
      } 
      return field2.getInt(null);
    } catch (ClassNotFoundException classNotFoundException) {
      Log.w("DynamiteModule", (new StringBuilder(String.valueOf(paramString).length() + 45)).append("Local module descriptor class for ").append(paramString).append(" not found.").toString());
    } catch (Exception exception) {
      String str = String.valueOf(exception.getMessage());
    } 
    return 0;
  }
  
  public static int a(Context paramContext, String paramString, boolean paramBoolean) {
    // Byte code:
    //   0: ldc com/google/android/gms/dynamite/DynamiteModule
    //   2: monitorenter
    //   3: getstatic com/google/android/gms/dynamite/DynamiteModule.f : Ljava/lang/Boolean;
    //   6: astore #6
    //   8: aload #6
    //   10: astore #5
    //   12: aload #6
    //   14: ifnonnull -> 83
    //   17: aload_0
    //   18: invokevirtual getApplicationContext : ()Landroid/content/Context;
    //   21: invokevirtual getClassLoader : ()Ljava/lang/ClassLoader;
    //   24: ldc com/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader
    //   26: invokevirtual getName : ()Ljava/lang/String;
    //   29: invokevirtual loadClass : (Ljava/lang/String;)Ljava/lang/Class;
    //   32: astore #6
    //   34: aload #6
    //   36: ldc 'sClassLoader'
    //   38: invokevirtual getDeclaredField : (Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   41: astore #5
    //   43: aload #6
    //   45: monitorenter
    //   46: aload #5
    //   48: aconst_null
    //   49: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   52: checkcast java/lang/ClassLoader
    //   55: astore #7
    //   57: aload #7
    //   59: ifnull -> 116
    //   62: aload #7
    //   64: invokestatic getSystemClassLoader : ()Ljava/lang/ClassLoader;
    //   67: if_acmpne -> 103
    //   70: getstatic java/lang/Boolean.FALSE : Ljava/lang/Boolean;
    //   73: astore #5
    //   75: aload #6
    //   77: monitorexit
    //   78: aload #5
    //   80: putstatic com/google/android/gms/dynamite/DynamiteModule.f : Ljava/lang/Boolean;
    //   83: ldc com/google/android/gms/dynamite/DynamiteModule
    //   85: monitorexit
    //   86: aload #5
    //   88: invokevirtual booleanValue : ()Z
    //   91: ifeq -> 346
    //   94: aload_0
    //   95: aload_1
    //   96: iload_2
    //   97: invokestatic d : (Landroid/content/Context;Ljava/lang/String;Z)I
    //   100: istore_3
    //   101: iload_3
    //   102: ireturn
    //   103: aload #7
    //   105: invokestatic a : (Ljava/lang/ClassLoader;)V
    //   108: getstatic java/lang/Boolean.TRUE : Ljava/lang/Boolean;
    //   111: astore #5
    //   113: goto -> 75
    //   116: ldc 'com.google.android.gms'
    //   118: aload_0
    //   119: invokevirtual getApplicationContext : ()Landroid/content/Context;
    //   122: invokevirtual getPackageName : ()Ljava/lang/String;
    //   125: invokevirtual equals : (Ljava/lang/Object;)Z
    //   128: ifeq -> 148
    //   131: aload #5
    //   133: aconst_null
    //   134: invokestatic getSystemClassLoader : ()Ljava/lang/ClassLoader;
    //   137: invokevirtual set : (Ljava/lang/Object;Ljava/lang/Object;)V
    //   140: getstatic java/lang/Boolean.FALSE : Ljava/lang/Boolean;
    //   143: astore #5
    //   145: goto -> 75
    //   148: aload_0
    //   149: aload_1
    //   150: iload_2
    //   151: invokestatic d : (Landroid/content/Context;Ljava/lang/String;Z)I
    //   154: istore_3
    //   155: getstatic com/google/android/gms/dynamite/DynamiteModule.j : Ljava/lang/String;
    //   158: ifnull -> 174
    //   161: getstatic com/google/android/gms/dynamite/DynamiteModule.j : Ljava/lang/String;
    //   164: invokevirtual isEmpty : ()Z
    //   167: istore #4
    //   169: iload #4
    //   171: ifeq -> 188
    //   174: aload #6
    //   176: monitorexit
    //   177: ldc com/google/android/gms/dynamite/DynamiteModule
    //   179: monitorexit
    //   180: iload_3
    //   181: ireturn
    //   182: astore_0
    //   183: ldc com/google/android/gms/dynamite/DynamiteModule
    //   185: monitorexit
    //   186: aload_0
    //   187: athrow
    //   188: invokestatic b : ()Ljava/lang/ClassLoader;
    //   191: astore #7
    //   193: aload #7
    //   195: invokestatic a : (Ljava/lang/ClassLoader;)V
    //   198: aload #5
    //   200: aconst_null
    //   201: aload #7
    //   203: invokevirtual set : (Ljava/lang/Object;Ljava/lang/Object;)V
    //   206: getstatic java/lang/Boolean.TRUE : Ljava/lang/Boolean;
    //   209: putstatic com/google/android/gms/dynamite/DynamiteModule.f : Ljava/lang/Boolean;
    //   212: aload #6
    //   214: monitorexit
    //   215: ldc com/google/android/gms/dynamite/DynamiteModule
    //   217: monitorexit
    //   218: iload_3
    //   219: ireturn
    //   220: astore #7
    //   222: aload #5
    //   224: aconst_null
    //   225: invokestatic getSystemClassLoader : ()Ljava/lang/ClassLoader;
    //   228: invokevirtual set : (Ljava/lang/Object;Ljava/lang/Object;)V
    //   231: getstatic java/lang/Boolean.FALSE : Ljava/lang/Boolean;
    //   234: astore #5
    //   236: goto -> 75
    //   239: astore #5
    //   241: aload #6
    //   243: monitorexit
    //   244: aload #5
    //   246: athrow
    //   247: astore #5
    //   249: aload #5
    //   251: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   254: astore #5
    //   256: ldc 'DynamiteModule'
    //   258: new java/lang/StringBuilder
    //   261: dup
    //   262: aload #5
    //   264: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   267: invokevirtual length : ()I
    //   270: bipush #30
    //   272: iadd
    //   273: invokespecial <init> : (I)V
    //   276: ldc 'Failed to load module via V2: '
    //   278: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   281: aload #5
    //   283: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   286: invokevirtual toString : ()Ljava/lang/String;
    //   289: invokestatic w : (Ljava/lang/String;Ljava/lang/String;)I
    //   292: pop
    //   293: getstatic java/lang/Boolean.FALSE : Ljava/lang/Boolean;
    //   296: astore #5
    //   298: goto -> 78
    //   301: astore_0
    //   302: aload_0
    //   303: invokevirtual getMessage : ()Ljava/lang/String;
    //   306: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   309: astore_0
    //   310: aload_0
    //   311: invokevirtual length : ()I
    //   314: ifeq -> 333
    //   317: ldc 'Failed to retrieve remote module version: '
    //   319: aload_0
    //   320: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   323: astore_0
    //   324: ldc 'DynamiteModule'
    //   326: aload_0
    //   327: invokestatic w : (Ljava/lang/String;Ljava/lang/String;)I
    //   330: pop
    //   331: iconst_0
    //   332: ireturn
    //   333: new java/lang/String
    //   336: dup
    //   337: ldc 'Failed to retrieve remote module version: '
    //   339: invokespecial <init> : (Ljava/lang/String;)V
    //   342: astore_0
    //   343: goto -> 324
    //   346: aload_0
    //   347: aload_1
    //   348: iload_2
    //   349: invokestatic c : (Landroid/content/Context;Ljava/lang/String;Z)I
    //   352: ireturn
    //   353: astore #5
    //   355: goto -> 108
    //   358: astore #5
    //   360: goto -> 249
    //   363: astore #5
    //   365: goto -> 249
    // Exception table:
    //   from	to	target	type
    //   3	8	182	finally
    //   17	46	247	java/lang/ClassNotFoundException
    //   17	46	363	java/lang/IllegalAccessException
    //   17	46	358	java/lang/NoSuchFieldException
    //   17	46	182	finally
    //   46	57	239	finally
    //   62	75	239	finally
    //   75	78	239	finally
    //   78	83	182	finally
    //   83	86	182	finally
    //   94	101	301	cyb
    //   103	108	353	cyb
    //   103	108	239	finally
    //   108	113	239	finally
    //   116	145	239	finally
    //   148	169	220	cyb
    //   148	169	239	finally
    //   174	177	239	finally
    //   177	180	182	finally
    //   183	186	182	finally
    //   188	212	220	cyb
    //   188	212	239	finally
    //   212	215	239	finally
    //   215	218	182	finally
    //   222	236	239	finally
    //   241	244	239	finally
    //   244	247	247	java/lang/ClassNotFoundException
    //   244	247	363	java/lang/IllegalAccessException
    //   244	247	358	java/lang/NoSuchFieldException
    //   244	247	182	finally
    //   249	298	182	finally
  }
  
  private static Context a(Context paramContext, String paramString, byte[] paramArrayOfbyte, cyi paramcyi) {
    String str;
    try {
      return (Context)cxo.a(paramcyi.a(cxo.a(paramContext), paramString, paramArrayOfbyte));
    } catch (Exception exception) {
      str = String.valueOf(exception.toString());
      if (str.length() != 0) {
        str = "Failed to load DynamiteLoader: ".concat(str);
        Log.e("DynamiteModule", str);
        return null;
      } 
    } 
    Log.e("DynamiteModule", str);
    return null;
  }
  
  public static DynamiteModule a(Context paramContext, cyc paramcyc, String paramString) {
    cye cye = paramcyc.a(paramContext, paramString, k);
    int i = cye.a;
    int j = cye.b;
    Log.i("DynamiteModule", (new StringBuilder(String.valueOf(paramString).length() + 68 + String.valueOf(paramString).length())).append("Considering local module ").append(paramString).append(":").append(i).append(" and remote module ").append(paramString).append(":").append(j).toString());
    if (cye.c == 0 || (cye.c == -1 && cye.a == 0) || (cye.c == 1 && cye.b == 0)) {
      i = cye.a;
      j = cye.b;
      throw new cyb((new StringBuilder(91)).append("No acceptable module found. Local version is ").append(i).append(" and remote version is ").append(j).append(".").toString(), null);
    } 
    if (cye.c == -1)
      return c(paramContext, paramString); 
    if (cye.c == 1)
      try {
        return a(paramContext, paramString, cye.b);
      } catch (cyb cyb) {
        String str = String.valueOf(cyb.getMessage());
        if (str.length() != 0) {
          str = "Failed to load remote module: ".concat(str);
        } else {
          str = new String("Failed to load remote module: ");
        } 
        Log.w("DynamiteModule", str);
        if (cye.a != 0 && (paramcyc.a(paramContext, paramString, (cyd)new cxz(cye.a))).c == -1)
          return c(paramContext, paramString); 
        throw new cyb("Remote load failed. No local fallback found.", cyb, null);
      }  
    i = cye.c;
    throw new cyb((new StringBuilder(47)).append("VersionPolicy returned invalid code:").append(i).toString(), null);
  }
  
  private static DynamiteModule a(Context paramContext, String paramString, int paramInt) {
    // Byte code:
    //   0: ldc com/google/android/gms/dynamite/DynamiteModule
    //   2: monitorenter
    //   3: getstatic com/google/android/gms/dynamite/DynamiteModule.f : Ljava/lang/Boolean;
    //   6: astore_3
    //   7: ldc com/google/android/gms/dynamite/DynamiteModule
    //   9: monitorexit
    //   10: aload_3
    //   11: ifnonnull -> 32
    //   14: new cyb
    //   17: dup
    //   18: ldc_w 'Failed to determine which loading route to use.'
    //   21: aconst_null
    //   22: invokespecial <init> : (Ljava/lang/String;Lcxt;)V
    //   25: athrow
    //   26: astore_0
    //   27: ldc com/google/android/gms/dynamite/DynamiteModule
    //   29: monitorexit
    //   30: aload_0
    //   31: athrow
    //   32: aload_3
    //   33: invokevirtual booleanValue : ()Z
    //   36: ifeq -> 46
    //   39: aload_0
    //   40: aload_1
    //   41: iload_2
    //   42: invokestatic c : (Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/dynamite/DynamiteModule;
    //   45: areturn
    //   46: aload_0
    //   47: aload_1
    //   48: iload_2
    //   49: invokestatic b : (Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/dynamite/DynamiteModule;
    //   52: areturn
    // Exception table:
    //   from	to	target	type
    //   3	10	26	finally
    //   27	30	26	finally
  }
  
  private static cyf a(Context paramContext) {
    // Byte code:
    //   0: ldc com/google/android/gms/dynamite/DynamiteModule
    //   2: monitorenter
    //   3: getstatic com/google/android/gms/dynamite/DynamiteModule.g : Lcyf;
    //   6: ifnull -> 18
    //   9: getstatic com/google/android/gms/dynamite/DynamiteModule.g : Lcyf;
    //   12: astore_0
    //   13: ldc com/google/android/gms/dynamite/DynamiteModule
    //   15: monitorexit
    //   16: aload_0
    //   17: areturn
    //   18: invokestatic b : ()Lcwn;
    //   21: aload_0
    //   22: invokevirtual a : (Landroid/content/Context;)I
    //   25: ifeq -> 33
    //   28: ldc com/google/android/gms/dynamite/DynamiteModule
    //   30: monitorexit
    //   31: aconst_null
    //   32: areturn
    //   33: aload_0
    //   34: ldc 'com.google.android.gms'
    //   36: iconst_3
    //   37: invokevirtual createPackageContext : (Ljava/lang/String;I)Landroid/content/Context;
    //   40: invokevirtual getClassLoader : ()Ljava/lang/ClassLoader;
    //   43: ldc_w 'com.google.android.gms.chimera.container.DynamiteLoaderImpl'
    //   46: invokevirtual loadClass : (Ljava/lang/String;)Ljava/lang/Class;
    //   49: invokevirtual newInstance : ()Ljava/lang/Object;
    //   52: checkcast android/os/IBinder
    //   55: invokestatic a : (Landroid/os/IBinder;)Lcyf;
    //   58: astore_0
    //   59: aload_0
    //   60: ifnull -> 109
    //   63: aload_0
    //   64: putstatic com/google/android/gms/dynamite/DynamiteModule.g : Lcyf;
    //   67: ldc com/google/android/gms/dynamite/DynamiteModule
    //   69: monitorexit
    //   70: aload_0
    //   71: areturn
    //   72: astore_0
    //   73: ldc com/google/android/gms/dynamite/DynamiteModule
    //   75: monitorexit
    //   76: aload_0
    //   77: athrow
    //   78: astore_0
    //   79: aload_0
    //   80: invokevirtual getMessage : ()Ljava/lang/String;
    //   83: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   86: astore_0
    //   87: aload_0
    //   88: invokevirtual length : ()I
    //   91: ifeq -> 114
    //   94: ldc_w 'Failed to load IDynamiteLoader from GmsCore: '
    //   97: aload_0
    //   98: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   101: astore_0
    //   102: ldc 'DynamiteModule'
    //   104: aload_0
    //   105: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   108: pop
    //   109: ldc com/google/android/gms/dynamite/DynamiteModule
    //   111: monitorexit
    //   112: aconst_null
    //   113: areturn
    //   114: new java/lang/String
    //   117: dup
    //   118: ldc_w 'Failed to load IDynamiteLoader from GmsCore: '
    //   121: invokespecial <init> : (Ljava/lang/String;)V
    //   124: astore_0
    //   125: goto -> 102
    // Exception table:
    //   from	to	target	type
    //   3	16	72	finally
    //   18	31	72	finally
    //   33	59	78	java/lang/Exception
    //   33	59	72	finally
    //   63	67	78	java/lang/Exception
    //   63	67	72	finally
    //   67	70	72	finally
    //   73	76	72	finally
    //   79	102	72	finally
    //   102	109	72	finally
    //   109	112	72	finally
    //   114	125	72	finally
  }
  
  private static void a(ClassLoader paramClassLoader) {
    try {
      h = cyj.a(paramClassLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]));
      return;
    } catch (ClassNotFoundException classNotFoundException) {
    
    } catch (IllegalAccessException illegalAccessException) {
    
    } catch (InstantiationException instantiationException) {
    
    } catch (InvocationTargetException invocationTargetException) {
    
    } catch (NoSuchMethodException noSuchMethodException) {}
    throw new cyb("Failed to instantiate dynamite loader", noSuchMethodException, null);
  }
  
  public static int b(Context paramContext, String paramString) {
    return a(paramContext, paramString, false);
  }
  
  public static Cursor b(Context paramContext, String paramString, boolean paramBoolean) {
    if (paramBoolean) {
      String str3 = "api_force_staging";
      String str4 = String.valueOf("content://com.google.android.gms.chimera/");
      uri = Uri.parse((new StringBuilder(String.valueOf(str4).length() + 1 + String.valueOf(str3).length() + String.valueOf(paramString).length())).append(str4).append(str3).append("/").append(paramString).toString());
      return paramContext.getContentResolver().query(uri, null, null, null, null);
    } 
    String str1 = "api";
    String str2 = String.valueOf("content://com.google.android.gms.chimera/");
    Uri uri = Uri.parse((new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(str1).length() + String.valueOf(uri).length())).append(str2).append(str1).append("/").append((String)uri).toString());
    return paramContext.getContentResolver().query(uri, null, null, null, null);
  }
  
  private static DynamiteModule b(Context paramContext, String paramString, int paramInt) {
    Log.i("DynamiteModule", (new StringBuilder(String.valueOf(paramString).length() + 51)).append("Selected remote version of ").append(paramString).append(", version >= ").append(paramInt).toString());
    cyf cyf1 = a(paramContext);
    if (cyf1 == null)
      throw new cyb("Failed to create IDynamiteLoader.", null); 
    try {
      cwx cwx = cyf1.a(cxo.a(paramContext), paramString, paramInt);
      if (cxo.a(cwx) == null)
        throw new cyb("Failed to load remote module.", null); 
    } catch (RemoteException remoteException) {
      throw new cyb("Failed to load remote module.", remoteException, null);
    } 
    return new DynamiteModule((Context)cxo.a((cwx)remoteException));
  }
  
  private static ClassLoader b() {
    return (ClassLoader)new cya(j, ClassLoader.getSystemClassLoader());
  }
  
  private static int c(Context paramContext, String paramString, boolean paramBoolean) {
    String str;
    cyf cyf1 = a(paramContext);
    if (cyf1 == null)
      return 0; 
    try {
      return cyf1.a(cxo.a(paramContext), paramString, paramBoolean);
    } catch (RemoteException remoteException) {
      str = String.valueOf(remoteException.getMessage());
      if (str.length() != 0) {
        str = "Failed to retrieve remote module version: ".concat(str);
        Log.w("DynamiteModule", str);
        return 0;
      } 
    } 
    Log.w("DynamiteModule", str);
    return 0;
  }
  
  private static DynamiteModule c(Context paramContext, String paramString) {
    paramString = String.valueOf(paramString);
    if (paramString.length() != 0) {
      paramString = "Selected local version of ".concat(paramString);
      Log.i("DynamiteModule", paramString);
      return new DynamiteModule(paramContext.getApplicationContext());
    } 
    paramString = new String("Selected local version of ");
    Log.i("DynamiteModule", paramString);
    return new DynamiteModule(paramContext.getApplicationContext());
  }
  
  private static DynamiteModule c(Context paramContext, String paramString, int paramInt) {
    // Byte code:
    //   0: ldc 'DynamiteModule'
    //   2: new java/lang/StringBuilder
    //   5: dup
    //   6: aload_1
    //   7: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   10: invokevirtual length : ()I
    //   13: bipush #51
    //   15: iadd
    //   16: invokespecial <init> : (I)V
    //   19: ldc_w 'Selected remote version of '
    //   22: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   25: aload_1
    //   26: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   29: ldc_w ', version >= '
    //   32: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: iload_2
    //   36: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   39: invokevirtual toString : ()Ljava/lang/String;
    //   42: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   45: pop
    //   46: ldc com/google/android/gms/dynamite/DynamiteModule
    //   48: monitorenter
    //   49: getstatic com/google/android/gms/dynamite/DynamiteModule.i : Ljava/util/HashMap;
    //   52: new java/lang/StringBuilder
    //   55: dup
    //   56: aload_1
    //   57: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   60: invokevirtual length : ()I
    //   63: bipush #12
    //   65: iadd
    //   66: invokespecial <init> : (I)V
    //   69: aload_1
    //   70: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: ldc_w ':'
    //   76: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   79: iload_2
    //   80: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   83: invokevirtual toString : ()Ljava/lang/String;
    //   86: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   89: checkcast [B
    //   92: astore_3
    //   93: getstatic com/google/android/gms/dynamite/DynamiteModule.h : Lcyi;
    //   96: astore #4
    //   98: ldc com/google/android/gms/dynamite/DynamiteModule
    //   100: monitorexit
    //   101: aload_3
    //   102: ifnonnull -> 123
    //   105: new cyb
    //   108: dup
    //   109: ldc_w 'Module implementation could not be found.'
    //   112: aconst_null
    //   113: invokespecial <init> : (Ljava/lang/String;Lcxt;)V
    //   116: athrow
    //   117: astore_0
    //   118: ldc com/google/android/gms/dynamite/DynamiteModule
    //   120: monitorexit
    //   121: aload_0
    //   122: athrow
    //   123: aload #4
    //   125: ifnonnull -> 140
    //   128: new cyb
    //   131: dup
    //   132: ldc_w 'DynamiteLoaderV2 was not cached.'
    //   135: aconst_null
    //   136: invokespecial <init> : (Ljava/lang/String;Lcxt;)V
    //   139: athrow
    //   140: aload_0
    //   141: invokevirtual getApplicationContext : ()Landroid/content/Context;
    //   144: aload_1
    //   145: aload_3
    //   146: aload #4
    //   148: invokestatic a : (Landroid/content/Context;Ljava/lang/String;[BLcyi;)Landroid/content/Context;
    //   151: astore_0
    //   152: aload_0
    //   153: ifnonnull -> 168
    //   156: new cyb
    //   159: dup
    //   160: ldc_w 'Failed to get module context'
    //   163: aconst_null
    //   164: invokespecial <init> : (Ljava/lang/String;Lcxt;)V
    //   167: athrow
    //   168: new com/google/android/gms/dynamite/DynamiteModule
    //   171: dup
    //   172: aload_0
    //   173: invokespecial <init> : (Landroid/content/Context;)V
    //   176: areturn
    // Exception table:
    //   from	to	target	type
    //   49	101	117	finally
    //   118	121	117	finally
  }
  
  private static int d(Context paramContext, String paramString, boolean paramBoolean) {
    // Byte code:
    //   0: aconst_null
    //   1: astore #5
    //   3: aconst_null
    //   4: astore #4
    //   6: aload_0
    //   7: aload_1
    //   8: iload_2
    //   9: invokestatic b : (Landroid/content/Context;Ljava/lang/String;Z)Landroid/database/Cursor;
    //   12: astore_0
    //   13: aload_0
    //   14: ifnull -> 32
    //   17: aload_0
    //   18: astore #4
    //   20: aload_0
    //   21: astore #5
    //   23: aload_0
    //   24: invokeinterface moveToFirst : ()Z
    //   29: ifne -> 98
    //   32: aload_0
    //   33: astore #4
    //   35: aload_0
    //   36: astore #5
    //   38: ldc 'DynamiteModule'
    //   40: ldc_w 'Failed to retrieve remote module version.'
    //   43: invokestatic w : (Ljava/lang/String;Ljava/lang/String;)I
    //   46: pop
    //   47: aload_0
    //   48: astore #4
    //   50: aload_0
    //   51: astore #5
    //   53: new cyb
    //   56: dup
    //   57: ldc_w 'Failed to connect to dynamite module ContentResolver.'
    //   60: aconst_null
    //   61: invokespecial <init> : (Ljava/lang/String;Lcxt;)V
    //   64: athrow
    //   65: astore_0
    //   66: aload #4
    //   68: astore #5
    //   70: aload_0
    //   71: instanceof cyb
    //   74: ifeq -> 218
    //   77: aload #4
    //   79: astore #5
    //   81: aload_0
    //   82: athrow
    //   83: astore_0
    //   84: aload #5
    //   86: ifnull -> 96
    //   89: aload #5
    //   91: invokeinterface close : ()V
    //   96: aload_0
    //   97: athrow
    //   98: aload_0
    //   99: astore #4
    //   101: aload_0
    //   102: astore #5
    //   104: aload_0
    //   105: iconst_0
    //   106: invokeinterface getInt : (I)I
    //   111: istore_3
    //   112: iload_3
    //   113: ifle -> 194
    //   116: aload_0
    //   117: astore #4
    //   119: aload_0
    //   120: astore #5
    //   122: ldc com/google/android/gms/dynamite/DynamiteModule
    //   124: monitorenter
    //   125: aload_0
    //   126: iconst_3
    //   127: invokeinterface getString : (I)Ljava/lang/String;
    //   132: iconst_0
    //   133: invokestatic decode : (Ljava/lang/String;I)[B
    //   136: astore #4
    //   138: getstatic com/google/android/gms/dynamite/DynamiteModule.i : Ljava/util/HashMap;
    //   141: new java/lang/StringBuilder
    //   144: dup
    //   145: aload_1
    //   146: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   149: invokevirtual length : ()I
    //   152: bipush #12
    //   154: iadd
    //   155: invokespecial <init> : (I)V
    //   158: aload_1
    //   159: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: ldc_w ':'
    //   165: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   168: iload_3
    //   169: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   172: invokevirtual toString : ()Ljava/lang/String;
    //   175: aload #4
    //   177: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   180: pop
    //   181: aload_0
    //   182: iconst_2
    //   183: invokeinterface getString : (I)Ljava/lang/String;
    //   188: putstatic com/google/android/gms/dynamite/DynamiteModule.j : Ljava/lang/String;
    //   191: ldc com/google/android/gms/dynamite/DynamiteModule
    //   193: monitorexit
    //   194: aload_0
    //   195: ifnull -> 204
    //   198: aload_0
    //   199: invokeinterface close : ()V
    //   204: iload_3
    //   205: ireturn
    //   206: astore_1
    //   207: ldc com/google/android/gms/dynamite/DynamiteModule
    //   209: monitorexit
    //   210: aload_0
    //   211: astore #4
    //   213: aload_0
    //   214: astore #5
    //   216: aload_1
    //   217: athrow
    //   218: aload #4
    //   220: astore #5
    //   222: new cyb
    //   225: dup
    //   226: ldc_w 'V2 version check failed'
    //   229: aload_0
    //   230: aconst_null
    //   231: invokespecial <init> : (Ljava/lang/String;Ljava/lang/Throwable;Lcxt;)V
    //   234: athrow
    // Exception table:
    //   from	to	target	type
    //   6	13	65	java/lang/Exception
    //   6	13	83	finally
    //   23	32	65	java/lang/Exception
    //   23	32	83	finally
    //   38	47	65	java/lang/Exception
    //   38	47	83	finally
    //   53	65	65	java/lang/Exception
    //   53	65	83	finally
    //   70	77	83	finally
    //   81	83	83	finally
    //   104	112	65	java/lang/Exception
    //   104	112	83	finally
    //   122	125	65	java/lang/Exception
    //   122	125	83	finally
    //   125	194	206	finally
    //   207	210	206	finally
    //   216	218	65	java/lang/Exception
    //   216	218	83	finally
    //   222	235	83	finally
  }
  
  public Context a() {
    return this.l;
  }
  
  public IBinder a(String paramString) {
    try {
      return (IBinder)this.l.getClassLoader().loadClass(paramString).newInstance();
    } catch (ClassNotFoundException classNotFoundException) {
    
    } catch (InstantiationException instantiationException) {
    
    } catch (IllegalAccessException illegalAccessException) {}
    paramString = String.valueOf(paramString);
    if (paramString.length() != 0) {
      paramString = "Failed to instantiate module class: ".concat(paramString);
      throw new cyb(paramString, illegalAccessException, null);
    } 
    paramString = new String("Failed to instantiate module class: ");
    throw new cyb(paramString, illegalAccessException, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\dynamite\DynamiteModule.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */