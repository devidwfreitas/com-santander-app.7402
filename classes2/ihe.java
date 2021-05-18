import android.view.View;
import com.santander.app.formalizacaodigital.presentation.ComprovanteDesistenciaActivity;

public class ihe implements View.OnClickListener {
  public ihe(ComprovanteDesistenciaActivity paramComprovanteDesistenciaActivity) {}
  
  public void onClick(View paramView) {
    ComprovanteDesistenciaActivity.a(this.a).setEnabled(true);
    ComprovanteDesistenciaActivity.a(this.a, (igj)paramView.getTag());
    frq.d("Outros_PropostasEmAberto_Cancelar_Motivo_Acao", ComprovanteDesistenciaActivity.d(this.a).c());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ihe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */