import com.santander.app.contacorrente.domain.LancamentoContract;
import java.io.Serializable;

public class fve implements LancamentoContract, Serializable {
  private static final long a = 1L;
  
  private String b;
  
  private String c;
  
  private String d;
  
  private String e;
  
  private Double f;
  
  public static long a() {
    return 1L;
  }
  
  public String getData() {
    return this.e;
  }
  
  public String getDocto() {
    return this.c;
  }
  
  public String getHistorico() {
    return this.b;
  }
  
  public String getSaldo() {
    return (this.f != null) ? String.format("%.2f", new Object[] { this.f }) : "";
  }
  
  public String getValor() {
    return this.d;
  }
  
  public void setData(String paramString) {
    this.e = paramString;
  }
  
  public void setDocto(String paramString) {
    this.c = paramString;
  }
  
  public void setHistorico(String paramString) {
    this.b = paramString;
  }
  
  public void setSaldo(double paramDouble) {
    this.f = Double.valueOf(paramDouble);
  }
  
  public void setValor(String paramString) {
    this.d = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fve.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */