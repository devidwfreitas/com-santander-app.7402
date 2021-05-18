import com.santander.app.faturas.activity.FaturasActivity;
import java.util.List;

public class ied extends gmz {
  public ied(FaturasActivity paramFaturasActivity, List paramList) {}
  
  public void a(gmw paramgmw) {
    frq.d("Cartoes_Fatura_Acao", "SelecionarCartoes");
    FaturasActivity.a(this.b, paramgmw.e());
    FaturasActivity.a(this.b, this.a.indexOf(paramgmw));
    FaturasActivity.a(this.b, FaturasActivity.f(this.b).u().equals("BE"));
    (new iep(this.b, null)).execute((Object[])new Void[0]);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ied.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */