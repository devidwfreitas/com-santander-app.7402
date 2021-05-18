import android.view.View;
import com.santander.app.PagamentoFacturaCartoesActivity;

public class fjm implements View.OnClickListener {
  public fjm(PagamentoFacturaCartoesActivity paramPagamentoFacturaCartoesActivity) {}
  
  public void onClick(View paramView) {
    if (PagamentoFacturaCartoesActivity.j(this.a).getCurrentItem() < PagamentoFacturaCartoesActivity.j(this.a).getAdapter().getCount() - 1)
      PagamentoFacturaCartoesActivity.j(this.a).setCurrentItem(PagamentoFacturaCartoesActivity.j(this.a).getCurrentItem() + 1, true); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fjm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */