import android.os.CountDownTimer;
import com.santander.app.components.view.floatingTimer.FloatingTimer;

public class gtw extends CountDownTimer {
  public gtw(FloatingTimer paramFloatingTimer, long paramLong1, long paramLong2) {
    super(paramLong1, paramLong2);
  }
  
  public void onFinish() {
    FloatingTimer.a(this.a, "00:00");
    this.a.invalidate();
    if (FloatingTimer.a(this.a) != null)
      FloatingTimer.a(this.a).b(); 
  }
  
  public void onTick(long paramLong) {
    FloatingTimer.a(this.a, paramLong);
    FloatingTimer.a(this.a, FloatingTimer.b(this.a, paramLong));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gtw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */