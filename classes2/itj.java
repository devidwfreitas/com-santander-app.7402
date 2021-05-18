import android.animation.ValueAnimator;

class itj implements ValueAnimator.AnimatorUpdateListener {
  itj(itg paramitg) {}
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator) {
    itg.a(this.a).a(((Float)paramValueAnimator.getAnimatedValue()).floatValue());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\itj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */