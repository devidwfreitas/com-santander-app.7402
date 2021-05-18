import android.util.Log;

abstract class hgo implements gkv<hfl> {
  private String a;
  
  hgo(hgh paramhgh, String paramString) {
    this.a = paramString;
  }
  
  public abstract void a();
  
  public void a(hfl paramhfl) {
    try {
      hgh.a(this.e, paramhfl);
      if (paramhfl.a()) {
        a();
        return;
      } 
      b();
      return;
    } catch (Exception exception) {
      Log.e("AcordoInteractor", this.a, exception);
      c();
      return;
    } 
  }
  
  public abstract void b();
  
  public abstract void c();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hgo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */