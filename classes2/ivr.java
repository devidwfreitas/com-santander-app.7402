import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.santander.app.idsantander.presentation.IdSantanderHabilitacaoActivity;

public class ivr implements ivq {
  private jah a;
  
  private Activity b;
  
  public ivr(jah paramjah, Activity paramActivity) {
    this.a = paramjah;
    this.b = paramActivity;
  }
  
  public void a() {
    Intent intent = new Intent((Context)this.b, IdSantanderHabilitacaoActivity.class);
    this.a.a(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ivr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */