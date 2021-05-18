import com.santander.app.investimentos.fundos.presentation.PerfilInvestidorActivity;
import java.util.Comparator;

public class jhl implements Comparator<jdz> {
  public jhl(PerfilInvestidorActivity paramPerfilInvestidorActivity) {}
  
  public int a(jdz paramjdz1, jdz paramjdz2) {
    return paramjdz1.d().compareToIgnoreCase(paramjdz2.d());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jhl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */