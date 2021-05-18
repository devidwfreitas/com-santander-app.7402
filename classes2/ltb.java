import android.os.Handler;
import com.santander.app.seguros.ui.sinister.activities.SurveyActivity;

class ltb implements Runnable {
  ltb(lta paramlta) {}
  
  public void run() {
    SurveyActivity.h(this.a.a);
    (new Handler()).postDelayed(new ltc(this), 200L);
    this.a.a.finish();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ltb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */