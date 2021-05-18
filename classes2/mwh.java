import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.santander.app.transfergolden.service.TransferGoldenService;

class mwh extends AnimatorListenerAdapter {
  mwh(mwg parammwg) {}
  
  public void onAnimationEnd(Animator paramAnimator) {
    super.onAnimationEnd(paramAnimator);
    TransferGoldenService.b(this.a.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mwh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */