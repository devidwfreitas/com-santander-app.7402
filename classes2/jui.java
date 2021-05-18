import android.widget.ExpandableListView;
import com.santander.app.pagamentos.titulos.presentation.ConfirmarPagamentoActivity;

public class jui implements ExpandableListView.OnGroupCollapseListener {
  public jui(ConfirmarPagamentoActivity paramConfirmarPagamentoActivity) {}
  
  public void onGroupCollapse(int paramInt) {
    ConfirmarPagamentoActivity.a(this.a, ConfirmarPagamentoActivity.a(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jui.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */