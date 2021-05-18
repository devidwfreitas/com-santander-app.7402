import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.seguros.ui.contract.activities.CoverageAssistanceActivity;

class los implements View.OnClickListener {
  los(loi paramloi) {}
  
  public void onClick(View paramView) {
    if (mgt.b(loi.d(this.a))) {
      frq.d("Seguros_Contratacao_AP_Proposta_Possibilidades_Acao", "ConhecaMaisProduto");
    } else if (mgt.d(loi.d(this.a))) {
      frq.d("Seguros_Contratacao_Vida_Proposta_Possibilidades_Acao", "ConhecaMaisProduto");
    } 
    Intent intent = new Intent((Context)loi.b(this.a), CoverageAssistanceActivity.class);
    intent.putExtra("code-product-key", loi.i(this.a));
    loi.b(this.a).startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\los.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */