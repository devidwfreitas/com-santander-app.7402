import android.animation.ObjectAnimator;
import android.view.View;

class lin implements View.OnClickListener {
  lin(lik paramlik, liq paramliq, ktq paramktq) {}
  
  public void onClick(View paramView) {
    if (liq.g(this.a).a()) {
      liq.g(this.a).c(true);
      ObjectAnimator objectAnimator1 = ObjectAnimator.ofFloat(liq.h(this.a), View.ROTATION_X, new float[] { 0.0F });
      objectAnimator1.setDuration(400L);
      objectAnimator1.start();
      this.b.a(false);
      return;
    } 
    liq.g(this.a).b(true);
    ObjectAnimator objectAnimator = ObjectAnimator.ofFloat(liq.h(this.a), View.ROTATION_X, new float[] { 180.0F });
    objectAnimator.setDuration(400L);
    objectAnimator.start();
    this.b.a(true);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lin.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */