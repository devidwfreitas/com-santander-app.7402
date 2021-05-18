import android.support.annotation.NonNull;

class dbg implements egr<Void> {
  private dbg(dbe paramdbe) {}
  
  public void a(@NonNull egv<Void> paramegv) {
    dbe.a(this.a).lock();
    try {
      boolean bool = dbe.b(this.a);
      if (!bool)
        return; 
    } finally {
      dbe.a(this.a).unlock();
    } 
    if (dbe.g(this.a) != null) {
      dbe.d(this.a).putAll(dbe.g(this.a));
      dbe.a(this.a, dbe.f(this.a));
    } 
    if (dbe.h(this.a) == null) {
      dbe.i(this.a);
      dbe.j(this.a);
    } else {
      dbe.a(this.a, false);
      dbe.k(this.a).a(dbe.h(this.a));
    } 
    dbe.l(this.a).signalAll();
    dbe.a(this.a).unlock();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dbg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */