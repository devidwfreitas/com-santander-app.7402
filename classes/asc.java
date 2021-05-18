import android.util.Log;
import java.util.HashMap;
import java.util.Map;

class asc {
  private final Map<String, String> b = new HashMap<String, String>();
  
  asc(ary paramary) {
    this.b.put("00001", "erro genérico");
    this.b.put("00002", "erro na validação do token de sessão do MBB");
    this.b.put("00003", "erro na validação do token de sessão do MBJ");
    this.b.put("00004", "token de sessão não informado");
    this.b.put("00005", "app dummy não permitido neste ambiente");
    this.b.put("00006", "token de sessão para app dummy tem que ser o penumper do cliente");
    this.b.put("00007", "canal não autorizado");
    this.b.put("00008", "erro de comunicação com GMS");
    this.b.put("00010", "evento de transcrição desconhecido");
    this.b.put("00011", "query string inválida");
    this.b.put("00012", "configuração inválida");
    this.b.put("00013", "motivo desconhecido");
    this.b.put("00014", "cliente inelegível");
    this.b.put("00016", "sessão no GMS desconectada, não foi possível criar uma sessão");
    this.b.put("00022", "o header SessionToken foi informado desnecessariamente");
    this.b.put("00023", "verificação de assinatura de request incorreta");
    this.b.put("00201", "foi atingido o tamanho total de arquivos transferidos (somatória de kb dos arquivos)");
    this.b.put("00202", "foi atingido o número total de arquivos transferidos permitidos");
    this.b.put("00203", "tipo de arquivo incorreto, não configurado no GMS");
    this.b.put("00004", "nenhum header foi informado; nem SessionToken nem ChatSessionID");
    for (Map.Entry<String, String> entry : this.b.entrySet())
      Log.d("[ChatServiceImpl]", (new StringBuilder()).append(entry.getKey()).append(": ").append(entry.getValue()).toString()); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\asc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */