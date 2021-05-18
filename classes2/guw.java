import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.comprovantes.activity.ComprovanteBaseActivity;

public class guw implements View.OnClickListener {
  public guw(ComprovanteBaseActivity paramComprovanteBaseActivity) {}
  
  public void onClick(View paramView) {
    if (this.a.c.s().contains("Cadastro")) {
      frq.d("Pagamentos_Pagamento_Comprovante_Acao", "CadastroEmDebitoAutomatico");
    } else if (this.a.c.L()) {
      frq.d("Outros_RecargaDeTelefone_Comprovante_Acao", "ProgramarRecarga");
    } 
    Intent intent = new Intent((Context)this.a, this.a.c.t());
    intent.addFlags(67108864);
    if (this.a.c.w() != null && !this.a.c.w().isEmpty())
      intent.putExtra("dadosOferta", this.a.c.w()); 
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\guw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */