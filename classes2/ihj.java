import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.formalizacaodigital.presentation.ComprovanteDesistenciaActivity;
import com.santander.app.formalizacaodigital.presentation.DetalheFormalizacaoDigitalActivity;

public class ihj implements View.OnClickListener {
  public ihj(DetalheFormalizacaoDigitalActivity paramDetalheFormalizacaoDigitalActivity, Dialog paramDialog) {}
  
  public void onClick(View paramView) {
    this.a.dismiss();
    frq.d("Outros_PropostasEmAberto_Desistir_PopUp_Acao", "Continuar");
    Intent intent = new Intent((Context)this.b, ComprovanteDesistenciaActivity.class);
    intent.putExtra("proposalId", DetalheFormalizacaoDigitalActivity.g(this.b).a());
    intent.putExtra("proposalTitle", DetalheFormalizacaoDigitalActivity.g(this.b).b());
    this.b.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ihj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */