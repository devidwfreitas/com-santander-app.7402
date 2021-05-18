package com.github.mikephil.charting.charts;

import android.content.Context;
import android.util.AttributeSet;
import cgt;
import cii;
import cjt;
import cjx;

public class LineChart extends BarLineChartBase<cgt> implements cii {
  public LineChart(Context paramContext) {
    super(paramContext);
  }
  
  public LineChart(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  public LineChart(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void a() {
    super.a();
    this.P = (cjt)new cjx(this, this.S, this.R);
  }
  
  public cgt aL() {
    return this.D;
  }
  
  protected void onDetachedFromWindow() {
    if (this.P != null && this.P instanceof cjx)
      ((cjx)this.P).c(); 
    super.onDetachedFromWindow();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\github\mikephil\charting\charts\LineChart.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */