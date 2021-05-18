package com.bartoszlipinski.recyclerviewheader2;

import android.content.Context;
import android.support.annotation.CallSuper;
import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import bfb;
import bfc;
import bfe;
import bff;
import bfg;

public class RecyclerViewHeader extends RelativeLayout {
  private int a = 0;
  
  private int b;
  
  private boolean c = false;
  
  private boolean d;
  
  private boolean e;
  
  private boolean f;
  
  private bfg g;
  
  private bff h;
  
  public RecyclerViewHeader(Context paramContext) {
    super(paramContext);
  }
  
  public RecyclerViewHeader(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  public RecyclerViewHeader(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void b() {
    int i;
    boolean bool;
    if (this.g.a() && !this.h.b()) {
      bool = true;
    } else {
      bool = false;
    } 
    this.c = bool;
    if (this.c) {
      i = 4;
    } else {
      i = this.a;
    } 
    a(this, i);
    if (!this.c) {
      i = c();
      if (this.e) {
        setTranslationY(i);
        return;
      } 
    } else {
      return;
    } 
    setTranslationX(i);
  }
  
  private void b(RecyclerView paramRecyclerView) {
    if (paramRecyclerView.getLayoutManager() == null)
      throw new IllegalStateException("Be sure to attach RecyclerViewHeader after setting your RecyclerView's LayoutManager."); 
  }
  
  private int c() {
    int i = this.g.a(this.e);
    if (this.h.c()) {
      int j = this.g.b(this.e);
      return j - i;
    } 
    byte b = 0;
    return b - i;
  }
  
  public final void a() {
    if (this.f) {
      this.f = false;
      this.d = false;
      this.g.e();
      this.g = null;
      this.h = null;
    } 
  }
  
  public final void a(@NonNull RecyclerView paramRecyclerView) {
    b(paramRecyclerView);
    this.g = bfg.a(paramRecyclerView);
    this.h = bff.a(paramRecyclerView.getLayoutManager());
    this.e = this.h.d();
    this.f = true;
    this.g.a(new bfe(this));
    this.g.a((RecyclerView.OnScrollListener)new bfb(this));
    this.g.a((RecyclerView.OnChildAttachStateChangeListener)new bfc(this, paramRecyclerView));
  }
  
  public final int getVisibility() {
    return this.a;
  }
  
  @CallSuper
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent) {
    boolean bool = false;
    if (this.f && this.g.a(paramMotionEvent)) {
      null = true;
    } else {
      null = false;
    } 
    this.d = null;
    if (this.d && paramMotionEvent.getAction() == 2)
      this.b = c(); 
    if (!this.d) {
      null = bool;
      return super.onInterceptTouchEvent(paramMotionEvent) ? true : null;
    } 
    return true;
  }
  
  protected final void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    boolean bool = false;
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramBoolean && this.f) {
      if (getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams)getLayoutParams();
        paramInt2 = marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
        paramInt1 = marginLayoutParams.leftMargin;
        paramInt1 = marginLayoutParams.rightMargin + paramInt1;
      } else {
        paramInt2 = 0;
        paramInt1 = bool;
      } 
      this.g.a(paramInt2 + getHeight(), paramInt1 + getWidth());
      b();
    } 
  }
  
  @CallSuper
  public boolean onTouchEvent(@NonNull MotionEvent paramMotionEvent) {
    if (this.d) {
      boolean bool;
      int i = this.b - c();
      if (this.e) {
        bool = i;
      } else {
        bool = false;
      } 
      if (this.e)
        i = 0; 
      paramMotionEvent = MotionEvent.obtain(paramMotionEvent.getDownTime(), paramMotionEvent.getEventTime(), paramMotionEvent.getAction(), paramMotionEvent.getX() - i, paramMotionEvent.getY() - bool, paramMotionEvent.getMetaState());
      this.g.b(paramMotionEvent);
      return false;
    } 
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public final void setVisibility(int paramInt) {
    this.a = paramInt;
    if (!this.c)
      super.setVisibility(this.a); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\bartoszlipinski\recyclerviewheader2\RecyclerViewHeader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */