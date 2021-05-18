import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import com.santander.app.transfergolden.presentation.ExtensionActivity;
import com.santander.app.transfergolden.service.TransferGoldenService;

public class mwj extends AnimatorListenerAdapter {
  public mwj(TransferGoldenService paramTransferGoldenService) {}
  
  public void onAnimationEnd(Animator paramAnimator) {
    super.onAnimationEnd(paramAnimator);
    ExtensionActivity.a((Context)this.a, TransferGoldenService.e(this.a));
    TransferGoldenService.b(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mwj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */