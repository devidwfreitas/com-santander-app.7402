import android.util.Log;

public class dsm {
  public static String a = "Volley";
  
  public static boolean b = Log.isLoggable(a, 2);
  
  public static void a(String paramString, Object... paramVarArgs) {
    if (b)
      Log.v(a, d(paramString, paramVarArgs)); 
  }
  
  public static void a(Throwable paramThrowable, String paramString, Object... paramVarArgs) {
    Log.e(a, d(paramString, paramVarArgs), paramThrowable);
  }
  
  public static void b(String paramString, Object... paramVarArgs) {
    Log.d(a, d(paramString, paramVarArgs));
  }
  
  public static void c(String paramString, Object... paramVarArgs) {
    Log.e(a, d(paramString, paramVarArgs));
  }
  
  private static String d(String paramString, Object... paramVarArgs) {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull -> 135
    //   4: new java/lang/Throwable
    //   7: dup
    //   8: invokespecial <init> : ()V
    //   11: invokevirtual fillInStackTrace : ()Ljava/lang/Throwable;
    //   14: invokevirtual getStackTrace : ()[Ljava/lang/StackTraceElement;
    //   17: astore_1
    //   18: iconst_2
    //   19: istore_2
    //   20: iload_2
    //   21: aload_1
    //   22: arraylength
    //   23: if_icmpge -> 154
    //   26: aload_1
    //   27: iload_2
    //   28: aaload
    //   29: invokevirtual getClass : ()Ljava/lang/Class;
    //   32: ldc dsm
    //   34: invokevirtual equals : (Ljava/lang/Object;)Z
    //   37: ifne -> 147
    //   40: aload_1
    //   41: iload_2
    //   42: aaload
    //   43: invokevirtual getClassName : ()Ljava/lang/String;
    //   46: astore_3
    //   47: aload_3
    //   48: aload_3
    //   49: bipush #46
    //   51: invokevirtual lastIndexOf : (I)I
    //   54: iconst_1
    //   55: iadd
    //   56: invokevirtual substring : (I)Ljava/lang/String;
    //   59: astore_3
    //   60: aload_3
    //   61: aload_3
    //   62: bipush #36
    //   64: invokevirtual lastIndexOf : (I)I
    //   67: iconst_1
    //   68: iadd
    //   69: invokevirtual substring : (I)Ljava/lang/String;
    //   72: astore_3
    //   73: new java/lang/StringBuilder
    //   76: dup
    //   77: invokespecial <init> : ()V
    //   80: aload_3
    //   81: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   84: ldc '.'
    //   86: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   89: aload_1
    //   90: iload_2
    //   91: aaload
    //   92: invokevirtual getMethodName : ()Ljava/lang/String;
    //   95: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   98: invokevirtual toString : ()Ljava/lang/String;
    //   101: astore_1
    //   102: getstatic java/util/Locale.US : Ljava/util/Locale;
    //   105: ldc '[%d] %s: %s'
    //   107: iconst_3
    //   108: anewarray java/lang/Object
    //   111: dup
    //   112: iconst_0
    //   113: invokestatic currentThread : ()Ljava/lang/Thread;
    //   116: invokevirtual getId : ()J
    //   119: invokestatic valueOf : (J)Ljava/lang/Long;
    //   122: aastore
    //   123: dup
    //   124: iconst_1
    //   125: aload_1
    //   126: aastore
    //   127: dup
    //   128: iconst_2
    //   129: aload_0
    //   130: aastore
    //   131: invokestatic format : (Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   134: areturn
    //   135: getstatic java/util/Locale.US : Ljava/util/Locale;
    //   138: aload_0
    //   139: aload_1
    //   140: invokestatic format : (Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   143: astore_0
    //   144: goto -> 4
    //   147: iload_2
    //   148: iconst_1
    //   149: iadd
    //   150: istore_2
    //   151: goto -> 20
    //   154: ldc '<unknown>'
    //   156: astore_1
    //   157: goto -> 102
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dsm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */