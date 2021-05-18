import java.io.Serializable;
import org.simpleframework.xml.Element;

public class kgi extends gnb implements Serializable {
  @Element(required = false)
  private String agendamento = "";
  
  @Element(required = false)
  private String confirmarRecargar = "";
  
  @Element(required = false)
  private String excluirMantendoProximaRecarga = "";
  
  @Element(required = false)
  private String periodoIndeterminado = "";
  
  public String a() {
    return this.agendamento;
  }
  
  public String b() {
    return this.excluirMantendoProximaRecarga;
  }
  
  public String c() {
    return this.periodoIndeterminado;
  }
  
  public String d() {
    return this.confirmarRecargar;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kgi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */