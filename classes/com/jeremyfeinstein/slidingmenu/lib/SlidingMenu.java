package com.jeremyfeinstein.slidingmenu.lib;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import fbj;
import fby;
import fbz;
import fca;
import fcb;
import fcc;
import fcd;
import fce;
import fcf;

public class SlidingMenu extends RelativeLayout {
  public static final int a = 0;
  
  public static final int b = 1;
  
  public static final int c = 0;
  
  public static final int d = 1;
  
  public static final int e = 2;
  
  public static final int f = 0;
  
  public static final int g = 1;
  
  public static final int h = 2;
  
  private static final String i = "SlidingMenu";
  
  private boolean j = false;
  
  private CustomViewAbove k;
  
  private CustomViewBehind l;
  
  private fce m;
  
  private fce n;
  
  private fcc o;
  
  private Handler p = new Handler();
  
  public SlidingMenu(Activity paramActivity, int paramInt) {
    this((Context)paramActivity, (AttributeSet)null);
    a(paramActivity, paramInt);
  }
  
  public SlidingMenu(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public SlidingMenu(Context paramContext, AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public SlidingMenu(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
    this.l = new CustomViewBehind(paramContext);
    addView((View)this.l, (ViewGroup.LayoutParams)layoutParams);
    layoutParams = new RelativeLayout.LayoutParams(-1, -1);
    this.k = new CustomViewAbove(paramContext);
    addView((View)this.k, (ViewGroup.LayoutParams)layoutParams);
    this.k.setCustomViewBehind(this.l);
    this.l.setCustomViewAbove(this.k);
    this.k.setOnPageChangeListener((fbj)new fbz(this));
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, fby.SlidingMenu);
    setMode(typedArray.getInt(fby.SlidingMenu_mode, 0));
    paramInt = typedArray.getResourceId(fby.SlidingMenu_viewAbove, -1);
    if (paramInt != -1) {
      setContent(paramInt);
    } else {
      setContent((View)new FrameLayout(paramContext));
    } 
    paramInt = typedArray.getResourceId(fby.SlidingMenu_viewBehind, -1);
    if (paramInt != -1) {
      setMenu(paramInt);
    } else {
      setMenu((View)new FrameLayout(paramContext));
    } 
    setTouchModeAbove(typedArray.getInt(fby.SlidingMenu_touchModeAbove, 0));
    setTouchModeBehind(typedArray.getInt(fby.SlidingMenu_touchModeBehind, 0));
    paramInt = (int)typedArray.getDimension(fby.SlidingMenu_behindOffset, -1.0F);
    int i = (int)typedArray.getDimension(fby.SlidingMenu_behindWidth, -1.0F);
    if (paramInt != -1 && i != -1)
      throw new IllegalStateException("Cannot set both behindOffset and behindWidth for a SlidingMenu"); 
    if (paramInt != -1) {
      setBehindOffset(paramInt);
    } else if (i != -1) {
      setBehindWidth(i);
    } else {
      setBehindOffset(0);
    } 
    setBehindScrollScale(typedArray.getFloat(fby.SlidingMenu_behindScrollScale, 0.33F));
    paramInt = typedArray.getResourceId(fby.SlidingMenu_shadowDrawable, -1);
    if (paramInt != -1)
      setShadowDrawable(paramInt); 
    setShadowWidth((int)typedArray.getDimension(fby.SlidingMenu_shadowWidth, 0.0F));
    setFadeEnabled(typedArray.getBoolean(fby.SlidingMenu_fadeEnabled, true));
    setFadeDegree(typedArray.getFloat(fby.SlidingMenu_fadeDegree, 0.33F));
    setSelectorEnabled(typedArray.getBoolean(fby.SlidingMenu_selectorEnabled, false));
    paramInt = typedArray.getResourceId(fby.SlidingMenu_selectorDrawable, -1);
    if (paramInt != -1)
      setSelectorDrawable(paramInt); 
    typedArray.recycle();
  }
  
  public View a() {
    return this.k.h();
  }
  
  @TargetApi(11)
  public void a(float paramFloat) {
    byte b = 0;
    if (Build.VERSION.SDK_INT >= 11) {
      boolean bool;
      if (paramFloat > 0.0F && paramFloat < 1.0F) {
        bool = true;
      } else {
        bool = false;
      } 
      if (bool)
        b = 2; 
      if (b != a().getLayerType()) {
        this.p.post((Runnable)new fca(this, b));
        return;
      } 
    } 
  }
  
  public void a(Activity paramActivity, int paramInt) {
    a(paramActivity, paramInt, false);
  }
  
  public void a(Activity paramActivity, int paramInt, boolean paramBoolean) {
    ViewGroup viewGroup2;
    if (paramInt != 0 && paramInt != 1)
      throw new IllegalArgumentException("slideStyle must be either SLIDING_WINDOW or SLIDING_CONTENT"); 
    if (getParent() != null)
      throw new IllegalStateException("This SlidingMenu appears to already be attached"); 
    TypedArray typedArray = paramActivity.getTheme().obtainStyledAttributes(new int[] { 16842836 });
    int i = typedArray.getResourceId(0, 0);
    typedArray.recycle();
    switch (paramInt) {
      default:
        return;
      case 0:
        this.j = false;
        viewGroup1 = (ViewGroup)paramActivity.getWindow().getDecorView();
        viewGroup2 = (ViewGroup)viewGroup1.getChildAt(0);
        viewGroup2.setBackgroundResource(i);
        viewGroup1.removeView((View)viewGroup2);
        viewGroup1.addView((View)this);
        setContent((View)viewGroup2);
        return;
      case 1:
        break;
    } 
    this.j = paramBoolean;
    ViewGroup viewGroup1 = (ViewGroup)viewGroup1.findViewById(16908290);
    View view = viewGroup1.getChildAt(0);
    viewGroup1.removeView(view);
    viewGroup1.addView((View)this);
    setContent(view);
    if (view.getBackground() == null) {
      view.setBackgroundResource(i);
      return;
    } 
  }
  
  public void a(View paramView) {
    this.k.a(paramView);
  }
  
  public void a(boolean paramBoolean) {
    this.k.setCurrentItem(0, paramBoolean);
  }
  
  public View b() {
    return this.l.c();
  }
  
  public void b(View paramView) {
    this.k.b(paramView);
  }
  
  public void b(boolean paramBoolean) {
    this.k.setCurrentItem(2, paramBoolean);
  }
  
  public View c() {
    return this.l.d();
  }
  
  public void c(boolean paramBoolean) {
    this.k.setCurrentItem(1, paramBoolean);
  }
  
  public void d(boolean paramBoolean) {
    if (j()) {
      c(paramBoolean);
      return;
    } 
    a(paramBoolean);
  }
  
  public boolean d() {
    return this.k.g();
  }
  
  public int e() {
    return this.l.e();
  }
  
  public void f() {
    a(true);
  }
  
  @SuppressLint({"NewApi"})
  protected boolean fitSystemWindows(Rect paramRect) {
    int i = paramRect.left;
    int j = paramRect.right;
    int k = paramRect.top;
    int m = paramRect.bottom;
    if (!this.j) {
      Log.v("SlidingMenu", "setting padding!");
      setPadding(i, k, j, m);
    } 
    return true;
  }
  
  public void g() {
    b(true);
  }
  
  public void h() {
    c(true);
  }
  
  public void i() {
    d(true);
  }
  
  public boolean j() {
    return (this.k.b() == 0 || this.k.b() == 2);
  }
  
  public boolean k() {
    return (this.k.b() == 2);
  }
  
  public int l() {
    return ((RelativeLayout.LayoutParams)this.l.getLayoutParams()).rightMargin;
  }
  
  public float m() {
    return this.l.f();
  }
  
  public int n() {
    return this.l.a();
  }
  
  public int o() {
    return this.k.i();
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable) {
    SlidingMenu$SavedState slidingMenu$SavedState = (SlidingMenu$SavedState)paramParcelable;
    super.onRestoreInstanceState(slidingMenu$SavedState.getSuperState());
    this.k.setCurrentItem(slidingMenu$SavedState.a());
  }
  
  protected Parcelable onSaveInstanceState() {
    return (Parcelable)new SlidingMenu$SavedState(super.onSaveInstanceState(), this.k.b());
  }
  
  public void p() {
    this.k.c();
  }
  
  public void setAboveOffset(int paramInt) {
    this.k.setAboveOffset(paramInt);
  }
  
  public void setAboveOffsetRes(int paramInt) {
    setAboveOffset((int)getContext().getResources().getDimension(paramInt));
  }
  
  public void setBehindCanvasTransformer(fcb paramfcb) {
    this.l.setCanvasTransformer(paramfcb);
  }
  
  public void setBehindOffset(int paramInt) {
    this.l.setWidthOffset(paramInt);
  }
  
  public void setBehindOffsetRes(int paramInt) {
    setBehindOffset((int)getContext().getResources().getDimension(paramInt));
  }
  
  public void setBehindScrollScale(float paramFloat) {
    if (paramFloat < 0.0F && paramFloat > 1.0F)
      throw new IllegalStateException("ScrollScale must be between 0 and 1"); 
    this.l.setScrollScale(paramFloat);
  }
  
  public void setBehindWidth(int paramInt) {
    int i;
    Display display = ((WindowManager)getContext().getSystemService("window")).getDefaultDisplay();
    try {
      Point point = new Point();
      Display.class.getMethod("getSize", new Class[] { Point.class }).invoke(display, new Object[] { point });
      i = point.x;
    } catch (Exception exception) {
      i = display.getWidth();
    } 
    setBehindOffset(i - paramInt);
  }
  
  public void setBehindWidthRes(int paramInt) {
    setBehindWidth((int)getContext().getResources().getDimension(paramInt));
  }
  
  public void setContent(int paramInt) {
    setContent(LayoutInflater.from(getContext()).inflate(paramInt, null));
  }
  
  public void setContent(View paramView) {
    this.k.setContent(paramView);
    h();
  }
  
  public void setFadeDegree(float paramFloat) {
    this.l.setFadeDegree(paramFloat);
  }
  
  public void setFadeEnabled(boolean paramBoolean) {
    this.l.setFadeEnabled(paramBoolean);
  }
  
  public void setMenu(int paramInt) {
    setMenu(LayoutInflater.from(getContext()).inflate(paramInt, null));
  }
  
  public void setMenu(View paramView) {
    this.l.setContent(paramView);
  }
  
  public void setMode(int paramInt) {
    if (paramInt != 0 && paramInt != 1 && paramInt != 2)
      throw new IllegalStateException("SlidingMenu mode must be LEFT, RIGHT, or LEFT_RIGHT"); 
    this.l.setMode(paramInt);
  }
  
  public void setOnCloseListener(fcc paramfcc) {
    this.o = paramfcc;
  }
  
  public void setOnClosedListener(fcd paramfcd) {
    this.k.setOnClosedListener(paramfcd);
  }
  
  public void setOnOpenListener(fce paramfce) {
    this.m = paramfce;
  }
  
  public void setOnOpenedListener(fcf paramfcf) {
    this.k.setOnOpenedListener(paramfcf);
  }
  
  public void setSecondaryMenu(int paramInt) {
    setSecondaryMenu(LayoutInflater.from(getContext()).inflate(paramInt, null));
  }
  
  public void setSecondaryMenu(View paramView) {
    this.l.setSecondaryContent(paramView);
  }
  
  public void setSecondaryOnOpenListner(fce paramfce) {
    this.n = paramfce;
  }
  
  public void setSecondaryShadowDrawable(int paramInt) {
    setSecondaryShadowDrawable(getContext().getResources().getDrawable(paramInt));
  }
  
  public void setSecondaryShadowDrawable(Drawable paramDrawable) {
    this.l.setSecondaryShadowDrawable(paramDrawable);
  }
  
  public void setSelectedView(View paramView) {
    this.l.setSelectedView(paramView);
  }
  
  public void setSelectorBitmap(Bitmap paramBitmap) {
    this.l.setSelectorBitmap(paramBitmap);
  }
  
  public void setSelectorDrawable(int paramInt) {
    this.l.setSelectorBitmap(BitmapFactory.decodeResource(getResources(), paramInt));
  }
  
  public void setSelectorEnabled(boolean paramBoolean) {
    this.l.setSelectorEnabled(true);
  }
  
  public void setShadowDrawable(int paramInt) {
    setShadowDrawable(getContext().getResources().getDrawable(paramInt));
  }
  
  public void setShadowDrawable(Drawable paramDrawable) {
    this.l.setShadowDrawable(paramDrawable);
  }
  
  public void setShadowWidth(int paramInt) {
    this.l.setShadowWidth(paramInt);
  }
  
  public void setShadowWidthRes(int paramInt) {
    setShadowWidth((int)getResources().getDimension(paramInt));
  }
  
  public void setSlidingEnabled(boolean paramBoolean) {
    this.k.setSlidingEnabled(paramBoolean);
  }
  
  public void setStatic(boolean paramBoolean) {
    if (paramBoolean) {
      setSlidingEnabled(false);
      this.k.setCustomViewBehind(null);
      this.k.setCurrentItem(1);
      return;
    } 
    this.k.setCurrentItem(1);
    this.k.setCustomViewBehind(this.l);
    setSlidingEnabled(true);
  }
  
  public void setTouchModeAbove(int paramInt) {
    if (paramInt != 1 && paramInt != 0 && paramInt != 2)
      throw new IllegalStateException("TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN or TOUCHMODE_NONE."); 
    this.k.setTouchMode(paramInt);
  }
  
  public void setTouchModeBehind(int paramInt) {
    if (paramInt != 1 && paramInt != 0 && paramInt != 2)
      throw new IllegalStateException("TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN or TOUCHMODE_NONE."); 
    this.l.setTouchMode(paramInt);
  }
  
  public void setTouchmodeMarginThreshold(int paramInt) {
    this.l.setMarginThreshold(paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\jeremyfeinstein\slidingmenu\lib\SlidingMenu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */