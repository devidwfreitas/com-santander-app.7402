package com.santander.app.components.view.dropuplist;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import gtp;
import gtq;
import gtr;
import gts;
import gtt;

public class ListDropUp extends RelativeLayout implements gtp {
  private float a;
  
  private boolean b;
  
  private boolean c = false;
  
  private DisplayMetrics d;
  
  private LinearLayout e;
  
  private LinearLayout f;
  
  private RecyclerView g;
  
  private LinearLayoutManager h;
  
  private Activity i;
  
  private RecyclerView.Adapter j;
  
  private int k;
  
  private gtt l;
  
  public ListDropUp(Context paramContext) {
    super(paramContext);
  }
  
  public ListDropUp(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  public ListDropUp(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private int a(int paramInt) {
    DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
    float f = paramInt;
    return Math.round(displayMetrics.xdpi / 160.0F * f);
  }
  
  private void a(View paramView, int paramInt1, int paramInt2) {
    ValueAnimator valueAnimator = ValueAnimator.ofInt(new int[] { paramInt1, paramInt2 });
    valueAnimator.setDuration(400L);
    valueAnimator.addUpdateListener((ValueAnimator.AnimatorUpdateListener)new gts(this, paramView));
    valueAnimator.start();
  }
  
  public void a() {
    this.b = true;
    if (this.g.getMeasuredHeight() < this.d.heightPixels) {
      a((View)this.g, this.g.getMeasuredHeight(), this.d.heightPixels);
      a((View)this.e, this.e.getMeasuredHeight(), this.d.heightPixels);
      this.f.setY(0.0F);
      if (this.l != null)
        this.l.a(); 
    } 
  }
  
  public void b() {
    this.b = false;
    a((View)this.g, this.g.getMeasuredHeight(), this.d.heightPixels / 13);
    a((View)this.e, this.e.getMeasuredHeight(), this.d.heightPixels / 13);
    this.f.setY(this.a);
    this.g.scrollToPosition(0);
    if (this.l != null)
      this.l.b(); 
  }
  
  public boolean c() {
    return this.b;
  }
  
  public void d() {
    View view = LayoutInflater.from((Context)this.i).inflate(2130969011, (ViewGroup)this);
    this.f = (LinearLayout)view.findViewById(2131757142);
    this.e = (LinearLayout)view.findViewById(2131757141);
    this.d = getResources().getDisplayMetrics();
    this.g = (RecyclerView)view.findViewById(2131755525);
    this.g.setHasFixedSize(true);
    this.h = new LinearLayoutManager((Context)this.i);
    this.g.setLayoutManager((RecyclerView.LayoutManager)this.h);
    this.g.setAdapter(this.j);
    this.f.setOnTouchListener((View.OnTouchListener)new gtq(this));
    this.g.setOnScrollListener((RecyclerView.OnScrollListener)new gtr(this));
  }
  
  public void setOnListDownUpListener(gtt paramgtt) {
    this.l = paramgtt;
  }
  
  public void setPropriets(Activity paramActivity, RecyclerView.Adapter paramAdapter) {
    this.j = paramAdapter;
    this.i = paramActivity;
    d();
  }
  
  public void setPropriets(Activity paramActivity, RecyclerView.Adapter paramAdapter, int paramInt) {
    this.j = paramAdapter;
    this.i = paramActivity;
    this.k = paramInt;
    d();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\components\view\dropuplist\ListDropUp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */