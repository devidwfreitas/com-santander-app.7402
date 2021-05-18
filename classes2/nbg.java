import android.app.Activity;
import android.support.v4.app.Fragment;
import android.util.Base64;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

public class nbg implements nbf {
  private ndw a;
  
  private Fragment b;
  
  private mip c;
  
  private List<String> d = new ArrayList<String>();
  
  private String e;
  
  public nbg(ndw paramndw, Fragment paramFragment) {
    this.a = paramndw;
    this.b = paramFragment;
    this.c = (mip)miq.C();
  }
  
  private void a(boolean paramBoolean) {
    (new nec(new nbn(this, paramBoolean), (Activity)this.b.getActivity())).b();
  }
  
  private String b(String paramString) {
    try {
      return (new naf()).c(Base64.decode(paramString.trim().getBytes("UTF-8"), 0));
    } catch (Exception exception) {
      Log.e("DECRYPT_IDENT_CSO", "decriptIdentificacaoCSO", exception);
      return "";
    } 
  }
  
  public void a() {
    (new nec(new nbh(this), (Activity)this.b.getActivity())).a();
  }
  
  public void a(String paramString) {
    String[] arrayOfString = paramString.split("ou");
    String str = mzr.j();
    if (str != null && str.length() == 10) {
      String[] arrayOfString1 = str.split("");
      if (arrayOfString1.length == 11) {
        if (arrayOfString[0].trim().equals(arrayOfString1[1].trim()))
          this.d.add("1"); 
        if (arrayOfString[0].trim().equals(arrayOfString1[3].trim()))
          this.d.add("2"); 
        if (arrayOfString[0].trim().equals(arrayOfString1[5].trim()))
          this.d.add("3"); 
        if (arrayOfString[0].trim().equals(arrayOfString1[7].trim()))
          this.d.add("4"); 
        if (arrayOfString[0].trim().equals(arrayOfString1[9].trim()))
          this.d.add("5"); 
      } 
      return;
    } 
    this.d.add(arrayOfString[0].trim());
  }
  
  public void b() {
    a(true);
    this.a.e();
    this.a.b(new nbl(this));
    int i = mzr.d();
    if (i == 3) {
      this.a.c();
    } else if (i == 4 || i == 5) {
      this.a.d();
    } 
    this.a.a(new nbm(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nbg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */