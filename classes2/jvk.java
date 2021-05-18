import android.os.Handler;
import com.santander.app.pagamentos.titulos.presentation.PagamentosCodigoBarrasActivity;

public class jvk implements Runnable {
  public jvk(PagamentosCodigoBarrasActivity paramPagamentosCodigoBarrasActivity, Handler paramHandler) {}
  
  public void run() {
    PagamentosCodigoBarrasActivity.a(this.b).b();
    this.a.removeCallbacks(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jvk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */