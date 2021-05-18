import android.widget.EditText;
import com.santander.app.cambio.transferenciaexterior.presentation.CambioActivity;

public class gbw implements gpd {
  public gbw(CambioActivity paramCambioActivity) {}
  
  public void a(Object paramObject, int paramInt) {
    CambioActivity.a(this.a, (gaz)paramObject);
    CambioActivity.b(this.a).setText(CambioActivity.a(this.a).c() + " " + CambioActivity.a(this.a).a());
    if (CambioActivity.c(this.a) == null) {
      CambioActivity.a(this.a, new gui());
      CambioActivity.c(this.a).a((EditText)CambioActivity.d(this.a));
      CambioActivity.d(this.a).addTextChangedListener(CambioActivity.c(this.a));
    } 
    if ("JPY".equalsIgnoreCase(CambioActivity.a(this.a).c())) {
      CambioActivity.d(this.a).removeTextChangedListener(CambioActivity.c(this.a));
      CambioActivity.a(this.a, null);
      paramObject = CambioActivity.d(this.a).getText().toString().replaceAll(",", "").replaceAll(".", "");
      CambioActivity.d(this.a).setText((CharSequence)paramObject);
    } 
    CambioActivity.e(this.a);
    frq.d("ServicosInternacionais_Cambio_Cambio_MoedaEstrangeira_Acao", CambioActivity.a(this.a).a());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gbw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */