import com.santander.app.components.model.ListValueString;
import java.util.ArrayList;
import java.util.HashMap;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return ")
public class mlp extends gnb {
  private HashMap<String, ListValueString> a;
  
  private ArrayList<gku> b;
  
  @Element(required = false)
  private String codNSU;
  
  @Element(required = false)
  private String codigoMensagemSPB;
  
  @Element(required = false)
  private String dataContabilDocOnline;
  
  @Element(required = false)
  private String especieConta;
  
  @Element(required = false)
  private String nomeDe;
  
  @Element(required = false)
  private String nomePara;
  
  @Element(required = false)
  private String numeroDocumento;
  
  public String a() {
    return this.codNSU;
  }
  
  public void a(String paramString) {
    this.codNSU = paramString;
  }
  
  public void a(ArrayList<gku> paramArrayList) {
    this.b = paramArrayList;
  }
  
  public void a(HashMap<String, ListValueString> paramHashMap) {
    this.a = paramHashMap;
  }
  
  public String b() {
    return this.nomeDe;
  }
  
  public void b(String paramString) {
    this.nomeDe = paramString;
  }
  
  public String c() {
    return this.nomePara;
  }
  
  public void c(String paramString) {
    this.nomePara = paramString;
  }
  
  public String d() {
    return this.especieConta;
  }
  
  public void d(String paramString) {
    this.especieConta = paramString;
  }
  
  public String e() {
    return this.numeroDocumento;
  }
  
  public void e(String paramString) {
    this.numeroDocumento = paramString;
  }
  
  public String f() {
    return this.dataContabilDocOnline;
  }
  
  public void f(String paramString) {
    this.dataContabilDocOnline = paramString;
  }
  
  public HashMap<String, ListValueString> g() {
    return this.a;
  }
  
  public void g(String paramString) {
    this.codigoMensagemSPB = paramString;
  }
  
  public ArrayList<gku> h() {
    return this.b;
  }
  
  public String i() {
    return this.codigoMensagemSPB;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mlp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */