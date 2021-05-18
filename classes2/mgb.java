import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import android.widget.SeekBar;
import android.widget.TextView;

public class mgb {
  public static final int a = 400;
  
  public static void a(SeekBar paramSeekBar, int paramInt, long paramLong) {
    a(paramSeekBar, paramInt, null, paramLong);
  }
  
  public static void a(SeekBar paramSeekBar, int paramInt, Animator.AnimatorListener paramAnimatorListener, long paramLong) {
    ObjectAnimator objectAnimator = ObjectAnimator.ofInt(paramSeekBar, "progress", new int[] { paramInt });
    objectAnimator.setDuration(paramLong);
    objectAnimator.setInterpolator((TimeInterpolator)new DecelerateInterpolator());
    if (paramAnimatorListener != null)
      objectAnimator.addListener(paramAnimatorListener); 
    objectAnimator.start();
  }
  
  public static void a(TextView paramTextView) {
    ObjectAnimator objectAnimator2 = ObjectAnimator.ofFloat(paramTextView, View.SCALE_X, new float[] { 1.0F, 1.2F, 1.0F });
    ObjectAnimator objectAnimator1 = ObjectAnimator.ofFloat(paramTextView, View.SCALE_Y, new float[] { 1.2F, 1.0F });
    AnimatorSet animatorSet = (new AnimatorSet()).setDuration(150L);
    animatorSet.playTogether(new Animator[] { (Animator)objectAnimator2, (Animator)objectAnimator1 });
    animatorSet.setInterpolator((TimeInterpolator)new LinearInterpolator());
    animatorSet.start();
  }
  
  public static void a(String paramString, TextView paramTextView, boolean paramBoolean) {
    float[] arrayOfFloat2 = new float[2];
    float[] arrayOfFloat1 = new float[2];
    if (paramBoolean) {
      arrayOfFloat2[0] = -1000.0F;
      arrayOfFloat2[1] = 0.0F;
      arrayOfFloat1[0] = 0.0F;
      arrayOfFloat1[1] = 1000.0F;
    } else {
      arrayOfFloat2[0] = 1000.0F;
      arrayOfFloat2[1] = 0.0F;
      arrayOfFloat1[0] = 0.0F;
      arrayOfFloat1[1] = -1000.0F;
    } 
    AnimatorSet animatorSet = new AnimatorSet();
    ObjectAnimator objectAnimator2 = ObjectAnimator.ofFloat(paramTextView, View.ALPHA, new float[] { 0.0F, 1.0F });
    objectAnimator2.setDuration(300L);
    ObjectAnimator objectAnimator3 = ObjectAnimator.ofFloat(paramTextView, View.TRANSLATION_X, arrayOfFloat2);
    objectAnimator3.setDuration(300L);
    animatorSet.setTarget(paramTextView);
    animatorSet.playTogether(new Animator[] { (Animator)objectAnimator2, (Animator)objectAnimator3 });
    animatorSet.setInterpolator((TimeInterpolator)new DecelerateInterpolator());
    animatorSet.setStartDelay(500L);
    animatorSet.start();
    animatorSet = new AnimatorSet();
    objectAnimator2 = ObjectAnimator.ofFloat(paramTextView, View.ALPHA, new float[] { 1.0F, 0.0F });
    objectAnimator2.setDuration(600L);
    ObjectAnimator objectAnimator1 = ObjectAnimator.ofFloat(paramTextView, View.TRANSLATION_X, arrayOfFloat1);
    objectAnimator1.setDuration(600L);
    animatorSet.setTarget(paramTextView);
    animatorSet.playTogether(new Animator[] { (Animator)objectAnimator2, (Animator)objectAnimator1 });
    animatorSet.addListener(new mgc(paramTextView, paramString));
    animatorSet.setInterpolator((TimeInterpolator)new DecelerateInterpolator());
    animatorSet.start();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mgb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */