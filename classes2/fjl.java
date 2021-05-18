import android.view.View;
import com.santander.app.PagamentoFacturaCartoesActivity;

public class fjl implements View.OnClickListener {
  public fjl(PagamentoFacturaCartoesActivity paramPagamentoFacturaCartoesActivity) {}
  
  public void onClick(View paramView) {
    if (PagamentoFacturaCartoesActivity.j(this.a).getCurrentItem() > 0)
      PagamentoFacturaCartoesActivity.j(this.a).setCurrentItem(PagamentoFacturaCartoesActivity.j(this.a).getCurrentItem() - 1, true); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fjl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */