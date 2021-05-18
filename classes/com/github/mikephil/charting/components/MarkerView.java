package com.github.mikephil.charting.components;

import android.content.Context;
import android.graphics.Canvas;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import cfm;
import chv;
import cla;
import com.github.mikephil.charting.charts.Chart;
import com.github.mikephil.charting.data.Entry;
import java.lang.ref.WeakReference;

public class MarkerView extends RelativeLayout implements cfm {
  private cla a = new cla();
  
  private cla b = new cla();
  
  private WeakReference<Chart> c;
  
  public MarkerView(Context paramContext, int paramInt) {
    super(paramContext);
    a(paramInt);
  }
  
  private void a(int paramInt) {
    View view = LayoutInflater.from(getContext()).inflate(paramInt, (ViewGroup)this);
    view.setLayoutParams((ViewGroup.LayoutParams)new RelativeLayout.LayoutParams(-2, -2));
    view.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
    view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
  }
  
  public cla a() {
    return this.a;
  }
  
  public cla a(float paramFloat1, float paramFloat2) {
    cla cla1 = a();
    this.b.a = cla1.a;
    this.b.b = cla1.b;
    Chart chart = b();
    float f1 = getWidth();
    float f2 = getHeight();
    if (this.b.a + paramFloat1 < 0.0F) {
      this.b.a = -paramFloat1;
    } else if (chart != null && paramFloat1 + f1 + this.b.a > chart.getWidth()) {
      this.b.a = chart.getWidth() - paramFloat1 - f1;
    } 
    if (this.b.b + paramFloat2 < 0.0F) {
      this.b.b = -paramFloat2;
      return this.b;
    } 
    if (chart != null && paramFloat2 + f2 + this.b.b > chart.getHeight())
      this.b.b = chart.getHeight() - paramFloat2 - f2; 
    return this.b;
  }
  
  public void a(Canvas paramCanvas, float paramFloat1, float paramFloat2) {
    cla cla1 = a(paramFloat1, paramFloat2);
    int i = paramCanvas.save();
    paramCanvas.translate(cla1.a + paramFloat1, cla1.b + paramFloat2);
    draw(paramCanvas);
    paramCanvas.restoreToCount(i);
  }
  
  public void a(Entry paramEntry, chv paramchv) {
    measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
    layout(0, 0, getMeasuredWidth(), getMeasuredHeight());
  }
  
  public Chart b() {
    return (this.c == null) ? null : this.c.get();
  }
  
  public void setChartView(Chart paramChart) {
    this.c = new WeakReference<Chart>(paramChart);
  }
  
  public void setOffset(float paramFloat1, float paramFloat2) {
    this.a.a = paramFloat1;
    this.a.b = paramFloat2;
  }
  
  public void setOffset(cla paramcla) {
    this.a = paramcla;
    if (this.a == null)
      this.a = new cla(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\github\mikephil\charting\components\MarkerView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */