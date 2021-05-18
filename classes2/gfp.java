import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.carteiradiaria.presentation.ListagemCarteiraDiariaActivity;
import com.santander.app.carteiradiaria.presentation.ListagemCarteiraInvestimentoActivity;
import com.santander.app.carteiradiaria.presentation.ListagemContasPagarReceberActivity;

public class gfp implements View.OnClickListener {
  public gfp(ListagemCarteiraDiariaActivity paramListagemCarteiraDiariaActivity) {}
  
  public void onClick(View paramView) {
    gev gev = (gev)paramView.getTag();
    gew gew = new gew();
    gew.b(naq.c(ListagemCarteiraDiariaActivity.b(this.a).getAgencia(), ListagemCarteiraDiariaActivity.b(this.a).getCuenta()));
    gew.e(ListagemCarteiraDiariaActivity.c(this.a));
    gew.d(gev.b());
    gew.c(gev.h());
    gew.a(gev.b());
    ger ger = ListagemCarteiraDiariaActivity.d(this.a).a(gev.c());
    ListagemCarteiraDiariaActivity.a(this.a, gev.c());
    switch (gfq.a[gev.c().ordinal()]) {
      default:
        return;
      case 1:
      case 2:
      case 3:
      case 4:
        intent = new Intent(new Intent((Context)this.a, ListagemCarteiraInvestimentoActivity.class));
        intent.putExtra("tipo_carteira_enum", gev.c());
        intent.putExtra("carteira_diaria_model", ger);
        intent.putExtra("fragment_topo_model", gew);
        this.a.startActivity(intent);
        return;
      case 5:
        break;
    } 
    Intent intent = new Intent(new Intent((Context)this.a, ListagemContasPagarReceberActivity.class));
    intent.putExtra("tipo_carteira_enum", gev.c());
    intent.putExtra("carteira_diaria_model", ger);
    intent.putExtra("fragment_topo_model", gew);
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gfp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */