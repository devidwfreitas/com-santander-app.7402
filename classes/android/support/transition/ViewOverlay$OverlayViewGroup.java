package android.support.transition;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ViewCompat;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;

class ViewOverlay$OverlayViewGroup extends ViewGroup {
  static Method sInvalidateChildInParentFastMethod;
  
  ArrayList<Drawable> mDrawables = null;
  
  ViewGroup mHostView;
  
  View mRequestingView;
  
  ViewOverlay mViewOverlay;
  
  static {
    try {
      sInvalidateChildInParentFastMethod = ViewGroup.class.getDeclaredMethod("invalidateChildInParentFast", new Class[] { int.class, int.class, Rect.class });
      return;
    } catch (NoSuchMethodException noSuchMethodException) {
      return;
    } 
  }
  
  ViewOverlay$OverlayViewGroup(Context paramContext, ViewGroup paramViewGroup, View paramView, ViewOverlay paramViewOverlay) {
    super(paramContext);
    this.mHostView = paramViewGroup;
    this.mRequestingView = paramView;
    setRight(paramViewGroup.getWidth());
    setBottom(paramViewGroup.getHeight());
    paramViewGroup.addView((View)this);
    this.mViewOverlay = paramViewOverlay;
  }
  
  private void getOffset(int[] paramArrayOfint) {
    int[] arrayOfInt1 = new int[2];
    int[] arrayOfInt2 = new int[2];
    ViewGroup viewGroup = (ViewGroup)getParent();
    this.mHostView.getLocationOnScreen(arrayOfInt1);
    this.mRequestingView.getLocationOnScreen(arrayOfInt2);
    paramArrayOfint[0] = arrayOfInt2[0] - arrayOfInt1[0];
    paramArrayOfint[1] = arrayOfInt2[1] - arrayOfInt1[1];
  }
  
  public void add(Drawable paramDrawable) {
    if (this.mDrawables == null)
      this.mDrawables = new ArrayList<Drawable>(); 
    if (!this.mDrawables.contains(paramDrawable)) {
      this.mDrawables.add(paramDrawable);
      invalidate(paramDrawable.getBounds());
      paramDrawable.setCallback((Drawable.Callback)this);
    } 
  }
  
  public void add(View paramView) {
    if (paramView.getParent() instanceof ViewGroup) {
      ViewGroup viewGroup = (ViewGroup)paramView.getParent();
      if (viewGroup != this.mHostView && viewGroup.getParent() != null) {
        int[] arrayOfInt1 = new int[2];
        int[] arrayOfInt2 = new int[2];
        viewGroup.getLocationOnScreen(arrayOfInt1);
        this.mHostView.getLocationOnScreen(arrayOfInt2);
        ViewCompat.offsetLeftAndRight(paramView, arrayOfInt1[0] - arrayOfInt2[0]);
        ViewCompat.offsetTopAndBottom(paramView, arrayOfInt1[1] - arrayOfInt2[1]);
      } 
      viewGroup.removeView(paramView);
      if (paramView.getParent() != null)
        viewGroup.removeView(paramView); 
    } 
    addView(paramView, getChildCount() - 1);
  }
  
  public void clear() {
    removeAllViews();
    if (this.mDrawables != null)
      this.mDrawables.clear(); 
  }
  
  protected void dispatchDraw(Canvas paramCanvas) {
    int i;
    int j = 0;
    int[] arrayOfInt1 = new int[2];
    int[] arrayOfInt2 = new int[2];
    ViewGroup viewGroup = (ViewGroup)getParent();
    this.mHostView.getLocationOnScreen(arrayOfInt1);
    this.mRequestingView.getLocationOnScreen(arrayOfInt2);
    paramCanvas.translate((arrayOfInt2[0] - arrayOfInt1[0]), (arrayOfInt2[1] - arrayOfInt1[1]));
    paramCanvas.clipRect(new Rect(0, 0, this.mRequestingView.getWidth(), this.mRequestingView.getHeight()));
    super.dispatchDraw(paramCanvas);
    if (this.mDrawables == null) {
      i = 0;
    } else {
      i = this.mDrawables.size();
    } 
    while (j < i) {
      ((Drawable)this.mDrawables.get(j)).draw(paramCanvas);
      j++;
    } 
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent) {
    return false;
  }
  
  public void invalidateChildFast(View paramView, Rect paramRect) {
    if (this.mHostView != null) {
      int i = paramView.getLeft();
      int j = paramView.getTop();
      int[] arrayOfInt = new int[2];
      getOffset(arrayOfInt);
      paramRect.offset(i + arrayOfInt[0], j + arrayOfInt[1]);
      this.mHostView.invalidate(paramRect);
    } 
  }
  
  public ViewParent invalidateChildInParent(int[] paramArrayOfint, Rect paramRect) {
    if (this.mHostView != null) {
      paramRect.offset(paramArrayOfint[0], paramArrayOfint[1]);
      if (this.mHostView instanceof ViewGroup) {
        paramArrayOfint[0] = 0;
        paramArrayOfint[1] = 0;
        int[] arrayOfInt = new int[2];
        getOffset(arrayOfInt);
        paramRect.offset(arrayOfInt[0], arrayOfInt[1]);
        return super.invalidateChildInParent(paramArrayOfint, paramRect);
      } 
      invalidate(paramRect);
    } 
    return null;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  protected ViewParent invalidateChildInParentFast(int paramInt1, int paramInt2, Rect paramRect) {
    if (this.mHostView instanceof ViewGroup && sInvalidateChildInParentFastMethod != null)
      try {
        getOffset(new int[2]);
        sInvalidateChildInParentFastMethod.invoke(this.mHostView, new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), paramRect });
      } catch (IllegalAccessException illegalAccessException) {
        illegalAccessException.printStackTrace();
      } catch (InvocationTargetException invocationTargetException) {
        invocationTargetException.printStackTrace();
      }  
    return null;
  }
  
  public void invalidateDrawable(Drawable paramDrawable) {
    invalidate(paramDrawable.getBounds());
  }
  
  boolean isEmpty() {
    return (getChildCount() == 0 && (this.mDrawables == null || this.mDrawables.size() == 0));
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
  
  public void remove(Drawable paramDrawable) {
    if (this.mDrawables != null) {
      this.mDrawables.remove(paramDrawable);
      invalidate(paramDrawable.getBounds());
      paramDrawable.setCallback(null);
    } 
  }
  
  public void remove(View paramView) {
    removeView(paramView);
    if (isEmpty())
      this.mHostView.removeView((View)this); 
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable) {
    return (super.verifyDrawable(paramDrawable) || (this.mDrawables != null && this.mDrawables.contains(paramDrawable)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\ViewOverlay$OverlayViewGroup.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */