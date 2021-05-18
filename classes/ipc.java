import android.text.TextUtils;
import java.util.List;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "contaCorrente")
public class ipc {
  @Element(required = false)
  private String agencia;
  
  @Element(required = false)
  private String conta;
  
  @ElementList(inline = true, required = false)
  private List<ipf> familias;
  
  @ElementList(inline = true, required = false)
  private List<ipg> fundos;
  
  @Element(required = false)
  private String indiceAgenciaConta;
  
  @Element(required = false)
  private String saldoDisponivel;
  
  @Element(required = false)
  private String saldoDisponivelTotal;
  
  @Element(required = false)
  private String tipoConta;
  
  public String a() {
    return this.agencia;
  }
  
  public void a(String paramString) {
    this.agencia = paramString;
  }
  
  public void a(List<ipg> paramList) {
    this.fundos = paramList;
  }
  
  public String b() {
    return this.conta;
  }
  
  public void b(String paramString) {
    this.conta = paramString;
  }
  
  public void b(List<ipf> paramList) {
    this.familias = paramList;
  }
  
  public String c() {
    return this.saldoDisponivelTotal;
  }
  
  public void c(String paramString) {
    this.saldoDisponivelTotal = paramString;
  }
  
  public String d() {
    return this.saldoDisponivel;
  }
  
  public void d(String paramString) {
    this.saldoDisponivel = paramString;
  }
  
  public List<ipg> e() {
    return this.fundos;
  }
  
  public void e(String paramString) {
    this.tipoConta = paramString;
  }
  
  public List<ipf> f() {
    return this.familias;
  }
  
  public void f(String paramString) {
    this.indiceAgenciaConta = paramString;
  }
  
  public String g() {
    return this.tipoConta;
  }
  
  public String h() {
    return this.indiceAgenciaConta;
  }
  
  public boolean i() {
    return (!TextUtils.isEmpty(this.saldoDisponivel) && !TextUtils.isEmpty(this.saldoDisponivelTotal));
  }
  
  public String toString() {
    return "ContaCorrenteModel [agencia=" + this.agencia + ", conta=" + this.conta + ", saldoDisponivelTotal=" + this.saldoDisponivelTotal + ", saldoDisponivel=" + this.saldoDisponivel + ", fundos=" + this.fundos + ", familias=" + this.familias + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ipc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */