import android.content.Intent;
import android.view.View;
import com.santander.app.investimentos.fundos.presentation.FiltroFundosActivity;

public class jge implements View.OnClickListener {
  public jge(FiltroFundosActivity paramFiltroFundosActivity) {}
  
  public void onClick(View paramView) {
    Intent intent2 = new Intent();
    Intent intent1 = intent2;
    if (FiltroFundosActivity.a(this.a) != null) {
      frq.d("Investimentos_Fundos_Filtrar", FiltroFundosActivity.a(this.a).b().toString());
      intent1 = intent2.putExtra("filtro", FiltroFundosActivity.a(this.a));
    } 
    this.a.setResult(-1, intent1);
    this.a.finish();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jge.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */