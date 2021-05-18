import android.view.View;
import com.santander.app.formalizacaodigital.presentation.ComprovanteDesistenciaActivity;

public class ihc implements View.OnClickListener {
  public ihc(ComprovanteDesistenciaActivity paramComprovanteDesistenciaActivity) {}
  
  public void onClick(View paramView) {
    if (ComprovanteDesistenciaActivity.a(this.a).isEnabled()) {
      frq.d("Outros_PropostasEmAberto_Cancelar_Enviar_Acao", ComprovanteDesistenciaActivity.b(this.a).toString());
      igk igk = new igk(ComprovanteDesistenciaActivity.c(this.a), ComprovanteDesistenciaActivity.d(this.a).b());
      ComprovanteDesistenciaActivity.e(this.a).a(igk);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ihc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */