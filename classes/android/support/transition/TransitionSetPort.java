package android.support.transition;

import android.animation.TimeInterpolator;
import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;

@TargetApi(14)
@RequiresApi(14)
class TransitionSetPort extends TransitionPort {
  public static final int ORDERING_SEQUENTIAL = 1;
  
  public static final int ORDERING_TOGETHER = 0;
  
  int mCurrentListeners;
  
  private boolean mPlayTogether = true;
  
  boolean mStarted = false;
  
  ArrayList<TransitionPort> mTransitions = new ArrayList<TransitionPort>();
  
  private void setupStartEndListeners() {
    TransitionSetPort$TransitionSetListener transitionSetPort$TransitionSetListener = new TransitionSetPort$TransitionSetListener(this);
    Iterator<TransitionPort> iterator = this.mTransitions.iterator();
    while (iterator.hasNext())
      ((TransitionPort)iterator.next()).addListener(transitionSetPort$TransitionSetListener); 
    this.mCurrentListeners = this.mTransitions.size();
  }
  
  public TransitionSetPort addListener(TransitionPort$TransitionListener paramTransitionPort$TransitionListener) {
    return (TransitionSetPort)super.addListener(paramTransitionPort$TransitionListener);
  }
  
  public TransitionSetPort addTarget(int paramInt) {
    return (TransitionSetPort)super.addTarget(paramInt);
  }
  
  public TransitionSetPort addTarget(View paramView) {
    return (TransitionSetPort)super.addTarget(paramView);
  }
  
  public TransitionSetPort addTransition(TransitionPort paramTransitionPort) {
    if (paramTransitionPort != null) {
      this.mTransitions.add(paramTransitionPort);
      paramTransitionPort.mParent = this;
      if (this.mDuration >= 0L)
        paramTransitionPort.setDuration(this.mDuration); 
    } 
    return this;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  protected void cancel() {
    super.cancel();
    int j = this.mTransitions.size();
    for (int i = 0; i < j; i++)
      ((TransitionPort)this.mTransitions.get(i)).cancel(); 
  }
  
  public void captureEndValues(TransitionValues paramTransitionValues) {
    int i = paramTransitionValues.view.getId();
    if (isValidTarget(paramTransitionValues.view, i))
      for (TransitionPort transitionPort : this.mTransitions) {
        if (transitionPort.isValidTarget(paramTransitionValues.view, i))
          transitionPort.captureEndValues(paramTransitionValues); 
      }  
  }
  
  public void captureStartValues(TransitionValues paramTransitionValues) {
    int i = paramTransitionValues.view.getId();
    if (isValidTarget(paramTransitionValues.view, i))
      for (TransitionPort transitionPort : this.mTransitions) {
        if (transitionPort.isValidTarget(paramTransitionValues.view, i))
          transitionPort.captureStartValues(paramTransitionValues); 
      }  
  }
  
  public TransitionSetPort clone() {
    TransitionSetPort transitionSetPort = (TransitionSetPort)super.clone();
    transitionSetPort.mTransitions = new ArrayList<TransitionPort>();
    int j = this.mTransitions.size();
    for (int i = 0; i < j; i++)
      transitionSetPort.addTransition(((TransitionPort)this.mTransitions.get(i)).clone()); 
    return transitionSetPort;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  protected void createAnimators(ViewGroup paramViewGroup, TransitionValuesMaps paramTransitionValuesMaps1, TransitionValuesMaps paramTransitionValuesMaps2) {
    Iterator<TransitionPort> iterator = this.mTransitions.iterator();
    while (iterator.hasNext())
      ((TransitionPort)iterator.next()).createAnimators(paramViewGroup, paramTransitionValuesMaps1, paramTransitionValuesMaps2); 
  }
  
  public int getOrdering() {
    return this.mPlayTogether ? 0 : 1;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public void pause(View paramView) {
    super.pause(paramView);
    int j = this.mTransitions.size();
    for (int i = 0; i < j; i++)
      ((TransitionPort)this.mTransitions.get(i)).pause(paramView); 
  }
  
  public TransitionSetPort removeListener(TransitionPort$TransitionListener paramTransitionPort$TransitionListener) {
    return (TransitionSetPort)super.removeListener(paramTransitionPort$TransitionListener);
  }
  
  public TransitionSetPort removeTarget(int paramInt) {
    return (TransitionSetPort)super.removeTarget(paramInt);
  }
  
  public TransitionSetPort removeTarget(View paramView) {
    return (TransitionSetPort)super.removeTarget(paramView);
  }
  
  public TransitionSetPort removeTransition(TransitionPort paramTransitionPort) {
    this.mTransitions.remove(paramTransitionPort);
    paramTransitionPort.mParent = null;
    return this;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public void resume(View paramView) {
    super.resume(paramView);
    int j = this.mTransitions.size();
    for (int i = 0; i < j; i++)
      ((TransitionPort)this.mTransitions.get(i)).resume(paramView); 
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  protected void runAnimators() {
    if (this.mTransitions.isEmpty()) {
      start();
      end();
      return;
    } 
    setupStartEndListeners();
    if (!this.mPlayTogether) {
      for (int i = 1; i < this.mTransitions.size(); i++)
        ((TransitionPort)this.mTransitions.get(i - 1)).addListener(new TransitionSetPort$1(this, this.mTransitions.get(i))); 
      TransitionPort transitionPort = this.mTransitions.get(0);
      if (transitionPort != null) {
        transitionPort.runAnimators();
        return;
      } 
      return;
    } 
    Iterator<TransitionPort> iterator = this.mTransitions.iterator();
    while (true) {
      if (iterator.hasNext()) {
        ((TransitionPort)iterator.next()).runAnimators();
        continue;
      } 
      return;
    } 
  }
  
  void setCanRemoveViews(boolean paramBoolean) {
    super.setCanRemoveViews(paramBoolean);
    int j = this.mTransitions.size();
    for (int i = 0; i < j; i++)
      ((TransitionPort)this.mTransitions.get(i)).setCanRemoveViews(paramBoolean); 
  }
  
  public TransitionSetPort setDuration(long paramLong) {
    super.setDuration(paramLong);
    if (this.mDuration >= 0L) {
      int j = this.mTransitions.size();
      for (int i = 0; i < j; i++)
        ((TransitionPort)this.mTransitions.get(i)).setDuration(paramLong); 
    } 
    return this;
  }
  
  public TransitionSetPort setInterpolator(TimeInterpolator paramTimeInterpolator) {
    return (TransitionSetPort)super.setInterpolator(paramTimeInterpolator);
  }
  
  public TransitionSetPort setOrdering(int paramInt) {
    switch (paramInt) {
      default:
        throw new AndroidRuntimeException("Invalid parameter for TransitionSet ordering: " + paramInt);
      case 1:
        this.mPlayTogether = false;
        return this;
      case 0:
        break;
    } 
    this.mPlayTogether = true;
    return this;
  }
  
  TransitionSetPort setSceneRoot(ViewGroup paramViewGroup) {
    super.setSceneRoot(paramViewGroup);
    int j = this.mTransitions.size();
    for (int i = 0; i < j; i++)
      ((TransitionPort)this.mTransitions.get(i)).setSceneRoot(paramViewGroup); 
    return this;
  }
  
  public TransitionSetPort setStartDelay(long paramLong) {
    return (TransitionSetPort)super.setStartDelay(paramLong);
  }
  
  String toString(String paramString) {
    String str = super.toString(paramString);
    for (int i = 0; i < this.mTransitions.size(); i++)
      str = str + "\n" + ((TransitionPort)this.mTransitions.get(i)).toString(paramString + "  "); 
    return str;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\TransitionSetPort.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */