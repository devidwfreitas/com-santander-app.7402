import android.view.View;
import com.santander.app.FazerPagamentoActivity;

public class fhi implements View.OnClickListener {
  public fhi(FazerPagamentoActivity paramFazerPagamentoActivity) {}
  
  public void onClick(View paramView) {
    if (FazerPagamentoActivity.a(this.a).getCurrentItem() > 0)
      FazerPagamentoActivity.a(this.a).setCurrentItem(FazerPagamentoActivity.a(this.a).getCurrentItem() - 1, true); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fhi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */