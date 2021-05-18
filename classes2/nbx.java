import android.os.CountDownTimer;
import android.widget.ProgressBar;
import com.santander.app.validation.presentation.IdSantanderTokenCentralAtendimentoActivity;

public class nbx extends CountDownTimer {
  public nbx(IdSantanderTokenCentralAtendimentoActivity paramIdSantanderTokenCentralAtendimentoActivity, long paramLong1, long paramLong2, ProgressBar paramProgressBar) {
    super(paramLong1, paramLong2);
  }
  
  public void onFinish() {
    this.a.setProgress(0);
  }
  
  public void onTick(long paramLong) {
    this.a.setProgress(Integer.valueOf(String.valueOf(paramLong / 1000L)).intValue());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nbx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */