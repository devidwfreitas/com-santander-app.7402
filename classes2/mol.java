import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.transferencia.presentation.CadastroFavorecidoActivity;
import com.santander.app.transferencia.presentation.ListagemFavorecidosActivity;
import java.io.Serializable;

public class mol implements View.OnClickListener {
  public mol(ListagemFavorecidosActivity paramListagemFavorecidosActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Transferencia_Acao", "AdicionarFavorecido");
    Intent intent = new Intent((Context)this.a, CadastroFavorecidoActivity.class);
    intent.putExtra("contaSelecionada", (Serializable)ListagemFavorecidosActivity.a(this.a));
    this.a.startActivityForResult(intent, 9898);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mol.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */