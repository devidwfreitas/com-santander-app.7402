package android.support.graphics.drawable;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v4.util.ArrayMap;
import java.util.ArrayList;

class AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState extends Drawable.ConstantState {
  AnimatorSet mAnimatorSet;
  
  private ArrayList<Animator> mAnimators;
  
  int mChangingConfigurations;
  
  ArrayMap<Animator, String> mTargetNameMap;
  
  VectorDrawableCompat mVectorDrawable;
  
  public AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState(Context paramContext, AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState paramAnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState, Drawable.Callback paramCallback, Resources paramResources) {
    if (paramAnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState != null) {
      this.mChangingConfigurations = paramAnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState.mChangingConfigurations;
      if (paramAnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState.mVectorDrawable != null) {
        Drawable.ConstantState constantState = paramAnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState.mVectorDrawable.getConstantState();
        if (paramResources != null) {
          this.mVectorDrawable = (VectorDrawableCompat)constantState.newDrawable(paramResources);
        } else {
          this.mVectorDrawable = (VectorDrawableCompat)constantState.newDrawable();
        } 
        this.mVectorDrawable = (VectorDrawableCompat)this.mVectorDrawable.mutate();
        this.mVectorDrawable.setCallback(paramCallback);
        this.mVectorDrawable.setBounds(paramAnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState.mVectorDrawable.getBounds());
        this.mVectorDrawable.setAllowCaching(false);
      } 
      if (paramAnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState.mAnimators != null) {
        int j = paramAnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState.mAnimators.size();
        this.mAnimators = new ArrayList<Animator>(j);
        this.mTargetNameMap = new ArrayMap(j);
        while (i < j) {
          Animator animator2 = paramAnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState.mAnimators.get(i);
          Animator animator1 = animator2.clone();
          String str = (String)paramAnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState.mTargetNameMap.get(animator2);
          animator1.setTarget(this.mVectorDrawable.getTargetByName(str));
          this.mAnimators.add(animator1);
          this.mTargetNameMap.put(animator1, str);
          i++;
        } 
        setupAnimatorSet();
      } 
    } 
  }
  
  public int getChangingConfigurations() {
    return this.mChangingConfigurations;
  }
  
  public Drawable newDrawable() {
    throw new IllegalStateException("No constant state support for SDK < 24.");
  }
  
  public Drawable newDrawable(Resources paramResources) {
    throw new IllegalStateException("No constant state support for SDK < 24.");
  }
  
  public void setupAnimatorSet() {
    if (this.mAnimatorSet == null)
      this.mAnimatorSet = new AnimatorSet(); 
    this.mAnimatorSet.playTogether(this.mAnimators);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\graphics\drawable\AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */