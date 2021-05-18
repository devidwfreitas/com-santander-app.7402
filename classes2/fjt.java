import android.view.View;
import com.santander.app.ParcelamentoFacturaActivity;

public class fjt implements View.OnClickListener {
  public fjt(ParcelamentoFacturaActivity paramParcelamentoFacturaActivity) {}
  
  public void onClick(View paramView) {
    if (ParcelamentoFacturaActivity.c(this.a).getCurrentItem() > 0)
      ParcelamentoFacturaActivity.c(this.a).setCurrentItem(ParcelamentoFacturaActivity.c(this.a).getCurrentItem() - 1, true); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fjt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */