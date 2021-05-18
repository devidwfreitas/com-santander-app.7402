import android.os.Looper;

public class cqq {
  private ded a;
  
  private Looper b;
  
  public cqp a() {
    if (this.a == null)
      this.a = (ded)new dtg(); 
    if (this.b == null) {
      if (Looper.myLooper() != null) {
        this.b = Looper.myLooper();
        return new cqp(this.a, null, this.b, null);
      } 
    } else {
      return new cqp(this.a, null, this.b, null);
    } 
    this.b = Looper.getMainLooper();
    return new cqp(this.a, null, this.b, null);
  }
  
  public cqq a(Looper paramLooper) {
    csp.a(paramLooper, "Looper must not be null.");
    this.b = paramLooper;
    return this;
  }
  
  public cqq a(ded paramded) {
    csp.a(paramded, "StatusExceptionMapper must not be null.");
    this.a = paramded;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cqq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */