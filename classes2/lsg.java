import com.santander.app.seguros.ui.sinister.activities.SinisterDetailActivity;
import java.util.Collections;
import java.util.List;

public class lsg implements kxl<List<kwj>> {
  public lsg(SinisterDetailActivity paramSinisterDetailActivity, List paramList) {}
  
  public void a(List<kwj> paramList) {
    if (!this.b.isFinishing() && SinisterDetailActivity.g(this.b, SinisterDetailActivity.f(this.b))) {
      if (paramList != null && paramList.size() > 1)
        Collections.sort(paramList, new lsh(this)); 
      paramList = SinisterDetailActivity.a(this.b, this.a, paramList);
      SinisterDetailActivity.i(this.b).dismiss();
      SinisterDetailActivity.a(this.b, paramList);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lsg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */