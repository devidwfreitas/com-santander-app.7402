import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.faturas.activity.DetalheFaturaActivity;
import com.santander.app.faturas.activity.FaturasActivity;

public class iek implements View.OnClickListener {
  public iek(FaturasActivity paramFaturasActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Cartoes_Fatura_ResumoDaFatura_Acao", "LancamentoDaFatura");
    Intent intent = new Intent((Context)this.a, DetalheFaturaActivity.class);
    intent.putExtra("isFaturaAberta", false);
    intent.putExtra("EXTRACARTAO", FaturasActivity.a(this.a));
    intent.putExtra("EXTRADADOS", FaturasActivity.d(this.a));
    intent.putExtra("ISADICIONAL", FaturasActivity.c(this.a));
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iek.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */