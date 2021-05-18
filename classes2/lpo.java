import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.seguros.ui.contract.activities.CoverageAssistanceActivity;

class lpo implements View.OnClickListener {
  lpo(loz paramloz) {}
  
  public void onClick(View paramView) {
    if (mgt.d(loz.a(this.a).i())) {
      frq.d("Seguros_Contratacao_Vida_Resumo_Acao", "SetaCoberturasContratadas");
    } else if (mgt.b(loz.a(this.a).i())) {
      frq.d("Seguros_Contratacao_AP_Resumo_Acao", "SetaCoberturasContratadas");
    } 
    Intent intent = new Intent((Context)loz.a(this.a), CoverageAssistanceActivity.class);
    intent.putExtra("code-product-key", loz.a(this.a).c().g().getCode());
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lpo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */