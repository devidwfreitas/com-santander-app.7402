import android.os.Handler;
import com.santander.app.seguros.ui.cancellation.activities.CancellationLifeActivity;

public class lea implements mff {
  public lea(CancellationLifeActivity paramCancellationLifeActivity) {}
  
  public void a() {
    frq.d("Seguros_Cancelamento_Vida_AP_Seletor_Acao", "CorrerRisco");
    this.a.a(leg.UNSAFE);
    if (CancellationLifeActivity.f(this.a) != null)
      CancellationLifeActivity.f(this.a).a(); 
    (new Handler()).postDelayed(new leb(this), 1000L);
  }
  
  public void b() {
    frq.d("Seguros_Cancelamento_Vida_AP_Seletor_Acao", "ProtegerMinhaFamilia");
    this.a.a(leg.SAFE_SUN);
    if (CancellationLifeActivity.f(this.a) != null)
      CancellationLifeActivity.f(this.a).b(); 
    (new Handler()).postDelayed(new lec(this), 1000L);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lea.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */