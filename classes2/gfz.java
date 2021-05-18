import android.content.Context;
import android.content.Intent;
import com.santander.app.carteiradiaria.presentation.ValidacaoTouchCarteiraDigitalActivity;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;

public class gfz implements gfl {
  public gfz(ValidacaoTouchCarteiraDigitalActivity paramValidacaoTouchCarteiraDigitalActivity) {}
  
  public void a() {
    ValidacaoTouchCarteiraDigitalActivity.a(this.a).b();
    Intent intent = new Intent((Context)ValidacaoTouchCarteiraDigitalActivity.b(this.a), HomeLogadaActivity.class);
    ValidacaoTouchCarteiraDigitalActivity.b(this.a).startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gfz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */