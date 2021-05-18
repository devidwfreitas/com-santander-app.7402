import android.view.View;
import com.santander.app.ParcelamentoFacturaActivity;

public class fju implements View.OnClickListener {
  public fju(ParcelamentoFacturaActivity paramParcelamentoFacturaActivity) {}
  
  public void onClick(View paramView) {
    if (ParcelamentoFacturaActivity.c(this.a).getCurrentItem() < ParcelamentoFacturaActivity.c(this.a).getAdapter().getCount() - 1)
      ParcelamentoFacturaActivity.c(this.a).setCurrentItem(ParcelamentoFacturaActivity.c(this.a).getCurrentItem() + 1, true); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fju.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */