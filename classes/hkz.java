import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class hkz extends goe implements Serializable {
  @Element(required = false)
  private String codigoContratoUG;
  
  @Element(required = false)
  private String codigoEvento;
  
  @Element(required = false)
  private String codigoNIO;
  
  @Element(required = false)
  private String codigoOficina;
  
  @Element(required = false)
  private String dataOperacao;
  
  @Element(required = false)
  private String dataSolicitacao;
  
  @Element(required = false)
  private String horaSolicitacao;
  
  private hkz() {
    miq miq = miq.C();
    setConnUuid(miq.i());
    setTokenSessao(miq.j());
    setTokenTransacao(miq.f().m());
  }
  
  public hkz(hxl paramhxl) {
    this();
    paramhxl = paramhxl;
    this.codigoContratoUG = ((hlb)paramhxl).codigoContrato;
    this.codigoEvento = ((hlb)paramhxl).codigoEvento;
    this.codigoNIO = ((hlb)paramhxl).codigoNIO;
    this.codigoOficina = ((hlb)paramhxl).codigoOficina;
    this.dataOperacao = ((hlb)paramhxl).dataOperacao;
    Date date = Calendar.getInstance().getTime();
    this.dataSolicitacao = hyx.c("dd.MM.yyyy").format(date);
    this.horaSolicitacao = hyx.c("HH:mm:ss").format(date);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hkz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */