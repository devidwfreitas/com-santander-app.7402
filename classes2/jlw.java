import android.content.Context;
import android.location.Location;

public class jlw implements jlu, jlv {
  private jmm a;
  
  private jmv b;
  
  public jlw(Context paramContext, jmm paramjmm) {
    this.a = paramjmm;
    this.b = new jmv(paramContext, this);
  }
  
  public void a(Location paramLocation) {
    if (this.a != null)
      this.a.a(paramLocation); 
  }
  
  public void a(is paramis) {
    if (paramis != null && this.a != null) {
      jlp jlp = mys.a().<jlp>a(paramis.c().toString(), jlp.class);
      this.a.a(jlp);
    } 
  }
  
  public void a(String paramString1, String paramString2) {
    this.b.a(paramString1, paramString2);
  }
  
  public void b(is paramis) {
    if (paramis != null) {
      this.a.b();
      return;
    } 
    this.a.c();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jlw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */