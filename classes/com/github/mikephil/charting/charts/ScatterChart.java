package com.github.mikephil.charting.charts;

import android.content.Context;
import android.util.AttributeSet;
import chd;
import cij;
import cjt;
import ckf;

public class ScatterChart extends BarLineChartBase<chd> implements cij {
  public ScatterChart(Context paramContext) {
    super(paramContext);
  }
  
  public ScatterChart(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  public ScatterChart(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void a() {
    super.a();
    this.P = (cjt)new ckf(this, this.S, this.R);
  }
  
  public chd aM() {
    return this.D;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\github\mikephil\charting\charts\ScatterChart.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */