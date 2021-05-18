import com.santander.app.seguros.ui.sinister.activities.SinisterDetailActivity;
import java.util.List;

public class lro implements kxl<List<kvs>> {
  public lro(SinisterDetailActivity paramSinisterDetailActivity) {}
  
  public void a(List<kvs> paramList) {
    if (this.a.isFinishing())
      return; 
    if (paramList == null) {
      this.a.b.setState(aor.EMPTY);
      this.a.c = null;
      return;
    } 
    this.a.c = paramList;
    SinisterDetailActivity.a(this.a);
    SinisterDetailActivity.b(this.a);
    this.a.b.setState(aor.CONTENT);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lro.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */