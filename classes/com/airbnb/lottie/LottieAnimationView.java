package com.airbnb.lottie;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.support.annotation.FloatRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.support.v7.widget.AppCompatImageView;
import android.text.TextUtils;
import android.util.AttributeSet;
import awj;
import awk;
import awl;
import awn;
import awo;
import awp;
import awr;
import awt;
import awu;
import axg;
import axh;
import axw;
import axx;
import axy;
import bey;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public class LottieAnimationView extends AppCompatImageView {
  private static final String a = LottieAnimationView.class.getSimpleName();
  
  private static final Map<String, awr> b = new HashMap<String, awr>();
  
  private static final Map<String, WeakReference<awr>> c = new HashMap<String, WeakReference<awr>>();
  
  private final axg d = (axg)new awn(this);
  
  private final awu e = new awu();
  
  private awp f;
  
  private String g;
  
  private boolean h = false;
  
  private boolean i = false;
  
  private boolean j = false;
  
  @Nullable
  private awj k;
  
  @Nullable
  private awr l;
  
  public LottieAnimationView(Context paramContext) {
    super(paramContext);
    a((AttributeSet)null);
  }
  
  public LottieAnimationView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramAttributeSet);
  }
  
  public LottieAnimationView(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramAttributeSet);
  }
  
  private void a(@Nullable AttributeSet paramAttributeSet) {
    TypedArray typedArray = getContext().obtainStyledAttributes(paramAttributeSet, axw.LottieAnimationView);
    int i = typedArray.getInt(axw.LottieAnimationView_lottie_cacheStrategy, awp.Weak.ordinal());
    this.f = awp.values()[i];
    String str = typedArray.getString(axw.LottieAnimationView_lottie_fileName);
    if (!isInEditMode() && str != null)
      setAnimation(str); 
    if (typedArray.getBoolean(axw.LottieAnimationView_lottie_autoPlay, false)) {
      this.e.k();
      this.i = true;
    } 
    this.e.c(typedArray.getBoolean(axw.LottieAnimationView_lottie_loop, false));
    setImageAssetsFolder(typedArray.getString(axw.LottieAnimationView_lottie_imageAssetsFolder));
    setProgress(typedArray.getFloat(axw.LottieAnimationView_lottie_progress, 0.0F));
    a(typedArray.getBoolean(axw.LottieAnimationView_lottie_enableMergePathsForKitKatAndAbove, false));
    if (typedArray.hasValue(axw.LottieAnimationView_lottie_colorFilter))
      a((ColorFilter)new axx(typedArray.getColor(axw.LottieAnimationView_lottie_colorFilter, 0))); 
    if (typedArray.hasValue(axw.LottieAnimationView_lottie_scale))
      this.e.e(typedArray.getFloat(axw.LottieAnimationView_lottie_scale, 1.0F)); 
    typedArray.recycle();
    if (bey.c(getContext()) == 0.0F)
      this.e.h(); 
    v();
  }
  
  private void u() {
    if (this.k != null) {
      this.k.a();
      this.k = null;
    } 
  }
  
  private void v() {
    boolean bool;
    byte b = 1;
    if (this.j && this.e.j()) {
      bool = true;
    } else {
      bool = false;
    } 
    if (bool)
      b = 2; 
    setLayerType(b, null);
  }
  
  @Nullable
  public Bitmap a(String paramString, @Nullable Bitmap paramBitmap) {
    return this.e.a(paramString, paramBitmap);
  }
  
  public void a() {
    this.e.g();
  }
  
  public void a(@FloatRange(from = 0.0D, to = 1.0D) float paramFloat1, @FloatRange(from = 0.0D, to = 1.0D) float paramFloat2) {
    this.e.a(paramFloat1, paramFloat2);
  }
  
  public void a(int paramInt1, int paramInt2) {
    this.e.a(paramInt1, paramInt2);
  }
  
  public void a(Animator.AnimatorListener paramAnimatorListener) {
    this.e.a(paramAnimatorListener);
  }
  
  public void a(ValueAnimator.AnimatorUpdateListener paramAnimatorUpdateListener) {
    this.e.a(paramAnimatorUpdateListener);
  }
  
  public void a(@Nullable ColorFilter paramColorFilter) {
    this.e.a(paramColorFilter);
  }
  
  public void a(String paramString, @Nullable ColorFilter paramColorFilter) {
    this.e.a(paramString, paramColorFilter);
  }
  
  public void a(String paramString1, String paramString2, @Nullable ColorFilter paramColorFilter) {
    this.e.a(paramString1, paramString2, paramColorFilter);
  }
  
  public void a(boolean paramBoolean) {
    this.e.a(paramBoolean);
  }
  
  @VisibleForTesting
  void b() {
    if (this.e != null)
      this.e.e(); 
  }
  
  public void b(Animator.AnimatorListener paramAnimatorListener) {
    this.e.b(paramAnimatorListener);
  }
  
  public void b(ValueAnimator.AnimatorUpdateListener paramAnimatorUpdateListener) {
    this.e.b(paramAnimatorUpdateListener);
  }
  
  @Deprecated
  public void b(boolean paramBoolean) {
    c(paramBoolean);
  }
  
  @Deprecated
  public void c() {
    c(true);
  }
  
  public void c(boolean paramBoolean) {
    this.j = paramBoolean;
    v();
  }
  
  public void d() {
    c(true);
  }
  
  public void d(boolean paramBoolean) {
    this.e.c(paramBoolean);
  }
  
  public boolean e() {
    return this.e.a();
  }
  
  public boolean f() {
    return this.e.b();
  }
  
  public boolean g() {
    return this.e.j();
  }
  
  public void h() {
    this.e.k();
    v();
  }
  
  public void i() {
    this.e.l();
    v();
  }
  
  public void invalidateDrawable(@NonNull Drawable paramDrawable) {
    if (getDrawable() == this.e) {
      super.invalidateDrawable((Drawable)this.e);
      return;
    } 
    super.invalidateDrawable(paramDrawable);
  }
  
  public void j() {
    this.e.n();
    v();
  }
  
  public void k() {
    this.e.m();
    v();
  }
  
  @Nullable
  public String l() {
    return this.e.d();
  }
  
  public float m() {
    return this.e.r();
  }
  
  public void n() {
    this.e.t();
    v();
  }
  
  public void o() {
    float f = p();
    this.e.t();
    setProgress(f);
    v();
  }
  
  protected void onAttachedToWindow() {
    super.onAttachedToWindow();
    if (this.i && this.h)
      h(); 
  }
  
  protected void onDetachedFromWindow() {
    if (g()) {
      n();
      this.h = true;
    } 
    b();
    super.onDetachedFromWindow();
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable) {
    if (!(paramParcelable instanceof LottieAnimationView$SavedState)) {
      super.onRestoreInstanceState(paramParcelable);
      return;
    } 
    LottieAnimationView$SavedState lottieAnimationView$SavedState = (LottieAnimationView$SavedState)paramParcelable;
    super.onRestoreInstanceState(lottieAnimationView$SavedState.getSuperState());
    this.g = lottieAnimationView$SavedState.a;
    if (!TextUtils.isEmpty(this.g))
      setAnimation(this.g); 
    setProgress(lottieAnimationView$SavedState.b);
    d(lottieAnimationView$SavedState.d);
    if (lottieAnimationView$SavedState.c)
      h(); 
    this.e.a(lottieAnimationView$SavedState.e);
  }
  
  protected Parcelable onSaveInstanceState() {
    LottieAnimationView$SavedState lottieAnimationView$SavedState = new LottieAnimationView$SavedState(super.onSaveInstanceState());
    lottieAnimationView$SavedState.a = this.g;
    lottieAnimationView$SavedState.b = this.e.o();
    lottieAnimationView$SavedState.c = this.e.j();
    lottieAnimationView$SavedState.d = this.e.i();
    lottieAnimationView$SavedState.e = this.e.d();
    return (Parcelable)lottieAnimationView$SavedState;
  }
  
  @FloatRange(from = 0.0D, to = 1.0D)
  public float p() {
    return this.e.o();
  }
  
  public long q() {
    return (this.l != null) ? this.l.d() : 0L;
  }
  
  @Nullable
  public axh r() {
    return this.e.f();
  }
  
  public void setAnimation(String paramString) {
    setAnimation(paramString, this.f);
  }
  
  public void setAnimation(String paramString, awp paramawp) {
    this.g = paramString;
    if (c.containsKey(paramString)) {
      awr awr1 = ((WeakReference<awr>)c.get(paramString)).get();
      if (awr1 != null) {
        setComposition(awr1);
        return;
      } 
    } else if (b.containsKey(paramString)) {
      setComposition(b.get(paramString));
      return;
    } 
    this.g = paramString;
    this.e.t();
    u();
    this.k = awt.a(getContext(), paramString, (axg)new awo(this, paramawp, paramString));
  }
  
  public void setAnimation(JSONObject paramJSONObject) {
    u();
    this.k = awt.a(getResources(), paramJSONObject, this.d);
  }
  
  public void setComposition(@NonNull awr paramawr) {
    this.e.setCallback((Drawable.Callback)this);
    boolean bool = this.e.a(paramawr);
    v();
    if (!bool)
      return; 
    setImageDrawable((Drawable)null);
    setImageDrawable((Drawable)this.e);
    this.l = paramawr;
    requestLayout();
  }
  
  public void setFontAssetDelegate(awk paramawk) {
    this.e.a(paramawk);
  }
  
  public void setImageAssetDelegate(awl paramawl) {
    this.e.a(paramawl);
  }
  
  public void setImageAssetsFolder(String paramString) {
    this.e.a(paramString);
  }
  
  public void setImageBitmap(Bitmap paramBitmap) {
    b();
    u();
    super.setImageBitmap(paramBitmap);
  }
  
  public void setImageDrawable(Drawable paramDrawable) {
    if (paramDrawable != this.e)
      b(); 
    u();
    super.setImageDrawable(paramDrawable);
  }
  
  public void setImageResource(int paramInt) {
    b();
    u();
    super.setImageResource(paramInt);
  }
  
  public void setMaxFrame(int paramInt) {
    this.e.b(paramInt);
  }
  
  public void setMaxProgress(float paramFloat) {
    this.e.b(paramFloat);
  }
  
  public void setMinAndMaxFrame(int paramInt1, int paramInt2) {
    this.e.b(paramInt1, paramInt2);
  }
  
  public void setMinAndMaxProgress(float paramFloat1, float paramFloat2) {
    this.e.b(paramFloat1, paramFloat2);
  }
  
  public void setMinFrame(int paramInt) {
    this.e.a(paramInt);
  }
  
  public void setMinProgress(float paramFloat) {
    this.e.a(paramFloat);
  }
  
  public void setPerformanceTrackingEnabled(boolean paramBoolean) {
    this.e.b(paramBoolean);
  }
  
  public void setProgress(@FloatRange(from = 0.0D, to = 1.0D) float paramFloat) {
    this.e.d(paramFloat);
  }
  
  public void setScale(float paramFloat) {
    this.e.e(paramFloat);
    if (getDrawable() == this.e) {
      setImageDrawable((Drawable)null);
      setImageDrawable((Drawable)this.e);
    } 
  }
  
  public void setSpeed(float paramFloat) {
    this.e.c(paramFloat);
  }
  
  public void setTextDelegate(axy paramaxy) {
    this.e.a(paramaxy);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\airbnb\lottie\LottieAnimationView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */