import android.util.Log;
import com.santander.app.investimentos.fundos.presentation.ListagemFundosActivity;

public class jhf implements gsw {
  public jhf(ListagemFundosActivity paramListagemFundosActivity) {}
  
  public void a() {
    Log.v("buttonTab1", "selected");
    ListagemFundosActivity.b(this.a);
  }
  
  public void b() {
    Log.v("buttonTab2", "selected");
    if (ListagemFundosActivity.c(this.a) != null) {
      ListagemFundosActivity.a(this.a, ListagemFundosActivity.c(this.a).c());
      return;
    } 
    ListagemFundosActivity.a(this.a, null);
  }
  
  public String c() {
    return "Meus fundos";
  }
  
  public String d() {
    return "Todos os fundos";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jhf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */