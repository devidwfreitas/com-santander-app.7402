import java.io.Serializable;
import org.simpleframework.xml.Element;

public class kia extends gnb implements Serializable {
  private boolean a;
  
  @Element(required = false)
  private String agendamento = "";
  
  @Element(required = false)
  private String confirmarRecargar = "";
  
  @Element(required = false)
  private String excluirMantendoProximaRecarga = "";
  
  @Element(required = false)
  private String mensagemAEA = "";
  
  @Element(required = false)
  private String mensagemRetorno = "";
  
  @Element(required = false)
  private String periodoIndeterminado = "";
  
  public void a(boolean paramBoolean) {
    this.a = paramBoolean;
  }
  
  public boolean a() {
    return this.a;
  }
  
  public String b() {
    return this.agendamento;
  }
  
  public String c() {
    return this.excluirMantendoProximaRecarga;
  }
  
  public String d() {
    return this.mensagemRetorno;
  }
  
  public String e() {
    return this.periodoIndeterminado;
  }
  
  public String f() {
    return this.confirmarRecargar;
  }
  
  public String g() {
    return this.mensagemAEA;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kia.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */