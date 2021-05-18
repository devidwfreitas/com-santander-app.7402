import android.content.Context;
import android.content.Intent;
import com.santander.app.seguros.ui.sinister.activities.ScanDocumentActivity;
import com.santander.app.seguros.ui.sinister.activities.SinisterDocumentsActivity;

public class lsp implements ltt {
  public lsp(SinisterDocumentsActivity paramSinisterDocumentsActivity) {}
  
  public void a(int paramInt, kus paramkus) {
    String str = mhj.m(mhj.p(paramkus.b()).replace(" ", ""));
    if (paramkus != null && !paramkus.b().isEmpty())
      frq.d("Seguros_Sinistro_Acionar_Documentacao_Acao", "Informativo_" + str); 
    SinisterDocumentsActivity.a(this.a, lyh.a(paramkus));
    SinisterDocumentsActivity.f(this.a).show(this.a.getSupportFragmentManager(), "document-info");
  }
  
  public void b(int paramInt, kus paramkus) {
    String str = mhj.m(mhj.p(paramkus.b()).replace(" ", ""));
    if (paramkus != null && !paramkus.b().isEmpty())
      frq.d("Seguros_Sinistro_Acionar_Documentacao_Acao", "Capturar_" + str); 
    Intent intent = new Intent((Context)this.a, ScanDocumentActivity.class);
    SinisterDocumentsActivity.a(this.a, paramInt);
    this.a.startActivityForResult(intent, 5698);
  }
  
  public void c(int paramInt, kus paramkus) {
    SinisterDocumentsActivity.a(this.a, paramInt);
    SinisterDocumentsActivity.a(this.a, paramkus);
  }
  
  public void d(int paramInt, kus paramkus) {
    SinisterDocumentsActivity.a(this.a, paramInt);
    SinisterDocumentsActivity.b(this.a, paramkus);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lsp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */