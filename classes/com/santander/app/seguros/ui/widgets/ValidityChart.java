package com.santander.app.seguros.ui.widgets;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import mcv;
import mcw;

public class ValidityChart extends FrameLayout {
  private TextView a;
  
  private TextView b;
  
  private RelativeLayout c;
  
  private ArcChartView d;
  
  private TextView e;
  
  private TextView f;
  
  private TextView g;
  
  public ValidityChart(Context paramContext) {
    super(paramContext);
    b();
  }
  
  public ValidityChart(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    b();
  }
  
  private void a() {
    this.a = (TextView)findViewById(2131759009);
    this.b = (TextView)findViewById(2131759010);
    this.c = (RelativeLayout)findViewById(2131759011);
    this.d = (ArcChartView)findViewById(2131755563);
    this.e = (TextView)findViewById(2131759012);
    this.f = (TextView)findViewById(2131759013);
    this.g = (TextView)findViewById(2131759014);
  }
  
  private void b() {
    LayoutInflater.from(getContext()).inflate(2130969338, (ViewGroup)this);
    a();
  }
  
  public void setDayText(int paramInt) {
    if (paramInt > 60) {
      this.g.setText(getResources().getString(2131298135));
      paramInt = (int)Math.round(paramInt / 30.0D);
    } else {
      this.g.setText(getResources().getString(2131297212));
    } 
    ValueAnimator valueAnimator = ValueAnimator.ofInt(new int[] { 0, 20 });
    valueAnimator.setDuration(800L);
    valueAnimator.addUpdateListener((ValueAnimator.AnimatorUpdateListener)new mcv(this, paramInt));
    valueAnimator.addListener((Animator.AnimatorListener)new mcw(this, paramInt));
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\ValidityChart.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */