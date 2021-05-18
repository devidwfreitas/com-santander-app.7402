import com.santander.app.seguros.ui.sinister.activities.SinisterDetailActivity;
import java.util.List;

public class lse implements kxl<List<kuw>> {
  public lse(SinisterDetailActivity paramSinisterDetailActivity) {}
  
  public void a(List<kuw> paramList) {
    if (!this.a.isFinishing() && SinisterDetailActivity.g(this.a, SinisterDetailActivity.f(this.a))) {
      if (paramList == null || paramList.isEmpty()) {
        SinisterDetailActivity.i(this.a).dismiss();
        SinisterDetailActivity.a(this.a, null);
        return;
      } 
      SinisterDetailActivity.b(this.a, paramList);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lse.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */