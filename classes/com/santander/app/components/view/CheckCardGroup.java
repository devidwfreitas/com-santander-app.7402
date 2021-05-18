package com.santander.app.components.view;

import android.content.Context;
import android.support.annotation.IdRes;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import gop;
import goq;
import gor;
import goy;
import java.util.ArrayList;
import java.util.List;

public class CheckCardGroup extends LinearLayout {
  private List<CheckCardView> a;
  
  private gor b;
  
  private ViewGroup.OnHierarchyChangeListener c;
  
  private boolean d = true;
  
  private goy e = (goy)new goq(this);
  
  public CheckCardGroup(Context paramContext) {
    super(paramContext);
    a();
  }
  
  public CheckCardGroup(Context paramContext, @Nullable AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public CheckCardGroup(Context paramContext, @Nullable AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  private void a() {
    setPadding(0, 0, 0, 10);
    this.a = new ArrayList<CheckCardView>();
    super.setOnHierarchyChangeListener((ViewGroup.OnHierarchyChangeListener)new gop(this));
  }
  
  public void a(boolean paramBoolean) {
    this.d = paramBoolean;
  }
  
  public void addView(View paramView) {
    if (paramView != null && paramView instanceof CheckCardView)
      super.addView(paramView); 
  }
  
  public void addView(View paramView, int paramInt) {
    if (paramView != null && paramView instanceof CheckCardView)
      super.addView(paramView, paramInt); 
  }
  
  public void addView(View paramView, int paramInt1, int paramInt2) {
    if (paramView != null && paramView instanceof CheckCardView)
      super.addView(paramView, paramInt1, paramInt2); 
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams) {
    if (paramView != null && paramView instanceof CheckCardView)
      super.addView(paramView, paramInt, paramLayoutParams); 
  }
  
  public void addView(View paramView, ViewGroup.LayoutParams paramLayoutParams) {
    if (paramView != null && paramView instanceof CheckCardView)
      super.addView(paramView, paramLayoutParams); 
  }
  
  public void removeAllViews() {
    this.a.clear();
    super.removeAllViews();
  }
  
  public void setCheckedItem(@IdRes int paramInt) {
    for (CheckCardView checkCardView : this.a) {
      if (checkCardView.getId() == paramInt)
        checkCardView.setChecked(true); 
    } 
  }
  
  public void setCheckedItem(CheckCardView paramCheckCardView) {
    setCheckedItem(paramCheckCardView.getId());
  }
  
  public void setOnCheckedChangeListener(gor paramgor) {
    this.b = paramgor;
  }
  
  public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener paramOnHierarchyChangeListener) {
    this.c = paramOnHierarchyChangeListener;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\components\view\CheckCardGroup.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */