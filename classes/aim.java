import android.content.Context;
import java.util.concurrent.ExecutionException;
import org.json.JSONException;

public class aim extends ajc {
  private ain a;
  
  private Context b;
  
  private final String c = aim.class.getSimpleName();
  
  public aim(Context paramContext, ain paramain) {
    this.a = paramain;
    this.b = paramContext;
  }
  
  public void a() {
    String str = a(aiz.REMANEJAMENTO.getEndpoint());
    try {
      aja.b().a().a(a(str, b()), new aio(this));
      return;
    } catch (ExecutionException executionException) {
      executionException.printStackTrace();
      return;
    } catch (InterruptedException interruptedException) {
      interruptedException.printStackTrace();
      return;
    } catch (JSONException jSONException) {
      jSONException.printStackTrace();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aim.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */