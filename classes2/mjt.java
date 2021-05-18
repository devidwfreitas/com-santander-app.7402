import android.view.View;
import com.santander.app.sugestaocdb.presentation.SugestaoCDB;

public class mjt implements View.OnClickListener {
  public mjt(SugestaoCDB paramSugestaoCDB) {}
  
  public void onClick(View paramView) {
    frq.d("Investimentos_RendaFixa_Aplicar_Sugestao_Valor", SugestaoCDB.a(this.a).getText().toString());
    frq.d("Investimentos_RendaFixa_Aplicar_Sugestao_Acao", "Continuar");
    SugestaoCDB.b(this.a).c(SugestaoCDB.a(this.a).getText().toString());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mjt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */