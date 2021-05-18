import android.view.View;
import com.santander.app.cambio.transferenciaexterior.presentation.FavorecidoCambioActivity;

public class gcq implements View.OnClickListener {
  public gcq(FavorecidoCambioActivity paramFavorecidoCambioActivity) {}
  
  public void onClick(View paramView) {
    frq.d("ServicosInternacionais_Cambio_Favorecido_Acao", "Continuar");
    gax gax = new gax();
    gax.a(FavorecidoCambioActivity.d(this.a).getText().toString());
    gax.b(FavorecidoCambioActivity.e(this.a).getText().toString());
    gax.c(FavorecidoCambioActivity.c(this.a).getText().toString());
    if (FavorecidoCambioActivity.a(this.a) != null) {
      String str = FavorecidoCambioActivity.a(this.a).c();
    } else {
      paramView = null;
    } 
    gax.d((String)paramView);
    gax.e(FavorecidoCambioActivity.f(this.a).getText().toString());
    gax.f(FavorecidoCambioActivity.g(this.a).getText().toString());
    gax.g(FavorecidoCambioActivity.g(this.a).getText().toString());
    gax.h(FavorecidoCambioActivity.h(this.a).getText().toString());
    gax.i(FavorecidoCambioActivity.i(this.a).getText().toString());
    FavorecidoCambioActivity.b(this.a).a(gax, FavorecidoCambioActivity.j(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gcq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */