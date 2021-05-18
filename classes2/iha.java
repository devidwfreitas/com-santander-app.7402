import android.app.Activity;

public class iha implements igy {
  private static final String d = "ERROR_JSON_OBJECT";
  
  private Activity a;
  
  private iia b;
  
  private igz c;
  
  public iha(Activity paramActivity, igz paramigz) {
    this.a = paramActivity;
    this.c = paramigz;
    this.b = new iib();
  }
  
  private void a(igi paramigi) {
    for (igl igl : paramigi.a())
      igl.b(nak.a(nak.a(igl.c().split("T")[0], "yyyy-MM-dd"), "dd/MM/yyyy")); 
  }
  
  public void a() {
    this.b.b(new ihb(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iha.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */