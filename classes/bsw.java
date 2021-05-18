import android.content.Context;

class bsw {
  private static volatile bso a;
  
  private static bso b(Context paramContext) {
    // Byte code:
    //   0: ldc bsw
    //   2: monitorenter
    //   3: aload_0
    //   4: ifnull -> 18
    //   7: aload_0
    //   8: ifnonnull -> 25
    //   11: aconst_null
    //   12: astore_0
    //   13: ldc bsw
    //   15: monitorexit
    //   16: aload_0
    //   17: areturn
    //   18: invokestatic h : ()Landroid/content/Context;
    //   21: astore_0
    //   22: goto -> 7
    //   25: getstatic bsw.a : Lbso;
    //   28: ifnonnull -> 45
    //   31: new bso
    //   34: dup
    //   35: aload_0
    //   36: invokestatic l : ()Ljava/lang/String;
    //   39: invokespecial <init> : (Landroid/content/Context;Ljava/lang/String;)V
    //   42: putstatic bsw.a : Lbso;
    //   45: getstatic bsw.a : Lbso;
    //   48: astore_0
    //   49: goto -> 13
    //   52: astore_0
    //   53: ldc bsw
    //   55: monitorexit
    //   56: aload_0
    //   57: athrow
    // Exception table:
    //   from	to	target	type
    //   18	22	52	finally
    //   25	45	52	finally
    //   45	49	52	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bsw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */