import android.animation.ObjectAnimator;
import android.view.View;

class lum implements View.OnClickListener {
  lum(luh paramluh, lur paramlur) {}
  
  public void onClick(View paramView) {
    if (luh.d(this.b)) {
      lur.d(this.a).c(true);
      ObjectAnimator objectAnimator1 = ObjectAnimator.ofFloat(lur.o(this.a), View.ROTATION, new float[] { 0.0F });
      lur.p(this.a).setClickable(false);
      objectAnimator1.addListener(new lun(this));
      objectAnimator1.setDuration(400L);
      objectAnimator1.start();
      luh.a(this.b, false);
      return;
    } 
    lur.d(this.a).b(true);
    ObjectAnimator objectAnimator = ObjectAnimator.ofFloat(lur.o(this.a), View.ROTATION, new float[] { 180.0F });
    lur.p(this.a).setClickable(false);
    objectAnimator.addListener(new luo(this));
    objectAnimator.setDuration(400L);
    objectAnimator.start();
    luh.a(this.b, true);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lum.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */