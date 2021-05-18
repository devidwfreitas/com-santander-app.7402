import android.app.Activity;
import android.view.View;
import com.santander.app.cadastrodebitoautomatico.activity.ComprovanteDebitoAutomaticoActivity;

public class gaa implements View.OnClickListener {
  public gaa(ComprovanteDebitoAutomaticoActivity paramComprovanteDebitoAutomaticoActivity, String paramString) {}
  
  public void onClick(View paramView) {
    frq.d("Pagamentos_Pagamento_CadastroEmDebitoAutomatico_Comprovante_Acao", "Compartilhar");
    String str = ComprovanteDebitoAutomaticoActivity.a(this.b).b();
    myj.a((Activity)ComprovanteDebitoAutomaticoActivity.a(this.b), "Cad. débito automático  " + this.a, "", str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gaa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */