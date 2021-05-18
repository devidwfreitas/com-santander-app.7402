import android.support.annotation.NonNull;

class dbh implements egr<Void> {
  private ddz b;
  
  dbh(dbe paramdbe, ddz paramddz) {
    this.b = paramddz;
  }
  
  void a() {
    this.b.a();
  }
  
  public void a(@NonNull egv<Void> paramegv) {
    dbe.a(this.a).lock();
    try {
      if (!dbe.b(this.a)) {
        this.b.a();
        return;
      } 
    } finally {
      dbe.a(this.a).unlock();
    } 
    if (this.a.d()) {
      dbe.d(this.a).putAll(dbe.g(this.a));
      if (dbe.f(this.a) == null) {
        dbe.i(this.a);
        dbe.j(this.a);
        dbe.l(this.a).signalAll();
      } 
    } 
    this.b.a();
    dbe.a(this.a).unlock();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dbh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */