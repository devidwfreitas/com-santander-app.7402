package com.santander.app.seguros.ui.widgets;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import flv;
import mct;
import mcu;

public class ValidityCharV2 extends FrameLayout {
  private TextView a;
  
  private TextView b;
  
  private RelativeLayout c;
  
  private CircleChartView d;
  
  private TextView e;
  
  private TextView f;
  
  private int g = -7829368;
  
  private int h = -7829368;
  
  public ValidityCharV2(@NonNull Context paramContext) {
    super(paramContext);
    a();
  }
  
  public ValidityCharV2(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    TypedArray typedArray = getContext().obtainStyledAttributes(paramAttributeSet, flv.ValidityCharV2, 0, 0);
    this.g = typedArray.getColor(0, getResources().getColor(2131624091));
    this.h = typedArray.getColor(1, getResources().getColor(2131624124));
    typedArray.recycle();
    a();
  }
  
  private void a() {
    LayoutInflater.from(getContext()).inflate(2130969339, (ViewGroup)this);
    b();
  }
  
  private void b() {
    this.a = (TextView)findViewById(2131759009);
    this.b = (TextView)findViewById(2131759010);
    this.c = (RelativeLayout)findViewById(2131759011);
    this.d = (CircleChartView)findViewById(2131755563);
    this.e = (TextView)findViewById(2131759012);
    this.f = (TextView)findViewById(2131759014);
  }
  
  public void setDayText(int paramInt) {
    int i = this.g;
    if (paramInt > 60) {
      this.f.setText(getResources().getString(2131298135));
      paramInt = (int)Math.round(paramInt / 30.0D);
      i = this.g;
    } else {
      this.f.setText(getResources().getString(2131297212));
      if (paramInt <= 30) {
        i = this.h;
      } else {
        i = this.g;
      } 
    } 
    this.e.setTextColor(i);
    this.d.setProgressColor(i);
    ValueAnimator valueAnimator = ValueAnimator.ofInt(new int[] { 0, 20 });
    valueAnimator.setDuration(800L);
    valueAnimator.addUpdateListener((ValueAnimator.AnimatorUpdateListener)new mct(this));
    valueAnimator.addListener((Animator.AnimatorListener)new mcu(this, paramInt));
    valueAnimator.start();
  }
  
  public void setEndDayText(String paramString) {
    this.b.setText(paramString);
  }
  
  public void setProgress(int paramInt) {
    this.d.a(paramInt);
  }
  
  public void setStartDayText(String paramString) {
    this.a.setText(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\ValidityCharV2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */