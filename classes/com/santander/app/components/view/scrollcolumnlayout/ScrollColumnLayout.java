package com.santander.app.components.view.scrollcolumnlayout;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import flv;
import gug;
import guh;

public class ScrollColumnLayout extends FrameLayout {
  private int a;
  
  private guh b;
  
  private LinearLayout c;
  
  private Adapter d;
  
  public ScrollColumnLayout(Context paramContext) {
    super(paramContext);
    a();
  }
  
  public ScrollColumnLayout(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, flv.ScrollColumnLayout);
    this.a = typedArray.getInt(0, 0);
    typedArray.recycle();
    a();
  }
  
  private View.OnClickListener a(int paramInt) {
    return (View.OnClickListener)new gug(this, paramInt);
  }
  
  private void a() {
    inflate(getContext(), 2130969331, (ViewGroup)this);
    this.c = (LinearLayout)findViewById(2131758990);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    super.onMeasure(paramInt1, paramInt2);
    for (paramInt1 = 0; paramInt1 < this.c.getChildCount(); paramInt1++) {
      View view = this.c.getChildAt(paramInt1);
      paramInt2 = getMeasuredWidth() / this.a;
      double d = paramInt2;
      paramInt2 = (int)(paramInt2 / this.a * 0.5D + d);
      ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
      layoutParams.width = paramInt2;
      view.setLayoutParams(layoutParams);
    } 
  }
  
  public void setAdapter(Adapter paramAdapter) {
    View view = null;
    this.d = paramAdapter;
    for (int i = 0; i < paramAdapter.getCount(); i++) {
      view = paramAdapter.getView(i, view, (ViewGroup)this.c);
      view.setId(i);
      view.setOnClickListener(a(i));
      this.c.addView(view);
    } 
  }
  
  public void setOnItemClickListener(guh paramguh) {
    this.b = paramguh;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\components\view\scrollcolumnlayout\ScrollColumnLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */