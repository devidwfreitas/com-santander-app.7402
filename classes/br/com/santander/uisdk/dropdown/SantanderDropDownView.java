package br.com.santander.uisdk.dropdown;

import als;
import alu;
import amh;
import ami;
import amj;
import aml;
import amm;
import amn;
import amo;
import amp;
import amq;
import amr;
import amt;
import android.animation.Animator;
import android.content.Context;
import android.support.annotation.NonNull;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.ImageView;

public class SantanderDropDownView extends FrameLayout {
  public amh a = (amh)new ami(this);
  
  private View b;
  
  private FrameLayout c;
  
  private FrameLayout d;
  
  private FrameLayout e;
  
  private RecyclerView f;
  
  private ImageView g;
  
  private View h;
  
  private amr i;
  
  private boolean j;
  
  private boolean k;
  
  private amt l;
  
  private int m = -1;
  
  private RecyclerView.ItemDecoration n = (RecyclerView.ItemDecoration)new amj(this);
  
  public SantanderDropDownView(Context paramContext) {
    super(paramContext);
    b();
  }
  
  public SantanderDropDownView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    b();
  }
  
  public SantanderDropDownView(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    b();
  }
  
  private void b() {
    inflate(getContext(), alu.santander_view_drop_down, (ViewGroup)this);
    this.b = findViewById(als.root_drop_down_container);
    this.c = (FrameLayout)findViewById(als.drop_down_container);
    this.d = (FrameLayout)findViewById(als.recycler_view_container);
    this.e = (FrameLayout)findViewById(als.content_container);
    this.f = (RecyclerView)findViewById(als.recycler_view);
    this.g = (ImageView)findViewById(als.arrow_image);
    this.h = findViewById(als.shadow);
    this.k = false;
    this.b.setOnClickListener((View.OnClickListener)new aml(this));
    this.h.setOnTouchListener((View.OnTouchListener)new amm(this));
    this.f.setHasFixedSize(true);
    this.f.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager(getContext()));
    this.f.addItemDecoration(this.n);
    addOnLayoutChangeListener((View.OnLayoutChangeListener)new amn(this));
  }
  
  private void c() {
    this.d.setY(-this.d.getHeight());
    this.h.setAlpha(0.0F);
    this.h.setVisibility(8);
    this.d.setVisibility(8);
    View view = getChildAt(0);
    removeView(view);
    addView(view);
    view = getChildAt(1);
    removeView(view);
    this.e.addView(view);
  }
  
  private void d() {
    e();
    this.b.addOnLayoutChangeListener((View.OnLayoutChangeListener)new amo(this));
  }
  
  private void e() {
    float f;
    if (this.b.getVisibility() == 0) {
      f = this.b.getMeasuredHeight() + this.b.getY();
    } else {
      f = 0.0F;
    } 
    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
    layoutParams.setMargins(0, (int)f, 0, 0);
    this.e.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
  }
  
  private void f() {
    boolean bool;
    if (this.i == null || !this.a.f())
      return; 
    g();
    h();
    i();
    if (!this.k) {
      bool = true;
    } else {
      bool = false;
    } 
    this.k = bool;
  }
  
  private void g() {
    float f;
    boolean bool = this.k;
    if (!bool) {
      this.f.scrollToPosition(0);
      this.d.setVisibility(0);
    } 
    ViewPropertyAnimator viewPropertyAnimator = this.d.animate().setDuration(300L);
    if (bool) {
      f = -this.d.getHeight();
    } else {
      f = this.b.getHeight();
    } 
    viewPropertyAnimator.y(f).setListener((Animator.AnimatorListener)new amp(this, bool)).start();
  }
  
  private void h() {
    float f;
    ViewPropertyAnimator viewPropertyAnimator = this.g.animate().setDuration(300L);
    if (this.k) {
      f = 0.0F;
    } else {
      f = 180.0F;
    } 
    viewPropertyAnimator.rotation(f).start();
  }
  
  private void i() {
    float f;
    boolean bool = this.k;
    ViewPropertyAnimator viewPropertyAnimator = this.h.animate().setDuration(300L);
    if (this.k) {
      f = 0.0F;
    } else {
      f = 0.8F;
    } 
    viewPropertyAnimator.alpha(f).setListener((Animator.AnimatorListener)new amq(this, bool)).start();
  }
  
  public amr a() {
    return this.i;
  }
  
  public void a(RecyclerView.ItemDecoration paramItemDecoration) {
    this.f.addItemDecoration(paramItemDecoration);
  }
  
  public void addView(View paramView) {
    if (getChildCount() > 2)
      throw new IllegalStateException("DropDownView can host only one direct child"); 
    super.addView(paramView);
  }
  
  public void addView(View paramView, int paramInt) {
    if (getChildCount() > 2)
      throw new IllegalStateException("DropDownView can host only one direct child"); 
    super.addView(paramView, paramInt);
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams) {
    if (getChildCount() > 2)
      throw new IllegalStateException("DropDownView can host only one direct child"); 
    super.addView(paramView, paramInt, paramLayoutParams);
  }
  
  public void addView(View paramView, ViewGroup.LayoutParams paramLayoutParams) {
    if (getChildCount() > 2)
      throw new IllegalStateException("DropDownView can host only one direct child"); 
    super.addView(paramView, paramLayoutParams);
  }
  
  public int getVisibility() {
    return (this.b != null) ? this.b.getVisibility() : super.getVisibility();
  }
  
  public void setAdapter(@NonNull amr paramamr) {
    this.i = paramamr;
    amr.a(this.i, this.a);
    this.f.setAdapter((RecyclerView.Adapter)paramamr);
    if (this.j) {
      this.a.g();
      this.a.a();
    } 
  }
  
  public void setCurrentItem(Object paramObject) {
    int i = amr.c(this.i).indexOf(paramObject);
    if (i != -1) {
      if (this.j) {
        this.a.a(i);
        return;
      } 
    } else {
      return;
    } 
    this.m = i;
  }
  
  public <T> void setOnItemSelectedListener(amt<T> paramamt) {
    this.l = paramamt;
  }
  
  public void setVisibility(int paramInt) {
    if (this.b != null && this.b.getVisibility() != paramInt) {
      View view = this.b;
      if (paramInt == 0) {
        paramInt = 0;
      } else {
        paramInt = 4;
      } 
      view.setVisibility(paramInt);
      e();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santande\\uisdk\dropdown\SantanderDropDownView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */