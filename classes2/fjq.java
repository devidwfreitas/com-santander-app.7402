import android.view.View;
import com.santander.app.ParcelamentoFacturaActivity;

public class fjq implements View.OnClickListener {
  public fjq(ParcelamentoFacturaActivity paramParcelamentoFacturaActivity) {}
  
  public void onClick(View paramView) {
    if (ParcelamentoFacturaActivity.g(this.a).getCurrentItem() < ParcelamentoFacturaActivity.g(this.a).getAdapter().getCount() - 1)
      ParcelamentoFacturaActivity.g(this.a).setCurrentItem(ParcelamentoFacturaActivity.g(this.a).getCurrentItem() + 1, true); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fjq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */