import android.animation.ValueAnimator;

class iti implements ValueAnimator.AnimatorUpdateListener {
  iti(itg paramitg) {}
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator) {
    itg.a(this.a).e(((Integer)paramValueAnimator.getAnimatedValue()).intValue());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iti.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */