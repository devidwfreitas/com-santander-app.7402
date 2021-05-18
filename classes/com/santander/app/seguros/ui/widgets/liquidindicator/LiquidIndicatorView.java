package com.santander.app.seguros.ui.widgets.liquidindicator;

import android.content.Context;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import java.util.Stack;
import mfn;
import mfo;

public class LiquidIndicatorView extends FrameLayout {
  private RelativeLayout a;
  
  private View b;
  
  private LinearLayout c;
  
  private int d = 0;
  
  private Stack<mfo> e = new Stack<mfo>();
  
  public LiquidIndicatorView(Context paramContext) {
    super(paramContext);
    d();
  }
  
  public LiquidIndicatorView(Context paramContext, @Nullable AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    d();
  }
  
  private boolean a(mfn parammfn) {
    return (parammfn == mfn.WAVE_GREEN_ONE || parammfn == mfn.WAVE_GREEN_TWO || parammfn == mfn.WAVE_GREEN_THREE);
  }
  
  private void d() {
    LayoutInflater.from(getContext()).inflate(2130969315, (ViewGroup)this);
    e();
  }
  
  private void e() {
    this.a = (RelativeLayout)findViewById(2131758918);
    this.c = (LinearLayout)findViewById(2131758919);
  }
  
  public void a(mfn parammfn, boolean paramBoolean) {
    if (parammfn != null)
      try {
        if (this.d <= this.c.getChildCount() - 1) {
          int i;
          if (paramBoolean)
            this.d++; 
          mfo mfo = new mfo(this);
          mfo.a(parammfn);
          mfo.a(this.d);
          this.e.add(mfo);
          LinearLayout linearLayout = this.c;
          if (this.d < 0) {
            i = 0;
          } else {
            i = this.d;
          } 
          ((LiquidIndicatorItem)linearLayout.getChildAt(i)).a(parammfn);
          if (this.d > 0) {
            ((LiquidIndicatorItem)this.c.getChildAt(this.d - 1)).a();
            return;
          } 
        } 
      } catch (Exception exception) {
        exception.printStackTrace();
      }  
  }
  
  public void a(String... paramVarArgs) {
    int i = 0;
    if (paramVarArgs != null)
      try {
        this.d = 0;
        while (i < paramVarArgs.length) {
          String str = paramVarArgs[i];
          LiquidIndicatorItem liquidIndicatorItem = new LiquidIndicatorItem(getContext());
          liquidIndicatorItem.setText(str);
          if (i == 0) {
            liquidIndicatorItem.b();
          } else if (i > 0) {
            liquidIndicatorItem.setPadding((int)getResources().getDimension(2131361893), 0, 0, 0);
            if (i == paramVarArgs.length - 1)
              liquidIndicatorItem.c(); 
          } 
          this.c.addView((View)liquidIndicatorItem);
          i++;
        } 
      } catch (Exception exception) {
        exception.printStackTrace();
      }  
  }
  
  public boolean a() {
    return (this.d < this.c.getChildCount() - 1);
  }
  
  public void b() {
    for (int i = 0; i < this.c.getChildCount(); i++) {
      View view = this.c.getChildAt(i);
      if (view instanceof LiquidIndicatorItem)
        ((LiquidIndicatorItem)view).b(mfn.DEFAULT_GRAY); 
    } 
    this.e.clear();
    this.d = 0;
  }
  
  public void c() {
    try {
      if (this.e != null && this.e.size() > 0) {
        mfo mfo1 = this.e.pop();
        if (this.e.empty()) {
          ((LiquidIndicatorItem)this.c.getChildAt(mfo1.a())).b(mfn.DEFAULT_GRAY);
          this.d = 0;
          return;
        } 
        mfo mfo2 = this.e.lastElement();
        LiquidIndicatorItem liquidIndicatorItem1 = (LiquidIndicatorItem)this.c.getChildAt(mfo2.a());
        LiquidIndicatorItem liquidIndicatorItem2 = (LiquidIndicatorItem)this.c.getChildAt(mfo1.a());
        if (mfo1.a() == mfo2.a()) {
          liquidIndicatorItem2.b(mfo2.b());
        } else {
          liquidIndicatorItem2.b(mfn.DEFAULT_GRAY);
          liquidIndicatorItem1.b(mfo2.b());
        } 
        this.d = mfo2.a();
        return;
      } 
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\liquidindicator\LiquidIndicatorView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */