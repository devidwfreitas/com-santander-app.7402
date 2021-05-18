import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.PagamentoCartoesTransOkAction;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;

public class fjc implements View.OnClickListener {
  public fjc(PagamentoCartoesTransOkAction paramPagamentoCartoesTransOkAction) {}
  
  public void onClick(View paramView) {
    frq.d("Cartoes_PagamentoDaFatura_Comprovante_Acao", "Fechar");
    if (this.a.v.d()) {
      this.a.v.c(false);
      this.a.finishAffinity();
      this.a.a((Context)this.a);
      return;
    } 
    Intent intent = new Intent((Context)this.a, HomeLogadaActivity.class);
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fjc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */