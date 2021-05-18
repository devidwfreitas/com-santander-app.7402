import android.location.Location;

class djf extends dup {
  private final ddn<dtv> a;
  
  djf(ddn<dtv> paramddn) {
    this.a = paramddn;
  }
  
  public void a() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield a : Lddn;
    //   6: invokevirtual b : ()V
    //   9: aload_0
    //   10: monitorexit
    //   11: return
    //   12: astore_1
    //   13: aload_0
    //   14: monitorexit
    //   15: aload_1
    //   16: athrow
    // Exception table:
    //   from	to	target	type
    //   2	9	12	finally
  }
  
  public void a(Location paramLocation) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield a : Lddn;
    //   6: new djg
    //   9: dup
    //   10: aload_0
    //   11: aload_1
    //   12: invokespecial <init> : (Ldjf;Landroid/location/Location;)V
    //   15: invokevirtual a : (Lddq;)V
    //   18: aload_0
    //   19: monitorexit
    //   20: return
    //   21: astore_1
    //   22: aload_0
    //   23: monitorexit
    //   24: aload_1
    //   25: athrow
    // Exception table:
    //   from	to	target	type
    //   2	18	21	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\djf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */