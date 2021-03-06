package android.support.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.transition.Transition;
import android.transition.TransitionValues;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

@TargetApi(19)
@RequiresApi(19)
class TransitionKitKat extends TransitionImpl {
  private TransitionKitKat$CompatListener mCompatListener;
  
  TransitionInterface mExternalTransition;
  
  Transition mTransition;
  
  static TransitionValues convertToPlatform(TransitionValues paramTransitionValues) {
    if (paramTransitionValues == null)
      return null; 
    TransitionValues transitionValues = new TransitionValues();
    copyValues(paramTransitionValues, transitionValues);
    return transitionValues;
  }
  
  static TransitionValues convertToSupport(TransitionValues paramTransitionValues) {
    if (paramTransitionValues == null)
      return null; 
    TransitionValues transitionValues = new TransitionValues();
    copyValues(paramTransitionValues, transitionValues);
    return transitionValues;
  }
  
  static void copyValues(TransitionValues paramTransitionValues, TransitionValues paramTransitionValues1) {
    if (paramTransitionValues != null) {
      paramTransitionValues1.view = paramTransitionValues.view;
      if (paramTransitionValues.values.size() > 0) {
        paramTransitionValues1.values.putAll(paramTransitionValues.values);
        return;
      } 
    } 
  }
  
  static void copyValues(TransitionValues paramTransitionValues, TransitionValues paramTransitionValues1) {
    if (paramTransitionValues != null) {
      paramTransitionValues1.view = paramTransitionValues.view;
      if (paramTransitionValues.values.size() > 0) {
        paramTransitionValues1.values.putAll(paramTransitionValues.values);
        return;
      } 
    } 
  }
  
  static void wrapCaptureEndValues(TransitionInterface paramTransitionInterface, TransitionValues paramTransitionValues) {
    TransitionValues transitionValues = new TransitionValues();
    copyValues(paramTransitionValues, transitionValues);
    paramTransitionInterface.captureEndValues(transitionValues);
    copyValues(transitionValues, paramTransitionValues);
  }
  
  static void wrapCaptureStartValues(TransitionInterface paramTransitionInterface, TransitionValues paramTransitionValues) {
    TransitionValues transitionValues = new TransitionValues();
    copyValues(paramTransitionValues, transitionValues);
    paramTransitionInterface.captureStartValues(transitionValues);
    copyValues(transitionValues, paramTransitionValues);
  }
  
  public TransitionImpl addListener(TransitionInterfaceListener paramTransitionInterfaceListener) {
    if (this.mCompatListener == null) {
      this.mCompatListener = new TransitionKitKat$CompatListener(this);
      this.mTransition.addListener(this.mCompatListener);
    } 
    this.mCompatListener.addListener(paramTransitionInterfaceListener);
    return this;
  }
  
  public TransitionImpl addTarget(int paramInt) {
    this.mTransition.addTarget(paramInt);
    return this;
  }
  
  public TransitionImpl addTarget(View paramView) {
    this.mTransition.addTarget(paramView);
    return this;
  }
  
  public void captureEndValues(TransitionValues paramTransitionValues) {
    TransitionValues transitionValues = new TransitionValues();
    copyValues(paramTransitionValues, transitionValues);
    this.mTransition.captureEndValues(transitionValues);
    copyValues(transitionValues, paramTransitionValues);
  }
  
  public void captureStartValues(TransitionValues paramTransitionValues) {
    TransitionValues transitionValues = new TransitionValues();
    copyValues(paramTransitionValues, transitionValues);
    this.mTransition.captureStartValues(transitionValues);
    copyValues(transitionValues, paramTransitionValues);
  }
  
  public Animator createAnimator(ViewGroup paramViewGroup, TransitionValues paramTransitionValues1, TransitionValues paramTransitionValues2) {
    TransitionValues transitionValues = null;
    if (paramTransitionValues1 != null) {
      TransitionValues transitionValues2 = new TransitionValues();
      copyValues(paramTransitionValues1, transitionValues2);
      TransitionValues transitionValues1 = transitionValues2;
    } else {
      paramTransitionValues1 = null;
    } 
    if (paramTransitionValues2 != null) {
      transitionValues = new TransitionValues();
      copyValues(paramTransitionValues2, transitionValues);
    } 
    return this.mTransition.createAnimator(paramViewGroup, (TransitionValues)paramTransitionValues1, transitionValues);
  }
  
  public TransitionImpl excludeChildren(int paramInt, boolean paramBoolean) {
    this.mTransition.excludeChildren(paramInt, paramBoolean);
    return this;
  }
  
  public TransitionImpl excludeChildren(View paramView, boolean paramBoolean) {
    this.mTransition.excludeChildren(paramView, paramBoolean);
    return this;
  }
  
  public TransitionImpl excludeChildren(Class paramClass, boolean paramBoolean) {
    this.mTransition.excludeChildren(paramClass, paramBoolean);
    return this;
  }
  
  public TransitionImpl excludeTarget(int paramInt, boolean paramBoolean) {
    this.mTransition.excludeTarget(paramInt, paramBoolean);
    return this;
  }
  
  public TransitionImpl excludeTarget(View paramView, boolean paramBoolean) {
    this.mTransition.excludeTarget(paramView, paramBoolean);
    return this;
  }
  
  public TransitionImpl excludeTarget(Class paramClass, boolean paramBoolean) {
    this.mTransition.excludeTarget(paramClass, paramBoolean);
    return this;
  }
  
  public long getDuration() {
    return this.mTransition.getDuration();
  }
  
  public TimeInterpolator getInterpolator() {
    return this.mTransition.getInterpolator();
  }
  
  public String getName() {
    return this.mTransition.getName();
  }
  
  public long getStartDelay() {
    return this.mTransition.getStartDelay();
  }
  
  public List<Integer> getTargetIds() {
    return this.mTransition.getTargetIds();
  }
  
  public List<View> getTargets() {
    return this.mTransition.getTargets();
  }
  
  public String[] getTransitionProperties() {
    return this.mTransition.getTransitionProperties();
  }
  
  public TransitionValues getTransitionValues(View paramView, boolean paramBoolean) {
    TransitionValues transitionValues = new TransitionValues();
    copyValues(this.mTransition.getTransitionValues(paramView, paramBoolean), transitionValues);
    return transitionValues;
  }
  
  public void init(TransitionInterface paramTransitionInterface, Object paramObject) {
    this.mExternalTransition = paramTransitionInterface;
    if (paramObject == null) {
      this.mTransition = new TransitionKitKat$TransitionWrapper(paramTransitionInterface);
      return;
    } 
    this.mTransition = (Transition)paramObject;
  }
  
  public TransitionImpl removeListener(TransitionInterfaceListener paramTransitionInterfaceListener) {
    if (this.mCompatListener != null) {
      this.mCompatListener.removeListener(paramTransitionInterfaceListener);
      if (this.mCompatListener.isEmpty()) {
        this.mTransition.removeListener(this.mCompatListener);
        this.mCompatListener = null;
        return this;
      } 
    } 
    return this;
  }
  
  public TransitionImpl removeTarget(int paramInt) {
    if (paramInt > 0)
      getTargetIds().remove(Integer.valueOf(paramInt)); 
    return this;
  }
  
  public TransitionImpl removeTarget(View paramView) {
    this.mTransition.removeTarget(paramView);
    return this;
  }
  
  public TransitionImpl setDuration(long paramLong) {
    this.mTransition.setDuration(paramLong);
    return this;
  }
  
  public TransitionImpl setInterpolator(TimeInterpolator paramTimeInterpolator) {
    this.mTransition.setInterpolator(paramTimeInterpolator);
    return this;
  }
  
  public TransitionImpl setStartDelay(long paramLong) {
    this.mTransition.setStartDelay(paramLong);
    return this;
  }
  
  public String toString() {
    return this.mTransition.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\TransitionKitKat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */