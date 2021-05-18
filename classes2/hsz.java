import android.support.annotation.NonNull;

abstract class hsz implements hqj {
  private hso a;
  
  private htb b;
  
  hsz(@NonNull hso paramhso) {
    this.a = paramhso;
  }
  
  public void c() {
    this.b = new hta(this);
    a();
  }
  
  public void d() {
    if (this.b != null && !this.b.a()) {
      this.b.run();
      return;
    } 
    this.a.a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hsz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */