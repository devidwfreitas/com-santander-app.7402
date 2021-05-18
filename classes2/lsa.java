import android.text.TextUtils;
import com.santander.app.seguros.ui.sinister.activities.SinisterDetailActivity;

public class lsa implements kxl<kvr> {
  public lsa(SinisterDetailActivity paramSinisterDetailActivity) {}
  
  public void a(kvr paramkvr) {
    if (this.a.isFinishing())
      return; 
    SinisterDetailActivity.a(this.a, paramkvr);
    String str = mgk.a(SinisterDetailActivity.c(this.a).h());
    if (!TextUtils.isEmpty(str))
      SinisterDetailActivity.c(this.a).h(str); 
    SinisterDetailActivity.a(this.a, Integer.parseInt(SinisterDetailActivity.c(this.a).D()) - 1);
    SinisterDetailActivity.d(this.a);
    SinisterDetailActivity.b(this.a, SinisterDetailActivity.e(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lsa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */