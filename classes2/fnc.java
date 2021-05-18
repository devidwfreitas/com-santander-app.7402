import android.view.View;
import com.santander.app.Rendafixa_posicaoconsolidadaActivity;

public class fnc implements View.OnClickListener {
  public fnc(Rendafixa_posicaoconsolidadaActivity paramRendafixa_posicaoconsolidadaActivity, ftn paramftn, int paramInt) {}
  
  public void onClick(View paramView) {
    frq.d("Investimentos_RendaFixa_Resgate_Acao", "ResgateInvestimento");
    frq.d("Investimentos_RendaFixa_Resgate", ((ftk)this.a.a().get(this.b)).b());
    Rendafixa_posicaoconsolidadaActivity.i(this.c).b();
    this.c.openRendafixaResgate(paramView);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fnc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */