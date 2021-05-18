import android.content.Intent;
import android.view.View;
import com.santander.app.investimentos.fundos.presentation.ListagemContasFundosActivity;
import java.io.Serializable;

public class jgz implements View.OnClickListener {
  public jgz(ListagemContasFundosActivity paramListagemContasFundosActivity) {}
  
  public void onClick(View paramView) {
    jdx jdx = (jdx)paramView.getTag();
    Intent intent = (new Intent()).putExtra("conta_fundo_selecionada", (Serializable)jdx);
    this.a.setResult(-1, intent);
    this.a.finish();
    this.a.overridePendingTransition(2131034132, 2131034134);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jgz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */