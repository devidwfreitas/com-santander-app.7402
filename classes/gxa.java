import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "campanha")
public class gxa implements Serializable {
  @Element(required = false)
  private String abordagem;
  
  @Element(required = false)
  private String conteudo;
  
  @Element(required = false)
  private String descricao;
  
  @Element(required = false)
  private String descricaoVds;
  
  @Element(required = false)
  private String dthrIni;
  
  @Element(required = false)
  private String idCampanha;
  
  @Element(required = false)
  private String nome;
  
  @Element(required = false)
  private boolean porquinho;
  
  @Element(required = false)
  private String tipo;
  
  @Element(required = false)
  private String visualizacao;
  
  public String a() {
    return this.dthrIni;
  }
  
  public void a(String paramString) {
    this.dthrIni = paramString;
  }
  
  public void a(boolean paramBoolean) {
    this.porquinho = paramBoolean;
  }
  
  public void b(String paramString) {
    this.descricaoVds = paramString;
  }
  
  public boolean b() {
    return this.porquinho;
  }
  
  public String c() {
    return this.descricaoVds;
  }
  
  public void c(String paramString) {
    this.conteudo = paramString;
  }
  
  public String d() {
    return this.conteudo;
  }
  
  public void d(String paramString) {
    this.descricao = paramString;
  }
  
  public String e() {
    return this.descricao;
  }
  
  public void e(String paramString) {
    this.idCampanha = paramString;
  }
  
  public String f() {
    return this.idCampanha;
  }
  
  public void f(String paramString) {
    this.nome = paramString;
  }
  
  public String g() {
    return this.nome;
  }
  
  public void g(String paramString) {
    this.tipo = paramString;
  }
  
  public String h() {
    return this.tipo;
  }
  
  public void h(String paramString) {
    this.visualizacao = paramString;
  }
  
  public String i() {
    return this.visualizacao;
  }
  
  public void i(String paramString) {
    this.abordagem = paramString;
  }
  
  public String j() {
    return this.abordagem;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gxa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */