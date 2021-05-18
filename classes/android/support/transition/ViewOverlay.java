package android.support.transition;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.annotation.RequiresApi;
import android.view.View;
import android.view.ViewGroup;

@TargetApi(14)
@RequiresApi(14)
class ViewOverlay {
  protected ViewOverlay$OverlayViewGroup mOverlayViewGroup;
  
  ViewOverlay(Context paramContext, ViewGroup paramViewGroup, View paramView) {
    this.mOverlayViewGroup = new ViewOverlay$OverlayViewGroup(paramContext, paramViewGroup, paramView, this);
  }
  
  public static ViewOverlay createFrom(View paramView) {
    ViewGroup viewGroup = getContentView(paramView);
    if (viewGroup != null) {
      int j = viewGroup.getChildCount();
      for (int i = 0; i < j; i++) {
        View view = viewGroup.getChildAt(i);
        if (view instanceof ViewOverlay$OverlayViewGroup)
          return ((ViewOverlay$OverlayViewGroup)view).mViewOverlay; 
      } 
      return new ViewGroupOverlay(viewGroup.getContext(), viewGroup, paramView);
    } 
    return null;
  }
  
  static ViewGroup getContentView(View paramView) {
    while (paramView != null) {
      if (paramView.getId() == 16908290 && paramView instanceof ViewGroup)
        return (ViewGroup)paramView; 
      if (paramView.getParent() instanceof ViewGroup)
        ViewGroup viewGroup = (ViewGroup)paramView.getParent(); 
    } 
    return null;
  }
  
  public void add(Drawable paramDrawable) {
    this.mOverlayViewGroup.add(paramDrawable);
  }
  
  public void clear() {
    this.mOverlayViewGroup.clear();
  }
  
  ViewGroup getOverlayView() {
    return this.mOverlayViewGroup;
  }
  
  boolean isEmpty() {
    return this.mOverlayViewGroup.isEmpty();
  }
  
  public void remove(Drawable paramDrawable) {
    this.mOverlayViewGroup.remove(paramDrawable);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\ViewOverlay.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */