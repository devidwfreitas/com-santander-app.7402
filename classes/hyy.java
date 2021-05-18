import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "anexo")
public class hyy implements Serializable {
  @Element(required = false)
  private String chaveArquivoManifestacao;
  
  @Element(required = false)
  private String conteudoArquivoManifestacao;
  
  @Element(required = false)
  private String nomeArquivo;
  
  public String a() {
    return this.conteudoArquivoManifestacao;
  }
  
  public void a(String paramString) {
    this.conteudoArquivoManifestacao = paramString;
  }
  
  public String b() {
    return this.nomeArquivo;
  }
  
  public void b(String paramString) {
    this.nomeArquivo = paramString;
  }
  
  public String c() {
    return this.chaveArquivoManifestacao;
  }
  
  public void c(String paramString) {
    this.chaveArquivoManifestacao = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hyy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */