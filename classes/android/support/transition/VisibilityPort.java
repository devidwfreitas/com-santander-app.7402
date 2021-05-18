package android.support.transition;

import android.animation.Animator;
import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.view.View;
import android.view.ViewGroup;

@TargetApi(14)
@RequiresApi(14)
abstract class VisibilityPort extends TransitionPort {
  private static final String PROPNAME_PARENT = "android:visibility:parent";
  
  private static final String PROPNAME_VISIBILITY = "android:visibility:visibility";
  
  private static final String[] sTransitionProperties = new String[] { "android:visibility:visibility", "android:visibility:parent" };
  
  private void captureValues(TransitionValues paramTransitionValues) {
    int i = paramTransitionValues.view.getVisibility();
    paramTransitionValues.values.put("android:visibility:visibility", Integer.valueOf(i));
    paramTransitionValues.values.put("android:visibility:parent", paramTransitionValues.view.getParent());
  }
  
  private VisibilityPort$VisibilityInfo getVisibilityChangeInfo(TransitionValues paramTransitionValues1, TransitionValues paramTransitionValues2) {
    VisibilityPort$VisibilityInfo visibilityPort$VisibilityInfo = new VisibilityPort$VisibilityInfo();
    visibilityPort$VisibilityInfo.visibilityChange = false;
    visibilityPort$VisibilityInfo.fadeIn = false;
    if (paramTransitionValues1 != null) {
      visibilityPort$VisibilityInfo.startVisibility = ((Integer)paramTransitionValues1.values.get("android:visibility:visibility")).intValue();
      visibilityPort$VisibilityInfo.startParent = (ViewGroup)paramTransitionValues1.values.get("android:visibility:parent");
    } else {
      visibilityPort$VisibilityInfo.startVisibility = -1;
      visibilityPort$VisibilityInfo.startParent = null;
    } 
    if (paramTransitionValues2 != null) {
      visibilityPort$VisibilityInfo.endVisibility = ((Integer)paramTransitionValues2.values.get("android:visibility:visibility")).intValue();
      visibilityPort$VisibilityInfo.endParent = (ViewGroup)paramTransitionValues2.values.get("android:visibility:parent");
    } else {
      visibilityPort$VisibilityInfo.endVisibility = -1;
      visibilityPort$VisibilityInfo.endParent = null;
    } 
    if (paramTransitionValues1 != null && paramTransitionValues2 != null) {
      if (visibilityPort$VisibilityInfo.startVisibility == visibilityPort$VisibilityInfo.endVisibility && visibilityPort$VisibilityInfo.startParent == visibilityPort$VisibilityInfo.endParent)
        return visibilityPort$VisibilityInfo; 
      if (visibilityPort$VisibilityInfo.startVisibility != visibilityPort$VisibilityInfo.endVisibility) {
        if (visibilityPort$VisibilityInfo.startVisibility == 0) {
          visibilityPort$VisibilityInfo.fadeIn = false;
          visibilityPort$VisibilityInfo.visibilityChange = true;
        } else if (visibilityPort$VisibilityInfo.endVisibility == 0) {
          visibilityPort$VisibilityInfo.fadeIn = true;
          visibilityPort$VisibilityInfo.visibilityChange = true;
        } 
      } else if (visibilityPort$VisibilityInfo.startParent != visibilityPort$VisibilityInfo.endParent) {
        if (visibilityPort$VisibilityInfo.endParent == null) {
          visibilityPort$VisibilityInfo.fadeIn = false;
          visibilityPort$VisibilityInfo.visibilityChange = true;
        } else if (visibilityPort$VisibilityInfo.startParent == null) {
          visibilityPort$VisibilityInfo.fadeIn = true;
          visibilityPort$VisibilityInfo.visibilityChange = true;
        } 
      } 
    } 
    if (paramTransitionValues1 == null) {
      visibilityPort$VisibilityInfo.fadeIn = true;
      visibilityPort$VisibilityInfo.visibilityChange = true;
      return visibilityPort$VisibilityInfo;
    } 
    if (paramTransitionValues2 == null) {
      visibilityPort$VisibilityInfo.fadeIn = false;
      visibilityPort$VisibilityInfo.visibilityChange = true;
    } 
    return visibilityPort$VisibilityInfo;
  }
  
  public void captureEndValues(TransitionValues paramTransitionValues) {
    captureValues(paramTransitionValues);
  }
  
  public void captureStartValues(TransitionValues paramTransitionValues) {
    captureValues(paramTransitionValues);
  }
  
  public Animator createAnimator(ViewGroup paramViewGroup, TransitionValues paramTransitionValues1, TransitionValues paramTransitionValues2) {
    int i = 0;
    int j = -1;
    VisibilityPort$VisibilityInfo visibilityPort$VisibilityInfo = getVisibilityChangeInfo(paramTransitionValues1, paramTransitionValues2);
    if (visibilityPort$VisibilityInfo.visibilityChange) {
      if (this.mTargets.size() > 0 || this.mTargetIds.size() > 0) {
        View view1;
        View view2;
        if (paramTransitionValues1 != null) {
          view1 = paramTransitionValues1.view;
        } else {
          view1 = null;
        } 
        if (paramTransitionValues2 != null) {
          view2 = paramTransitionValues2.view;
        } else {
          view2 = null;
        } 
        if (view1 != null) {
          i = view1.getId();
        } else {
          i = -1;
        } 
        if (view2 != null)
          j = view2.getId(); 
        if (isValidTarget(view1, i) || isValidTarget(view2, j)) {
          i = 1;
        } else {
          i = 0;
        } 
      } 
      if (i != 0 || visibilityPort$VisibilityInfo.startParent != null || visibilityPort$VisibilityInfo.endParent != null)
        return visibilityPort$VisibilityInfo.fadeIn ? onAppear(paramViewGroup, paramTransitionValues1, visibilityPort$VisibilityInfo.startVisibility, paramTransitionValues2, visibilityPort$VisibilityInfo.endVisibility) : onDisappear(paramViewGroup, paramTransitionValues1, visibilityPort$VisibilityInfo.startVisibility, paramTransitionValues2, visibilityPort$VisibilityInfo.endVisibility); 
    } 
    return null;
  }
  
  public String[] getTransitionProperties() {
    return sTransitionProperties;
  }
  
  public boolean isVisible(TransitionValues paramTransitionValues) {
    if (paramTransitionValues == null)
      return false; 
    int i = ((Integer)paramTransitionValues.values.get("android:visibility:visibility")).intValue();
    View view = (View)paramTransitionValues.values.get("android:visibility:parent");
    return (i == 0 && view != null);
  }
  
  public Animator onAppear(ViewGroup paramViewGroup, TransitionValues paramTransitionValues1, int paramInt1, TransitionValues paramTransitionValues2, int paramInt2) {
    return null;
  }
  
  public Animator onDisappear(ViewGroup paramViewGroup, TransitionValues paramTransitionValues1, int paramInt1, TransitionValues paramTransitionValues2, int paramInt2) {
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\VisibilityPort.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */