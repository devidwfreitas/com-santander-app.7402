public final class dho {
  private static dho a;
  
  private final dhj b = new dhj();
  
  private final dhk c = new dhk();
  
  static {
    a(new dho());
  }
  
  public static dhj a() {
    return (c()).b;
  }
  
  protected static void a(dho paramdho) {
    // Byte code:
    //   0: ldc dho
    //   2: monitorenter
    //   3: aload_0
    //   4: putstatic dho.a : Ldho;
    //   7: ldc dho
    //   9: monitorexit
    //   10: return
    //   11: astore_0
    //   12: ldc dho
    //   14: monitorexit
    //   15: aload_0
    //   16: athrow
    // Exception table:
    //   from	to	target	type
    //   3	10	11	finally
    //   12	15	11	finally
  }
  
  public static dhk b() {
    return (c()).c;
  }
  
  private static dho c() {
    // Byte code:
    //   0: ldc dho
    //   2: monitorenter
    //   3: getstatic dho.a : Ldho;
    //   6: astore_0
    //   7: ldc dho
    //   9: monitorexit
    //   10: aload_0
    //   11: areturn
    //   12: astore_0
    //   13: ldc dho
    //   15: monitorexit
    //   16: aload_0
    //   17: athrow
    // Exception table:
    //   from	to	target	type
    //   3	10	12	finally
    //   13	16	12	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dho.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */