import android.text.TextUtils;
import java.io.Serializable;
import org.simpleframework.xml.Element;

public class mrp implements Serializable {
  @Element(required = false)
  private String agencia;
  
  @Element(required = false)
  private String banco;
  
  @Element(required = false)
  private String codigoBanco;
  
  @Element(required = false)
  private String conta;
  
  @Element(required = false)
  private String cpfCnpj;
  
  @Element(required = false)
  private String nome;
  
  @Element(required = false)
  private String proximoDiaUtil;
  
  @Element(required = false)
  private String valor;
  
  public mrp a(String paramString) {
    this.agencia = paramString;
    return this;
  }
  
  public mrp a(mro parammro) {
    if (parammro == null) {
      this.codigoBanco = "";
      this.banco = "";
      return this;
    } 
    this.codigoBanco = parammro.a();
    this.banco = String.format("%s - %s", new Object[] { parammro.a(), parammro.b() });
    return this;
  }
  
  public boolean a() {
    return (!TextUtils.isEmpty(this.codigoBanco) && (this.codigoBanco.equals("33") || this.codigoBanco.equals("033") || this.codigoBanco.equals("0033")));
  }
  
  public String b() {
    return (this.codigoBanco != null) ? this.codigoBanco : "";
  }
  
  public mrp b(String paramString) {
    this.conta = paramString;
    return this;
  }
  
  public String c() {
    return (this.banco != null) ? this.banco : "";
  }
  
  public mrp c(String paramString) {
    this.cpfCnpj = paramString;
    return this;
  }
  
  public String d() {
    return (this.agencia != null) ? this.agencia : "";
  }
  
  public mrp d(String paramString) {
    this.nome = paramString;
    return this;
  }
  
  public String e() {
    return (this.conta != null) ? this.conta : "";
  }
  
  public mrp e(String paramString) {
    this.valor = paramString;
    return this;
  }
  
  public String f() {
    return (this.cpfCnpj != null) ? this.cpfCnpj : "";
  }
  
  public String g() {
    return (this.nome != null) ? this.nome : "";
  }
  
  public String h() {
    return (this.proximoDiaUtil != null) ? this.proximoDiaUtil : "";
  }
  
  public String i() {
    return (this.valor != null) ? this.valor : "";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mrp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */