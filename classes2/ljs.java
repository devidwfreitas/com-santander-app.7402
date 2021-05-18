import android.content.Context;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.santander.app.seguros.ui.contract.activities.TermsOfUseActivity;

public class ljs implements View.OnClickListener {
  public ljs(TermsOfUseActivity paramTermsOfUseActivity) {}
  
  public void onClick(View paramView) {
    try {
      Animation animation = AnimationUtils.loadAnimation((Context)this.a, 2131034143);
      animation.setDuration(400L);
      animation.setAnimationListener(new ljt(this));
      TermsOfUseActivity.e(this.a).startAnimation(animation);
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      TermsOfUseActivity.e(this.a).setVisibility(8);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ljs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */