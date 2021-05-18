import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.santander.app.transfergolden.service.TransferGoldenService;

public class mwl extends AnimatorListenerAdapter {
  public mwl(TransferGoldenService paramTransferGoldenService) {}
  
  public void onAnimationEnd(Animator paramAnimator) {
    super.onAnimationEnd(paramAnimator);
    if (TransferGoldenService.k(this.a) != null)
      paramAnimator.start(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mwl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */