import android.widget.ExpandableListView;
import com.santander.app.pagamentos.titulos.presentation.ConfirmarPagamentoActivity;

public class juh implements ExpandableListView.OnGroupExpandListener {
  private int b = -1;
  
  public juh(ConfirmarPagamentoActivity paramConfirmarPagamentoActivity) {}
  
  public void onGroupExpand(int paramInt) {
    if (paramInt != this.b)
      ConfirmarPagamentoActivity.a(this.a).collapseGroup(this.b); 
    this.b = paramInt;
    ConfirmarPagamentoActivity.a(this.a, ConfirmarPagamentoActivity.a(this.a), paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\juh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */