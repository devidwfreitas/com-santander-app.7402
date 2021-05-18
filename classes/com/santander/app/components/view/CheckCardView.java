package com.santander.app.components.view;

import android.content.Context;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.os.Build;
import android.os.Handler;
import android.support.annotation.Nullable;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.CardView;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import android.widget.ImageView;
import gos;
import got;
import gou;
import gow;
import gox;
import goy;

public class CheckCardView extends CardView {
  private static final Handler b = new Handler();
  
  public boolean a;
  
  private View c;
  
  private ImageView d;
  
  private boolean e = true;
  
  private goy f;
  
  private AnimatedVectorDrawable g;
  
  private AnimatedVectorDrawable h;
  
  private boolean i;
  
  private boolean j = true;
  
  private boolean k;
  
  public CheckCardView(Context paramContext) {
    super(paramContext);
    e();
  }
  
  public CheckCardView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    e();
  }
  
  public CheckCardView(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    e();
  }
  
  private void a(View paramView, float paramFloat1, float paramFloat2) {
    AlphaAnimation alphaAnimation = new AlphaAnimation(paramFloat1, paramFloat2);
    alphaAnimation.setFillAfter(true);
    alphaAnimation.setDuration(300L);
    paramView.startAnimation((Animation)alphaAnimation);
  }
  
  private void a(View paramView, float paramFloat1, float paramFloat2, gox paramgox) {
    if (paramView != null) {
      ScaleAnimation scaleAnimation = new ScaleAnimation(paramFloat1, paramFloat2, paramFloat1, paramFloat2, 1, 1.0F, 1, 0.0F);
      scaleAnimation.setFillAfter(true);
      scaleAnimation.setDuration(200L);
      scaleAnimation.setAnimationListener((Animation.AnimationListener)paramgox);
      paramView.startAnimation((Animation)scaleAnimation);
    } 
  }
  
  private void a(View paramView, gox paramgox) {
    paramView.setScaleX(1.0F);
    paramView.setScaleY(1.0F);
    paramgox.onAnimationEnd(null);
  }
  
  private void a(gox paramgox) {
    if (o()) {
      if (paramgox != null)
        b.postDelayed((Runnable)new gow(this, paramgox), 300L); 
      return;
    } 
    this.i = false;
    m();
    a((View)this.d, 0.0F, 1.0F);
  }
  
  private void a(boolean paramBoolean) {
    bringChildToFront(this.c);
    if (paramBoolean) {
      this.k = true;
      r();
      p();
      n();
      l();
    } else {
      this.k = false;
      s();
      q();
      m();
    } 
    g();
  }
  
  private void b(View paramView, gox paramgox) {
    paramView.setScaleX(0.0F);
    paramView.setScaleY(0.0F);
    paramgox.onAnimationEnd(null);
  }
  
  private void b(boolean paramBoolean) {
    this.i = true;
    bringChildToFront(this.c);
    if (paramBoolean) {
      r();
      j();
      return;
    } 
    s();
    k();
  }
  
  private void e() {
    inflate(getContext(), 2130969522, (ViewGroup)this);
    if (!isInEditMode()) {
      f();
      a(false);
    } 
  }
  
  private void f() {
    this.c = findViewById(2131759606);
    this.d = (ImageView)findViewById(2131759607);
    if (o()) {
      this.g = (AnimatedVectorDrawable)getContext().getDrawable(2130838364);
      this.h = (AnimatedVectorDrawable)getContext().getDrawable(2130838366);
    } 
    setOnClickListener((View.OnClickListener)null);
  }
  
  private void g() {
    if (this.f != null)
      this.f.a(this, c()); 
  }
  
  private void h() {
    boolean bool;
    if (!c()) {
      bool = true;
    } else {
      bool = false;
    } 
    a(bool);
  }
  
  private void i() {
    boolean bool;
    if (!c()) {
      bool = true;
    } else {
      bool = false;
    } 
    b(bool);
  }
  
  private void j() {
    if (this.c == null)
      return; 
    this.k = true;
    p();
    a(this.c, (gox)new got(this));
    g();
  }
  
  private void k() {
    this.k = false;
    q();
    a((gox)new gou(this));
    g();
  }
  
  private void l() {
    this.c.setVisibility(0);
    this.d.setVisibility(0);
  }
  
  private void m() {
    this.c.setVisibility(8);
    this.d.setVisibility(8);
  }
  
  private void n() {
    a((gox)null);
  }
  
  private boolean o() {
    return (Build.VERSION.SDK_INT >= 21);
  }
  
  private void p() {
    setCardElevation(getResources().getDimension(2131361913));
  }
  
  private void q() {
    setCardElevation(getResources().getDimension(2131361912));
  }
  
  private void r() {
    setBackgroundColor(ContextCompat.getColor(getContext(), 2131624201));
    setRadius(a(4));
  }
  
  private void s() {
    setBackgroundColor(ContextCompat.getColor(getContext(), 2131623972));
    setRadius(a(4));
  }
  
  private boolean t() {
    return (this.a && c());
  }
  
  public float a(int paramInt) {
    return TypedValue.applyDimension(1, paramInt, getResources().getDisplayMetrics());
  }
  
  public void a() {
    this.j = false;
  }
  
  public void b() {
    this.j = true;
  }
  
  public boolean c() {
    return this.k;
  }
  
  public boolean d() {
    return this.e;
  }
  
  public void setAnimated(boolean paramBoolean) {
    this.e = paramBoolean;
  }
  
  public void setChecked(boolean paramBoolean) {
    if (c() == paramBoolean)
      return; 
    if (d()) {
      b(paramBoolean);
      return;
    } 
    a(paramBoolean);
  }
  
  public void setOnCheckChangeListener(goy paramgoy) {
    this.f = paramgoy;
  }
  
  public void setOnClickListener(@Nullable View.OnClickListener paramOnClickListener) {
    super.setOnClickListener((View.OnClickListener)new gos(this, paramOnClickListener));
  }
  
  public void setUseCompatPadding(boolean paramBoolean) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\components\view\CheckCardView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */