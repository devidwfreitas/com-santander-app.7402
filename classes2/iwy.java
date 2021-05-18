import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.santander.app.idsantander.presentation.IdSantanderComprovanteActivity;

public class iwy implements iwx {
  private jba a;
  
  private Activity b;
  
  public iwy(jba paramjba, Activity paramActivity) {
    this.a = paramjba;
    this.b = paramActivity;
  }
  
  public void a(gyx paramgyx) {
    gyy.a(this.b.getApplicationContext(), miq.C().f().y().c().a(), paramgyx);
  }
  
  public void a(String paramString) {
    Intent intent = new Intent((Context)this.b, IdSantanderComprovanteActivity.class);
    intent.putExtra("id", iut.SINCRONIA);
    intent.putExtra("content", paramString);
    this.a.a(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iwy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */