import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.previdencia.presentation.AporteActivity;
import com.santander.app.previdencia.presentation.DetalhePosicaoConsolidadaPrevidenciaActivity;

public class ken implements View.OnClickListener {
  public ken(DetalhePosicaoConsolidadaPrevidenciaActivity paramDetalhePosicaoConsolidadaPrevidenciaActivity) {}
  
  public void onClick(View paramView) {
    Intent intent = new Intent((Context)DetalhePosicaoConsolidadaPrevidenciaActivity.a(this.a), AporteActivity.class);
    intent.putExtra("aporte", DetalhePosicaoConsolidadaPrevidenciaActivity.b(this.a));
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ken.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */