package com.github.mikephil.charting.charts;

import android.content.Context;
import android.util.AttributeSet;
import cgm;
import cif;
import cjq;
import cjt;

public class CandleStickChart extends BarLineChartBase<cgm> implements cif {
  public CandleStickChart(Context paramContext) {
    super(paramContext);
  }
  
  public CandleStickChart(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  public CandleStickChart(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void a() {
    super.a();
    this.P = (cjt)new cjq(this, this.S, this.R);
    ad().h(0.5F);
    ad().i(0.5F);
  }
  
  public cgm e_() {
    return this.D;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\github\mikephil\charting\charts\CandleStickChart.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */