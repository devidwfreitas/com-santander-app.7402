package android.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v7.app.ActionBar;
import android.support.v7.appcompat.R;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

class ScrollingTabContainerView$TabView extends LinearLayoutCompat implements View.OnLongClickListener {
  private final int[] BG_ATTRS = new int[] { 16842964 };
  
  private View mCustomView;
  
  private ImageView mIconView;
  
  private ActionBar.Tab mTab;
  
  private TextView mTextView;
  
  public ScrollingTabContainerView$TabView(Context paramContext, ActionBar.Tab paramTab, boolean paramBoolean) {
    super(paramContext, (AttributeSet)null, R.attr.actionBarTabStyle);
    this.mTab = paramTab;
    TintTypedArray tintTypedArray = TintTypedArray.obtainStyledAttributes(paramContext, null, this.BG_ATTRS, R.attr.actionBarTabStyle, 0);
    if (tintTypedArray.hasValue(0))
      setBackgroundDrawable(tintTypedArray.getDrawable(0)); 
    tintTypedArray.recycle();
    if (paramBoolean)
      setGravity(8388627); 
    update();
  }
  
  public void bindTab(ActionBar.Tab paramTab) {
    this.mTab = paramTab;
    update();
  }
  
  public ActionBar.Tab getTab() {
    return this.mTab;
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent) {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(ActionBar.Tab.class.getName());
  }
  
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo) {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    if (Build.VERSION.SDK_INT >= 14)
      paramAccessibilityNodeInfo.setClassName(ActionBar.Tab.class.getName()); 
  }
  
  public boolean onLongClick(View paramView) {
    int[] arrayOfInt = new int[2];
    getLocationOnScreen(arrayOfInt);
    Context context = getContext();
    int i = getWidth();
    int j = getHeight();
    int k = (context.getResources().getDisplayMetrics()).widthPixels;
    Toast toast = Toast.makeText(context, this.mTab.getContentDescription(), 0);
    toast.setGravity(49, arrayOfInt[0] + i / 2 - k / 2, j);
    toast.show();
    return true;
  }
  
  public void onMeasure(int paramInt1, int paramInt2) {
    super.onMeasure(paramInt1, paramInt2);
    if (ScrollingTabContainerView.this.mMaxTabWidth > 0 && getMeasuredWidth() > ScrollingTabContainerView.this.mMaxTabWidth)
      super.onMeasure(View.MeasureSpec.makeMeasureSpec(ScrollingTabContainerView.this.mMaxTabWidth, 1073741824), paramInt2); 
  }
  
  public void setSelected(boolean paramBoolean) {
    boolean bool;
    if (isSelected() != paramBoolean) {
      bool = true;
    } else {
      bool = false;
    } 
    super.setSelected(paramBoolean);
    if (bool && paramBoolean)
      sendAccessibilityEvent(4); 
  }
  
  public void update() {
    boolean bool;
    ViewParent viewParent;
    ActionBar.Tab tab = this.mTab;
    View view = tab.getCustomView();
    if (view != null) {
      viewParent = view.getParent();
      if (viewParent != this) {
        if (viewParent != null)
          ((ViewGroup)viewParent).removeView(view); 
        addView(view);
      } 
      this.mCustomView = view;
      if (this.mTextView != null)
        this.mTextView.setVisibility(8); 
      if (this.mIconView != null) {
        this.mIconView.setVisibility(8);
        this.mIconView.setImageDrawable(null);
      } 
      return;
    } 
    if (this.mCustomView != null) {
      removeView(this.mCustomView);
      this.mCustomView = null;
    } 
    Drawable drawable = viewParent.getIcon();
    CharSequence charSequence = viewParent.getText();
    if (drawable != null) {
      if (this.mIconView == null) {
        AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
        LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams = new LinearLayoutCompat$LayoutParams(-2, -2);
        linearLayoutCompat$LayoutParams.gravity = 16;
        appCompatImageView.setLayoutParams((ViewGroup.LayoutParams)linearLayoutCompat$LayoutParams);
        addView((View)appCompatImageView, 0);
        this.mIconView = appCompatImageView;
      } 
      this.mIconView.setImageDrawable(drawable);
      this.mIconView.setVisibility(0);
    } else if (this.mIconView != null) {
      this.mIconView.setVisibility(8);
      this.mIconView.setImageDrawable(null);
    } 
    if (!TextUtils.isEmpty(charSequence)) {
      bool = true;
    } else {
      bool = false;
    } 
    if (bool) {
      if (this.mTextView == null) {
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null, R.attr.actionBarTabTextStyle);
        appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
        LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams = new LinearLayoutCompat$LayoutParams(-2, -2);
        linearLayoutCompat$LayoutParams.gravity = 16;
        appCompatTextView.setLayoutParams((ViewGroup.LayoutParams)linearLayoutCompat$LayoutParams);
        addView((View)appCompatTextView);
        this.mTextView = appCompatTextView;
      } 
      this.mTextView.setText(charSequence);
      this.mTextView.setVisibility(0);
    } else if (this.mTextView != null) {
      this.mTextView.setVisibility(8);
      this.mTextView.setText(null);
    } 
    if (this.mIconView != null)
      this.mIconView.setContentDescription(viewParent.getContentDescription()); 
    if (!bool && !TextUtils.isEmpty(viewParent.getContentDescription())) {
      setOnLongClickListener(this);
      return;
    } 
    setOnLongClickListener(null);
    setLongClickable(false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ScrollingTabContainerView$TabView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */