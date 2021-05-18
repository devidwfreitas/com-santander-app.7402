package android.support.graphics.drawable;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import java.util.ArrayList;

class AnimatedVectorDrawableCompat$2 extends AnimatorListenerAdapter {
  public void onAnimationEnd(Animator paramAnimator) {
    ArrayList<Animatable2Compat$AnimationCallback> arrayList = new ArrayList(AnimatedVectorDrawableCompat.access$100(AnimatedVectorDrawableCompat.this));
    int j = arrayList.size();
    for (int i = 0; i < j; i++)
      ((Animatable2Compat$AnimationCallback)arrayList.get(i)).onAnimationEnd(AnimatedVectorDrawableCompat.this); 
  }
  
  public void onAnimationStart(Animator paramAnimator) {
    ArrayList<Animatable2Compat$AnimationCallback> arrayList = new ArrayList(AnimatedVectorDrawableCompat.access$100(AnimatedVectorDrawableCompat.this));
    int j = arrayList.size();
    for (int i = 0; i < j; i++)
      ((Animatable2Compat$AnimationCallback)arrayList.get(i)).onAnimationStart(AnimatedVectorDrawableCompat.this); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\graphics\drawable\AnimatedVectorDrawableCompat$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */