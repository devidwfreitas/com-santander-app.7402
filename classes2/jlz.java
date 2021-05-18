import android.view.View;
import com.google.android.gms.maps.model.LatLng;
import com.santander.app.localizadoragencias.presentation.MapaLocalizadorAgenciaActivity;

public class jlz implements View.OnClickListener {
  public jlz(MapaLocalizadorAgenciaActivity paramMapaLocalizadorAgenciaActivity, LatLng paramLatLng) {}
  
  public void onClick(View paramView) {
    frq.d("Outros_Agencias_Acao", "TracarRota");
    MapaLocalizadorAgenciaActivity.a(this.b).a(String.valueOf(this.a.a), String.valueOf(this.a.b));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jlz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */