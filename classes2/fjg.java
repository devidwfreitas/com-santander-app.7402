import android.content.Intent;
import android.view.View;
import android.widget.EditText;
import com.santander.app.PagamentoCartoesConfirmacaoAction;
import com.santander.app.PagamentoFacturaCartoesActivity;

public class fjg implements View.OnClickListener {
  public fjg(PagamentoFacturaCartoesActivity paramPagamentoFacturaCartoesActivity) {}
  
  public void onClick(View paramView) {
    String str1;
    Boolean bool2;
    frq.d("Cartoes_PagamentoDaFatura_Acao", "Continuar");
    Boolean bool1 = Boolean.valueOf(false);
    String str2 = "";
    if (PagamentoFacturaCartoesActivity.a(this.a).h() == null || PagamentoFacturaCartoesActivity.a(this.a).h().length() == 0)
      hav.d(PagamentoFacturaCartoesActivity.b(this.a), "Deveria introduzir uma quantidade"); 
    if (((fpv)PagamentoFacturaCartoesActivity.d(this.a).get(PagamentoFacturaCartoesActivity.c(this.a).getCurrentItem())).c() == 3) {
      EditText editText = (EditText)PagamentoFacturaCartoesActivity.c(this.a).findViewWithTag("page" + PagamentoFacturaCartoesActivity.c(this.a).getCurrentItem()).findViewById(2131759184);
      if (editText != null && editText.getText().length() > 0) {
        if (editText.getText().toString().equals("0,00")) {
          hav.d(PagamentoFacturaCartoesActivity.b(this.a), this.a.getResources().getString(2131297210));
          str2 = "";
          bool2 = bool1;
          str1 = str2;
        } else {
          str1 = bool2.getText().toString().replaceAll("\\.", "").replaceAll("\\,", "") + "+";
          bool2 = Boolean.valueOf(true);
        } 
      } else {
        hav.d(PagamentoFacturaCartoesActivity.b(this.a), "Deveria introduzir uma quantidade");
        str2 = "";
        String str = str1;
        str1 = str2;
      } 
    } else {
      bool2 = Boolean.valueOf(true);
      str1 = str2;
    } 
    if (bool2.booleanValue()) {
      Intent intent;
      if (this.a.b().booleanValue()) {
        hau.a().a(true);
        frq.d("Cartoes_ParcelamentoDeFatura_ParcelamentoFixas_ValorDaPrimeiraParcela", "Agendado");
      } else {
        frq.d("Cartoes_ParcelamentoDeFatura_ParcelamentoFixas_ValorDaPrimeiraParcela", "PagarHoje");
        hau.a().a(false);
      } 
      switch (((fpv)PagamentoFacturaCartoesActivity.d(this.a).get(PagamentoFacturaCartoesActivity.c(this.a).getCurrentItem())).c()) {
        default:
          frq.d("Cartoes_PagamentoDaFatura_DataDoPagamento", this.a.a());
          intent = new Intent(this.a.getApplicationContext(), PagamentoCartoesConfirmacaoAction.class);
          intent.putExtra("conta", PagamentoFacturaCartoesActivity.e(this.a).a());
          intent.putExtra("cartao", PagamentoFacturaCartoesActivity.f(this.a).a());
          intent.putExtra("tipo", ((fpv)PagamentoFacturaCartoesActivity.d(this.a).get(PagamentoFacturaCartoesActivity.c(this.a).getCurrentItem())).c());
          intent.putExtra("cantidad", str1);
          intent.putExtra("fecha", this.a.a());
          intent.putExtra("agendado", this.a.b());
          intent.putExtra("vencimiento", nak.l(PagamentoFacturaCartoesActivity.a(this.a).c()));
          this.a.startActivity(intent);
          return;
        case 0:
          frq.d("Cartoes_PagamentoDaFatura_OpcoesPagamento", "PagarValorTotal");
        case 1:
          frq.d("Cartoes_PagamentoDaFatura_OpcoesPagamento", "PagarValorAtualizado");
        case 2:
          frq.d("Cartoes_PagamentoDaFatura_OpcoesPagamento", "PagarMinimo");
        case 3:
          break;
      } 
    } else {
      return;
    } 
    frq.d("Cartoes_PagamentoDaFatura_OpcoesPagamento", "PagarOutroValor");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fjg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */