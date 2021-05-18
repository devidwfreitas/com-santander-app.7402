package com.santander.app.seguros.ui.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Interpolator;
import flv;
import java.lang.reflect.Field;
import mcc;
import mhh;

public class MultiViewPager extends ViewPager {
  private mcc a;
  
  private int b = -1;
  
  private int c = -1;
  
  private int d;
  
  private boolean e;
  
  private final Point f;
  
  private final Point g;
  
  private mhh h = null;
  
  public MultiViewPager(Context paramContext) {
    super(paramContext);
    b();
    this.f = new Point();
    this.g = new Point();
  }
  
  public MultiViewPager(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    b();
    a(paramContext, paramAttributeSet);
    this.f = new Point();
    this.g = new Point();
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet) {
    setClipChildren(false);
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, flv.MultiViewPager);
    setMaxWidth(typedArray.getDimensionPixelSize(0, -1));
    setMaxHeight(typedArray.getDimensionPixelSize(1, -1));
    setMatchChildWidth(typedArray.getResourceId(2, 0));
    typedArray.recycle();
  }
  
  private static void a(Point paramPoint1, Point paramPoint2) {
    if (paramPoint2.x >= 0 && paramPoint1.x > paramPoint2.x)
      paramPoint1.x = paramPoint2.x; 
    if (paramPoint2.y >= 0 && paramPoint1.y > paramPoint2.y)
      paramPoint1.y = paramPoint2.y; 
  }
  
  private void b() {
    try {
      Field field1 = ViewPager.class.getDeclaredField("mScroller");
      field1.setAccessible(true);
      Field field2 = ViewPager.class.getDeclaredField("sInterpolator");
      field2.setAccessible(true);
      this.h = new mhh(getContext(), (Interpolator)field2.get(null));
      field1.set(this, this.h);
      return;
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return;
    } 
  }
  
  public mcc a() {
    return this.a;
  }
  
  protected void a(int paramInt1, int paramInt2) {
    if (this.e) {
      if (this.d == 0) {
        this.e = false;
        return;
      } 
      if (getChildCount() > 0) {
        View view = getChildAt(0);
        view.measure(paramInt1, paramInt2);
        paramInt1 = view.getMeasuredWidth();
        view = view.findViewById(this.d);
        if (view == null)
          throw new NullPointerException("MatchWithChildResId did not find that ID in the first fragment of the ViewPager; is that view defined in the child view's layout? Note that MultiViewPager only measures the child for index 0."); 
        paramInt2 = view.getMeasuredWidth();
        if (paramInt2 > 0) {
          this.e = false;
          setPageMargin(-(paramInt1 - paramInt2));
          setOffscreenPageLimit((int)Math.ceil((paramInt1 / paramInt2)) + 1);
          requestLayout();
          return;
        } 
      } 
    } 
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    this.f.set(View.MeasureSpec.getSize(paramInt1), View.MeasureSpec.getSize(paramInt2));
    if (this.b >= 0 || this.c >= 0) {
      this.g.set(this.b, this.c);
      a(this.f, this.g);
      paramInt1 = View.MeasureSpec.makeMeasureSpec(this.f.x, 1073741824);
      paramInt2 = View.MeasureSpec.makeMeasureSpec(this.f.y, 1073741824);
    } 
    super.onMeasure(paramInt1, paramInt2);
    a(paramInt1, paramInt2);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent) {
    if (paramMotionEvent.getAction() == 2) {
      if (a() != null)
        this.a.a(2); 
      return super.onTouchEvent(paramMotionEvent);
    } 
    if ((paramMotionEvent.getAction() == 1 || paramMotionEvent.getAction() == 3) && a() != null)
      this.a.a(1); 
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void setListener(mcc parammcc) {
    this.a = parammcc;
  }
  
  public void setMatchChildWidth(int paramInt) {
    if (this.d != paramInt) {
      this.d = paramInt;
      this.e = true;
    } 
  }
  
  public void setMaxHeight(int paramInt) {
    this.c = paramInt;
  }
  
  public void setMaxWidth(int paramInt) {
    this.b = paramInt;
  }
  
  public void setScrollDurationFactor(double paramDouble) {
    this.h.a(paramDouble);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\MultiViewPager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */