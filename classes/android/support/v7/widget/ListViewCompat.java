package android.support.v7.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import java.lang.reflect.Field;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class ListViewCompat extends ListView {
  public static final int INVALID_POSITION = -1;
  
  public static final int NO_POSITION = -1;
  
  private static final int[] STATE_SET_NOTHING = new int[] { 0 };
  
  private Field mIsChildViewEnabled;
  
  protected int mMotionPosition;
  
  int mSelectionBottomPadding = 0;
  
  int mSelectionLeftPadding = 0;
  
  int mSelectionRightPadding = 0;
  
  int mSelectionTopPadding = 0;
  
  private ListViewCompat$GateKeeperDrawable mSelector;
  
  final Rect mSelectorRect = new Rect();
  
  public ListViewCompat(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public ListViewCompat(Context paramContext, AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ListViewCompat(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    try {
      this.mIsChildViewEnabled = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
      this.mIsChildViewEnabled.setAccessible(true);
      return;
    } catch (NoSuchFieldException noSuchFieldException) {
      noSuchFieldException.printStackTrace();
      return;
    } 
  }
  
  protected void dispatchDraw(Canvas paramCanvas) {
    drawSelectorCompat(paramCanvas);
    super.dispatchDraw(paramCanvas);
  }
  
  protected void drawSelectorCompat(Canvas paramCanvas) {
    if (!this.mSelectorRect.isEmpty()) {
      Drawable drawable = getSelector();
      if (drawable != null) {
        drawable.setBounds(this.mSelectorRect);
        drawable.draw(paramCanvas);
      } 
    } 
  }
  
  protected void drawableStateChanged() {
    super.drawableStateChanged();
    setSelectorEnabled(true);
    updateSelectorStateCompat();
  }
  
  public int lookForSelectablePosition(int paramInt, boolean paramBoolean) {
    ListAdapter listAdapter = getAdapter();
    if (listAdapter == null || isInTouchMode())
      return -1; 
    int i = listAdapter.getCount();
    if (!getAdapter().areAllItemsEnabled()) {
      if (paramBoolean) {
        int j = Math.max(0, paramInt);
        while (true) {
          paramInt = j;
          if (j < i) {
            paramInt = j;
            if (!listAdapter.isEnabled(j)) {
              j++;
              continue;
            } 
          } 
          break;
        } 
      } else {
        int j = Math.min(paramInt, i - 1);
        while (true) {
          paramInt = j;
          if (j >= 0) {
            paramInt = j;
            if (!listAdapter.isEnabled(j)) {
              j--;
              continue;
            } 
          } 
          break;
        } 
      } 
      if (paramInt >= 0) {
        int j = paramInt;
        return (paramInt >= i) ? -1 : j;
      } 
      return -1;
    } 
    if (paramInt >= 0) {
      int j = paramInt;
      return (paramInt >= i) ? -1 : j;
    } 
    return -1;
  }
  
  public int measureHeightOfChildrenCompat(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5) {
    paramInt2 = getListPaddingTop();
    int i = getListPaddingBottom();
    getListPaddingLeft();
    getListPaddingRight();
    paramInt3 = getDividerHeight();
    Drawable drawable = getDivider();
    ListAdapter listAdapter = getAdapter();
    if (listAdapter == null)
      return paramInt2 + i; 
    paramInt2 = i + paramInt2;
    if (paramInt3 <= 0 || drawable == null)
      paramInt3 = 0; 
    int j = 0;
    drawable = null;
    int k = 0;
    int m = listAdapter.getCount();
    i = 0;
    while (i < m) {
      int n = listAdapter.getItemViewType(i);
      if (n != k) {
        drawable = null;
        k = n;
      } 
      View view2 = listAdapter.getView(i, (View)drawable, (ViewGroup)this);
      ViewGroup.LayoutParams layoutParams2 = view2.getLayoutParams();
      ViewGroup.LayoutParams layoutParams1 = layoutParams2;
      if (layoutParams2 == null) {
        layoutParams1 = generateDefaultLayoutParams();
        view2.setLayoutParams(layoutParams1);
      } 
      if (layoutParams1.height > 0) {
        n = View.MeasureSpec.makeMeasureSpec(layoutParams1.height, 1073741824);
      } else {
        n = View.MeasureSpec.makeMeasureSpec(0, 0);
      } 
      view2.measure(paramInt1, n);
      view2.forceLayout();
      if (i > 0)
        paramInt2 += paramInt3; 
      paramInt2 += view2.getMeasuredHeight();
      if (paramInt2 >= paramInt4) {
        paramInt1 = paramInt4;
        if (paramInt5 >= 0) {
          paramInt1 = paramInt4;
          if (i > paramInt5) {
            paramInt1 = paramInt4;
            if (j) {
              paramInt1 = paramInt4;
              if (paramInt2 != paramInt4)
                return j; 
            } 
          } 
        } 
        return paramInt1;
      } 
      n = j;
      if (paramInt5 >= 0) {
        n = j;
        if (i >= paramInt5)
          n = paramInt2; 
      } 
      i++;
      j = n;
      View view1 = view2;
    } 
    return paramInt2;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent) {
    switch (paramMotionEvent.getAction()) {
      default:
        return super.onTouchEvent(paramMotionEvent);
      case 0:
        break;
    } 
    this.mMotionPosition = pointToPosition((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
  }
  
  protected void positionSelectorCompat(int paramInt, View paramView) {
    Rect rect = this.mSelectorRect;
    rect.set(paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom());
    rect.left -= this.mSelectionLeftPadding;
    rect.top -= this.mSelectionTopPadding;
    rect.right += this.mSelectionRightPadding;
    rect.bottom += this.mSelectionBottomPadding;
    try {
      boolean bool = this.mIsChildViewEnabled.getBoolean(this);
      if (paramView.isEnabled() != bool) {
        Field field = this.mIsChildViewEnabled;
        if (!bool) {
          bool = true;
        } else {
          bool = false;
        } 
        field.set(this, Boolean.valueOf(bool));
        if (paramInt != -1)
          refreshDrawableState(); 
      } 
      return;
    } catch (IllegalAccessException illegalAccessException) {
      illegalAccessException.printStackTrace();
      return;
    } 
  }
  
  protected void positionSelectorLikeFocusCompat(int paramInt, View paramView) {
    boolean bool1;
    boolean bool2 = true;
    Drawable drawable = getSelector();
    if (drawable != null && paramInt != -1) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if (bool1)
      drawable.setVisible(false, false); 
    positionSelectorCompat(paramInt, paramView);
    if (bool1) {
      Rect rect = this.mSelectorRect;
      float f1 = rect.exactCenterX();
      float f2 = rect.exactCenterY();
      if (getVisibility() != 0)
        bool2 = false; 
      drawable.setVisible(bool2, false);
      DrawableCompat.setHotspot(drawable, f1, f2);
    } 
  }
  
  protected void positionSelectorLikeTouchCompat(int paramInt, View paramView, float paramFloat1, float paramFloat2) {
    positionSelectorLikeFocusCompat(paramInt, paramView);
    Drawable drawable = getSelector();
    if (drawable != null && paramInt != -1)
      DrawableCompat.setHotspot(drawable, paramFloat1, paramFloat2); 
  }
  
  public void setSelector(Drawable paramDrawable) {
    ListViewCompat$GateKeeperDrawable listViewCompat$GateKeeperDrawable;
    if (paramDrawable != null) {
      listViewCompat$GateKeeperDrawable = new ListViewCompat$GateKeeperDrawable(paramDrawable);
    } else {
      listViewCompat$GateKeeperDrawable = null;
    } 
    this.mSelector = listViewCompat$GateKeeperDrawable;
    super.setSelector((Drawable)this.mSelector);
    Rect rect = new Rect();
    if (paramDrawable != null)
      paramDrawable.getPadding(rect); 
    this.mSelectionLeftPadding = rect.left;
    this.mSelectionTopPadding = rect.top;
    this.mSelectionRightPadding = rect.right;
    this.mSelectionBottomPadding = rect.bottom;
  }
  
  protected void setSelectorEnabled(boolean paramBoolean) {
    if (this.mSelector != null)
      this.mSelector.setEnabled(paramBoolean); 
  }
  
  protected boolean shouldShowSelectorCompat() {
    return (touchModeDrawsInPressedStateCompat() && isPressed());
  }
  
  protected boolean touchModeDrawsInPressedStateCompat() {
    return false;
  }
  
  protected void updateSelectorStateCompat() {
    Drawable drawable = getSelector();
    if (drawable != null && shouldShowSelectorCompat())
      drawable.setState(getDrawableState()); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ListViewCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */