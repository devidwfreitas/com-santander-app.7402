import android.content.Intent;
import android.view.View;
import com.santander.app.CadastramentoFacturaActivity;
import com.santander.app.CadastramentoValidacionActivity;

public class fgq implements View.OnClickListener {
  public fgq(CadastramentoFacturaActivity paramCadastramentoFacturaActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Cartoes_CadastrarFaturaPorEmail_Acao", "Confirmar");
    Intent intent = new Intent(this.a.getApplicationContext(), CadastramentoValidacionActivity.class);
    intent.putExtra("strSeqEnd", CadastramentoFacturaActivity.a(this.a).getCurrentItem());
    intent.putExtra("numCartao", CadastramentoFacturaActivity.c(this.a).indexOf(CadastramentoFacturaActivity.b(this.a)));
    intent.putExtra("cartao", CadastramentoFacturaActivity.b(this.a));
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fgq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */