import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.carteiradiaria.presentation.ListagemCarteiraInvestimentoActivity;
import com.santander.app.carteiradiaria.presentation.ListagemCarteiraInvestimentoDetalhesActivity;

public class gfs implements View.OnClickListener {
  public gfs(ListagemCarteiraInvestimentoActivity paramListagemCarteiraInvestimentoActivity) {}
  
  public void onClick(View paramView) {
    gev gev = (gev)paramView.getTag();
    Intent intent = new Intent(new Intent((Context)this.a, ListagemCarteiraInvestimentoDetalhesActivity.class));
    intent.putExtra("tipo_carteira_enum", ListagemCarteiraInvestimentoActivity.a(this.a));
    intent.putExtra("carteira_investimento_detalhes", gev);
    intent.putExtra("fragment_topo_model", ListagemCarteiraInvestimentoActivity.b(this.a));
    ListagemCarteiraInvestimentoActivity.b(this.a).a(gev.b());
    ListagemCarteiraInvestimentoActivity.b(this.a).d(gev.b());
    ListagemCarteiraInvestimentoActivity.a(this.a, ListagemCarteiraInvestimentoActivity.a(this.a), gev);
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gfs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */