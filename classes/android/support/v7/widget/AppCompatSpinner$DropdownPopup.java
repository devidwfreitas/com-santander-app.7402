package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ListAdapter;
import android.widget.SpinnerAdapter;

class AppCompatSpinner$DropdownPopup extends ListPopupWindow {
  ListAdapter mAdapter;
  
  private CharSequence mHintText;
  
  private final Rect mVisibleRect = new Rect();
  
  public AppCompatSpinner$DropdownPopup(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    setAnchorView((View)paramAppCompatSpinner);
    setModal(true);
    setPromptPosition(0);
    setOnItemClickListener(new AppCompatSpinner$DropdownPopup$1(this, paramAppCompatSpinner));
  }
  
  void computeContentWidth() {
    int i;
    Drawable drawable = getBackground();
    if (drawable != null) {
      drawable.getPadding(AppCompatSpinner.this.mTempRect);
      if (ViewUtils.isLayoutRtl((View)AppCompatSpinner.this)) {
        i = AppCompatSpinner.this.mTempRect.right;
      } else {
        i = -AppCompatSpinner.this.mTempRect.left;
      } 
    } else {
      Rect rect = AppCompatSpinner.this.mTempRect;
      AppCompatSpinner.this.mTempRect.right = 0;
      rect.left = 0;
      i = 0;
    } 
    int j = AppCompatSpinner.this.getPaddingLeft();
    int k = AppCompatSpinner.this.getPaddingRight();
    int m = AppCompatSpinner.this.getWidth();
    if (AppCompatSpinner.this.mDropDownWidth == -2) {
      int n = AppCompatSpinner.this.compatMeasureContentWidth((SpinnerAdapter)this.mAdapter, getBackground());
      int i1 = (AppCompatSpinner.this.getContext().getResources().getDisplayMetrics()).widthPixels - AppCompatSpinner.this.mTempRect.left - AppCompatSpinner.this.mTempRect.right;
      if (n > i1)
        n = i1; 
      setContentWidth(Math.max(n, m - j - k));
    } else if (AppCompatSpinner.this.mDropDownWidth == -1) {
      setContentWidth(m - j - k);
    } else {
      setContentWidth(AppCompatSpinner.this.mDropDownWidth);
    } 
    if (ViewUtils.isLayoutRtl((View)AppCompatSpinner.this)) {
      i = m - k - getWidth() + i;
    } else {
      i += j;
    } 
    setHorizontalOffset(i);
  }
  
  public CharSequence getHintText() {
    return this.mHintText;
  }
  
  boolean isVisibleToUser(View paramView) {
    return (ViewCompat.isAttachedToWindow(paramView) && paramView.getGlobalVisibleRect(this.mVisibleRect));
  }
  
  public void setAdapter(ListAdapter paramListAdapter) {
    super.setAdapter(paramListAdapter);
    this.mAdapter = paramListAdapter;
  }
  
  public void setPromptText(CharSequence paramCharSequence) {
    this.mHintText = paramCharSequence;
  }
  
  public void show() {
    boolean bool = isShowing();
    computeContentWidth();
    setInputMethodMode(2);
    super.show();
    getListView().setChoiceMode(1);
    setSelection(AppCompatSpinner.this.getSelectedItemPosition());
    if (!bool) {
      ViewTreeObserver viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
      if (viewTreeObserver != null) {
        AppCompatSpinner$DropdownPopup$2 appCompatSpinner$DropdownPopup$2 = new AppCompatSpinner$DropdownPopup$2(this);
        viewTreeObserver.addOnGlobalLayoutListener(appCompatSpinner$DropdownPopup$2);
        setOnDismissListener(new AppCompatSpinner$DropdownPopup$3(this, appCompatSpinner$DropdownPopup$2));
        return;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\AppCompatSpinner$DropdownPopup.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */