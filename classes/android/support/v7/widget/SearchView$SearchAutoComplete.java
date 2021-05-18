package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.support.annotation.RestrictTo;
import android.support.v4.content.res.ConfigurationHelper;
import android.support.v7.appcompat.R;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class SearchView$SearchAutoComplete extends AppCompatAutoCompleteTextView {
  private SearchView mSearchView;
  
  private int mThreshold = getThreshold();
  
  public SearchView$SearchAutoComplete(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public SearchView$SearchAutoComplete(Context paramContext, AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, R.attr.autoCompleteTextViewStyle);
  }
  
  public SearchView$SearchAutoComplete(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private int getSearchViewTextMinWidthDp() {
    Configuration configuration = getResources().getConfiguration();
    int i = ConfigurationHelper.getScreenWidthDp(getResources());
    int j = ConfigurationHelper.getScreenHeightDp(getResources());
    return (i >= 960 && j >= 720 && configuration.orientation == 2) ? 256 : ((i >= 600 || (i >= 640 && j >= 480)) ? 192 : 160);
  }
  
  private boolean isEmpty() {
    return (TextUtils.getTrimmedLength((CharSequence)getText()) == 0);
  }
  
  public boolean enoughToFilter() {
    return (this.mThreshold <= 0 || super.enoughToFilter());
  }
  
  protected void onFinishInflate() {
    super.onFinishInflate();
    DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
    setMinWidth((int)TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), displayMetrics));
  }
  
  protected void onFocusChanged(boolean paramBoolean, int paramInt, Rect paramRect) {
    super.onFocusChanged(paramBoolean, paramInt, paramRect);
    this.mSearchView.onTextFocusChanged();
  }
  
  public boolean onKeyPreIme(int paramInt, KeyEvent paramKeyEvent) {
    if (paramInt == 4) {
      if (paramKeyEvent.getAction() == 0 && paramKeyEvent.getRepeatCount() == 0) {
        KeyEvent.DispatcherState dispatcherState = getKeyDispatcherState();
        if (dispatcherState != null)
          dispatcherState.startTracking(paramKeyEvent, this); 
        return true;
      } 
      if (paramKeyEvent.getAction() == 1) {
        KeyEvent.DispatcherState dispatcherState = getKeyDispatcherState();
        if (dispatcherState != null)
          dispatcherState.handleUpEvent(paramKeyEvent); 
        if (paramKeyEvent.isTracking() && !paramKeyEvent.isCanceled()) {
          this.mSearchView.clearFocus();
          this.mSearchView.setImeVisibility(false);
          return true;
        } 
      } 
    } 
    return super.onKeyPreIme(paramInt, paramKeyEvent);
  }
  
  public void onWindowFocusChanged(boolean paramBoolean) {
    super.onWindowFocusChanged(paramBoolean);
    if (paramBoolean && this.mSearchView.hasFocus() && getVisibility() == 0) {
      ((InputMethodManager)getContext().getSystemService("input_method")).showSoftInput((View)this, 0);
      if (SearchView.isLandscapeMode(getContext()))
        SearchView.HIDDEN_METHOD_INVOKER.ensureImeVisible(this, true); 
    } 
  }
  
  public void performCompletion() {}
  
  protected void replaceText(CharSequence paramCharSequence) {}
  
  void setSearchView(SearchView paramSearchView) {
    this.mSearchView = paramSearchView;
  }
  
  public void setThreshold(int paramInt) {
    super.setThreshold(paramInt);
    this.mThreshold = paramInt;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\SearchView$SearchAutoComplete.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */