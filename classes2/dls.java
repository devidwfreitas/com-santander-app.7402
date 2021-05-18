final class dls implements Thread.UncaughtExceptionHandler {
  private final String b;
  
  public dls(dlq paramdlq, String paramString) {
    csp.a(paramString);
    this.b = paramString;
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield a : Ldlq;
    //   6: invokevirtual u : ()Ldkw;
    //   9: invokevirtual x : ()Ldky;
    //   12: aload_0
    //   13: getfield b : Ljava/lang/String;
    //   16: aload_2
    //   17: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   20: aload_0
    //   21: monitorexit
    //   22: return
    //   23: astore_1
    //   24: aload_0
    //   25: monitorexit
    //   26: aload_1
    //   27: athrow
    // Exception table:
    //   from	to	target	type
    //   2	20	23	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dls.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */