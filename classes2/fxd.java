import android.view.View;
import com.santander.app.boasvindas.BoasVindasActivity;

public class fxd implements View.OnClickListener {
  public fxd(BoasVindasActivity paramBoasVindasActivity) {}
  
  public void onClick(View paramView) {
    BoasVindasActivity.a(this.a);
    if (BoasVindasActivity.b(this.a) == fxf.a()) {
      BoasVindasActivity.c(this.a);
      return;
    } 
    fwy.b(BoasVindasActivity.b(this.a));
    BoasVindasActivity.d(this.a);
    if (BoasVindasActivity.b(this.a) == fxf.a() - 1) {
      BoasVindasActivity.e(this.a);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fxd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */