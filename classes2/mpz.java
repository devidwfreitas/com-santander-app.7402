import android.app.Activity;
import com.santander.app.contacorrente.domain.Conta;

public class mpz implements mnb, mpy {
  private moo a;
  
  private Activity b;
  
  private mna c;
  
  public mpz(moo parammoo) {
    this.a = parammoo;
    this.b = (Activity)parammoo;
    this.c = new mnc(this.b, this);
  }
  
  public void a(Conta paramConta) {
    this.c.a(paramConta);
  }
  
  public void a(String paramString) {
    this.a.a(paramString);
  }
  
  public void a(mkt parammkt) {
    this.a.a(parammkt);
  }
  
  public void a(mld parammld) {
    if (parammld != null && "CPF".equalsIgnoreCase(parammld.a()) && parammld.c().length() > 11)
      parammld.c(parammld.c().substring(3, parammld.c().length())); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mpz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */