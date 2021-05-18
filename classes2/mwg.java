import android.animation.Animator;
import android.animation.ObjectAnimator;
import com.santander.app.transfergolden.service.TransferGoldenService;

public class mwg implements Runnable {
  public mwg(TransferGoldenService paramTransferGoldenService) {}
  
  public void run() {
    ObjectAnimator objectAnimator = TransferGoldenService.a(this.a);
    objectAnimator.addListener((Animator.AnimatorListener)new mwh(this));
    objectAnimator.start();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mwg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */