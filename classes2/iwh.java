import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.santander.app.idsantander.presentation.IdSantanderComprovanteActivity;

public class iwh implements iwg {
  private jap a;
  
  private Activity b;
  
  public iwh(jap paramjap, Activity paramActivity) {
    this.a = paramjap;
    this.b = paramActivity;
  }
  
  public void a(gyx paramgyx) {
    gyy.a(this.b.getApplicationContext(), paramgyx, null, gzr.DEFAULT);
  }
  
  public void a(gyx paramgyx, String paramString) {
    String str = miq.C().f().y().c().a();
    if (str != null && !str.isEmpty())
      alb.c(str); 
    gyy.a(this.b.getApplicationContext(), paramgyx, paramString, gzr.QR);
  }
  
  public void a(String paramString) {
    Intent intent = new Intent((Context)this.b, IdSantanderComprovanteActivity.class);
    intent.putExtra("id", iut.HABILITACAO);
    intent.putExtra("content", paramString);
    this.a.a(intent);
  }
  
  public void b(String paramString) {
    Intent intent = new Intent((Context)this.b, IdSantanderComprovanteActivity.class);
    intent.putExtra("id", iut.HABILITACAO_ATM);
    intent.putExtra("content", paramString);
    this.a.a(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iwh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */