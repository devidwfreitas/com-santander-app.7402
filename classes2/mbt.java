import android.animation.Animator;
import com.santander.app.seguros.ui.widgets.ExpandableLayoutV2;

public class mbt implements Animator.AnimatorListener {
  public mbt(ExpandableLayoutV2 paramExpandableLayoutV2, int paramInt) {}
  
  public void onAnimationCancel(Animator paramAnimator) {
    ExpandableLayoutV2.a(this.b, 0);
  }
  
  public void onAnimationEnd(Animator paramAnimator) {
    ExpandableLayoutV2.a(this.b, 0);
    if (this.b.e() != null)
      this.b.e().a(this.b.a()); 
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator) {
    boolean bool1;
    boolean bool2 = true;
    ExpandableLayoutV2 expandableLayoutV2 = this.b;
    if (this.a == 0) {
      bool1 = true;
    } else {
      bool1 = true;
    } 
    ExpandableLayoutV2.a(expandableLayoutV2, bool1);
    if (this.b.e() != null) {
      mbu mbu = this.b.e();
      if (this.a == 0)
        bool2 = false; 
      mbu.b(bool2);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mbt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */