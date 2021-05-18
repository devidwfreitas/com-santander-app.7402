import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import br.com.santander.modulo.ddav1.view.DDASuccessActivity;

final class afj implements aev {
  afj(afe paramafe, Dialog paramDialog) {}
  
  public final void a(Exception paramException) {
    this.a.dismiss();
    adh.a().a("Pagamentos_DDA_Cadastrar_Resultado", "Falha");
    adh.a().a(afe.a(this.b), afe.a(this.b).getString(adw.subtitulo_validacao_id_santander_comprovante));
  }
  
  public final void a(String paramString) {
    this.a.dismiss();
    adh.a().a("Pagamentos_DDA_Cadastrar_Resultado", "Sucesso");
    Intent intent = new Intent((Context)afe.a(this.b), DDASuccessActivity.class);
    intent.addFlags(67108864);
    intent.addFlags(268435456);
    afe.a(this.b).startActivity(intent);
    afe.a(this.b).finish();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\afj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */