import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationResult;

class djc extends dum {
  private final ddn<dtu> a;
  
  djc(ddn<dtu> paramddn) {
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
  
  public void a(LocationAvailability paramLocationAvailability) {
    this.a.a(new dje(this, paramLocationAvailability));
  }
  
  public void a(LocationResult paramLocationResult) {
    this.a.a(new djd(this, paramLocationResult));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\djc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */