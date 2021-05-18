package com.jeremyfeinstein.slidingmenu.lib;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import fbt;
import fcb;

public class CustomViewBehind extends ViewGroup {
  private static final String a = "CustomViewBehind";
  
  private static final int b = 48;
  
  private int c = 0;
  
  private CustomViewAbove d;
  
  private View e;
  
  private View f;
  
  private int g = (int)TypedValue.applyDimension(1, 48.0F, getResources().getDisplayMetrics());
  
  private int h;
  
  private fcb i;
  
  private boolean j;
  
  private int k;
  
  private boolean l;
  
  private final Paint m = new Paint();
  
  private float n;
  
  private Drawable o;
  
  private Drawable p;
  
  private int q;
  
  private float r;
  
  private boolean s = true;
  
  private Bitmap t;
  
  private View u;
  
  public CustomViewBehind(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public CustomViewBehind(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  private int g() {
    return this.u.getTop() + (this.u.getHeight() - this.t.getHeight()) / 2;
  }
  
  public int a() {
    return this.g;
  }
  
  public int a(int paramInt) {
    int i;
    if (paramInt > 1) {
      i = 2;
    } else {
      i = paramInt;
      if (paramInt < 1)
        i = 0; 
    } 
    return (this.k == 0 && i > 1) ? 0 : ((this.k == 1 && i < 1) ? 2 : i);
  }
  
  public int a(View paramView) {
    return (this.k == 0 || this.k == 2) ? (paramView.getLeft() - b()) : ((this.k == 1) ? paramView.getLeft() : 0);
  }
  
  public int a(View paramView, int paramInt) {
    if (this.k == 0) {
      switch (paramInt) {
        default:
          return paramView.getLeft();
        case 0:
          return paramView.getLeft() - b();
        case 2:
          break;
      } 
      return paramView.getLeft();
    } 
    if (this.k == 1) {
      switch (paramInt) {
        default:
        
        case 0:
          return paramView.getLeft();
        case 2:
          break;
      } 
      return paramView.getLeft() + b();
    } 
    if (this.k == 2) {
      switch (paramInt) {
        default:
        
        case 0:
          return paramView.getLeft() - b();
        case 2:
          break;
      } 
      return paramView.getLeft() + b();
    } 
  }
  
  public void a(View paramView, int paramInt1, int paramInt2) {
    boolean bool2 = false;
    boolean bool3 = false;
    boolean bool1 = false;
    byte b = 0;
    if (this.k == 0) {
      if (paramInt1 >= paramView.getLeft())
        b = 4; 
      scrollTo((int)((b() + paramInt1) * this.n), paramInt2);
    } else if (this.k == 1) {
      b = bool3;
      if (paramInt1 <= paramView.getLeft())
        b = 4; 
      scrollTo((int)((b() - getWidth()) + (paramInt1 - b()) * this.n), paramInt2);
    } else {
      b = bool2;
      if (this.k == 2) {
        View view = this.e;
        if (paramInt1 >= paramView.getLeft()) {
          b = 4;
        } else {
          b = 0;
        } 
        view.setVisibility(b);
        view = this.f;
        if (paramInt1 <= paramView.getLeft()) {
          b = 4;
        } else {
          b = 0;
        } 
        view.setVisibility(b);
        b = bool1;
        if (paramInt1 == 0)
          b = 4; 
        if (paramInt1 <= paramView.getLeft()) {
          scrollTo((int)((b() + paramInt1) * this.n), paramInt2);
        } else {
          scrollTo((int)((b() - getWidth()) + (paramInt1 - b()) * this.n), paramInt2);
        } 
      } 
    } 
    if (b == 4)
      Log.v("CustomViewBehind", "behind INVISIBLE"); 
    setVisibility(b);
  }
  
  public void a(View paramView, Canvas paramCanvas) {
    byte b;
    if (this.o == null || this.q <= 0)
      return; 
    if (this.k == 0) {
      b = paramView.getLeft() - this.q;
    } else if (this.k == 1) {
      b = paramView.getRight();
    } else if (this.k == 2) {
      if (this.p != null) {
        int i = paramView.getRight();
        this.p.setBounds(i, 0, this.q + i, getHeight());
        this.p.draw(paramCanvas);
      } 
      b = paramView.getLeft() - this.q;
    } else {
      b = 0;
    } 
    this.o.setBounds(b, 0, this.q + b, getHeight());
    this.o.draw(paramCanvas);
  }
  
  public void a(View paramView, Canvas paramCanvas, float paramFloat) {
    int i = 0;
    if (!this.l)
      return; 
    int j = (int)(this.r * 255.0F * Math.abs(1.0F - paramFloat));
    this.m.setColor(Color.argb(j, 0, 0, 0));
    if (this.k == 0) {
      j = paramView.getLeft() - b();
      i = paramView.getLeft();
    } else if (this.k == 1) {
      j = paramView.getRight();
      i = paramView.getRight() + b();
    } else if (this.k == 2) {
      i = paramView.getLeft();
      j = b();
      int k = paramView.getLeft();
      paramCanvas.drawRect((i - j), 0.0F, k, getHeight(), this.m);
      j = paramView.getRight();
      i = paramView.getRight() + b();
    } else {
      j = 0;
    } 
    paramCanvas.drawRect(j, 0.0F, i, getHeight(), this.m);
  }
  
  public boolean a(float paramFloat) {
    return (this.k == 0) ? (!(paramFloat <= 0.0F)) : ((this.k == 1) ? (!(paramFloat >= 0.0F)) : (!(this.k != 2)));
  }
  
  public boolean a(View paramView, int paramInt, float paramFloat) {
    switch (this.c) {
      default:
        return false;
      case 1:
        return true;
      case 0:
        break;
    } 
    return b(paramView, paramInt, paramFloat);
  }
  
  public int b() {
    return this.e.getWidth();
  }
  
  public int b(View paramView) {
    return (this.k == 0) ? paramView.getLeft() : ((this.k == 1 || this.k == 2) ? (paramView.getLeft() + b()) : 0);
  }
  
  public void b(View paramView, Canvas paramCanvas, float paramFloat) {
    if (this.s && this.t != null && this.u != null && ((String)this.u.getTag(fbt.selected_view)).equals("CustomViewBehindSelectedView")) {
      paramCanvas.save();
      int i = (int)(this.t.getWidth() * paramFloat);
      if (this.k == 0) {
        int j = paramView.getLeft();
        i = j - i;
        paramCanvas.clipRect(i, 0, j, getHeight());
        paramCanvas.drawBitmap(this.t, i, g(), null);
      } else if (this.k == 1) {
        int j = paramView.getRight();
        i += j;
        paramCanvas.clipRect(j, 0, i, getHeight());
        paramCanvas.drawBitmap(this.t, (i - this.t.getWidth()), g(), null);
      } 
      paramCanvas.restore();
      return;
    } 
  }
  
  public boolean b(float paramFloat) {
    return (this.k == 0) ? (!(paramFloat >= 0.0F)) : ((this.k == 1) ? (!(paramFloat <= 0.0F)) : (!(this.k != 2)));
  }
  
  public boolean b(View paramView, int paramInt) {
    int i = paramView.getLeft();
    int j = paramView.getRight();
    return (this.k == 0) ? (!(paramInt < i || paramInt > i + this.g)) : ((this.k == 1) ? (!(paramInt > j || paramInt < j - this.g)) : ((this.k == 2) ? (!((paramInt < i || paramInt > i + this.g) && (paramInt > j || paramInt < j - this.g))) : false));
  }
  
  public boolean b(View paramView, int paramInt, float paramFloat) {
    return (this.k == 0 || (this.k == 2 && paramInt == 0)) ? (!(paramFloat < paramView.getLeft())) : ((this.k == 1 || (this.k == 2 && paramInt == 2)) ? (!(paramFloat > paramView.getRight())) : false);
  }
  
  public View c() {
    return this.e;
  }
  
  public View d() {
    return this.f;
  }
  
  protected void dispatchDraw(Canvas paramCanvas) {
    if (this.i != null) {
      paramCanvas.save();
      this.i.a(paramCanvas, this.d.j());
      super.dispatchDraw(paramCanvas);
      paramCanvas.restore();
      return;
    } 
    super.dispatchDraw(paramCanvas);
  }
  
  public int e() {
    return this.k;
  }
  
  public float f() {
    return this.n;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent) {
    return !this.j;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    paramInt1 = paramInt3 - paramInt1;
    paramInt2 = paramInt4 - paramInt2;
    this.e.layout(0, 0, paramInt1 - this.h, paramInt2);
    if (this.f != null)
      this.f.layout(0, 0, paramInt1 - this.h, paramInt2); 
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    int j = getDefaultSize(0, paramInt1);
    int i = getDefaultSize(0, paramInt2);
    setMeasuredDimension(j, i);
    paramInt1 = getChildMeasureSpec(paramInt1, 0, j - this.h);
    paramInt2 = getChildMeasureSpec(paramInt2, 0, i);
    this.e.measure(paramInt1, paramInt2);
    if (this.f != null)
      this.f.measure(paramInt1, paramInt2); 
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent) {
    return !this.j;
  }
  
  public void scrollTo(int paramInt1, int paramInt2) {
    super.scrollTo(paramInt1, paramInt2);
    if (this.i != null)
      invalidate(); 
  }
  
  public void setCanvasTransformer(fcb paramfcb) {
    this.i = paramfcb;
  }
  
  public void setChildrenEnabled(boolean paramBoolean) {
    this.j = paramBoolean;
  }
  
  public void setContent(View paramView) {
    if (this.e != null)
      removeView(this.e); 
    this.e = paramView;
    addView(this.e);
  }
  
  public void setCustomViewAbove(CustomViewAbove paramCustomViewAbove) {
    this.d = paramCustomViewAbove;
  }
  
  public void setFadeDegree(float paramFloat) {
    if (paramFloat > 1.0F || paramFloat < 0.0F)
      throw new IllegalStateException("The BehindFadeDegree must be between 0.0f and 1.0f"); 
    this.r = paramFloat;
  }
  
  public void setFadeEnabled(boolean paramBoolean) {
    this.l = paramBoolean;
  }
  
  public void setMarginThreshold(int paramInt) {
    this.g = paramInt;
  }
  
  public void setMode(int paramInt) {
    if (paramInt == 0 || paramInt == 1) {
      if (this.e != null)
        this.e.setVisibility(0); 
      if (this.f != null)
        this.f.setVisibility(4); 
    } 
    this.k = paramInt;
  }
  
  public void setScrollScale(float paramFloat) {
    this.n = paramFloat;
  }
  
  public void setSecondaryContent(View paramView) {
    if (this.f != null)
      removeView(this.f); 
    this.f = paramView;
    addView(this.f);
  }
  
  public void setSecondaryShadowDrawable(Drawable paramDrawable) {
    this.p = paramDrawable;
    invalidate();
  }
  
  public void setSelectedView(View paramView) {
    if (this.u != null) {
      this.u.setTag(fbt.selected_view, null);
      this.u = null;
    } 
    if (paramView != null && paramView.getParent() != null) {
      this.u = paramView;
      this.u.setTag(fbt.selected_view, "CustomViewBehindSelectedView");
      invalidate();
    } 
  }
  
  public void setSelectorBitmap(Bitmap paramBitmap) {
    this.t = paramBitmap;
    refreshDrawableState();
  }
  
  public void setSelectorEnabled(boolean paramBoolean) {
    this.s = paramBoolean;
  }
  
  public void setShadowDrawable(Drawable paramDrawable) {
    this.o = paramDrawable;
    invalidate();
  }
  
  public void setShadowWidth(int paramInt) {
    this.q = paramInt;
    invalidate();
  }
  
  public void setTouchMode(int paramInt) {
    this.c = paramInt;
  }
  
  public void setWidthOffset(int paramInt) {
    this.h = paramInt;
    requestLayout();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\jeremyfeinstein\slidingmenu\lib\CustomViewBehind.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */