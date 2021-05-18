import java.lang.ref.WeakReference;

class dck extends dda {
  private WeakReference<dce> a;
  
  dck(dce paramdce) {
    this.a = new WeakReference<dce>(paramdce);
  }
  
  public void a() {
    dce dce = this.a.get();
    if (dce == null)
      return; 
    dce.a(dce);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dck.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */