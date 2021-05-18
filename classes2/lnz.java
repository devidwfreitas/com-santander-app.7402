import android.app.Activity;
import android.app.ActivityOptions;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.seguros.ui.contract.activities.CoverageAssistanceActivity;

class lnz implements View.OnClickListener {
  lnz(lnt paramlnt) {}
  
  public void onClick(View paramView) {
    if (mgt.b(lnt.a(this.a))) {
      frq.d("Seguros_Contratacao_AP_Proposta_Acao", "ConhecaMaisProduto");
    } else if (mgt.d(lnt.a(this.a))) {
      frq.d("Seguros_Contratacao_Vida_Proposta_Acao", "ConhecaMaisProduto");
    } 
    Intent intent = new Intent((Context)lnt.e(this.a), CoverageAssistanceActivity.class);
    lnt.f(this.a);
    intent.putExtra("code-product-key", lnt.f(this.a));
    lnt.e(this.a).startActivity(intent, ActivityOptions.makeSceneTransitionAnimation((Activity)lnt.e(this.a), new android.util.Pair[0]).toBundle());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lnz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */