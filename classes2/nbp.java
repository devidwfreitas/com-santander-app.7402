import android.support.v4.app.Fragment;
import android.util.Log;

public class nbp implements nbo {
  private static final String e = "ERROR_GEN_OTP";
  
  private ndw a;
  
  private Fragment b;
  
  private mip c;
  
  private nbb d;
  
  public nbp(ndw paramndw, Fragment paramFragment) {
    this.a = paramndw;
    this.b = paramFragment;
    this.c = (mip)miq.C();
    this.d = new nbb();
  }
  
  public void a() {
    String str = this.c.f().y().c().a();
    if (str != null)
      (new neh(new nbq(this, str))).a(); 
  }
  
  public void b() {
    String str2 = this.c.f().y().c().a();
    String str1 = "";
    if (str2 != null) {
      try {
        String str;
        StringBuffer stringBuffer = alb.a(str2);
        if (!stringBuffer.toString().contains("ErrD")) {
          str = stringBuffer.toString();
          str1 = str;
        } else {
          frq.d("ErroGenerateOTPHub", str.toString());
        } 
      } catch (Exception exception) {
        Log.e("ERROR_GEN_OTP", exception.getMessage());
      } 
      this.c.f().y().c().b(str1);
      this.a.h();
      this.a.f();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nbp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */