import com.github.mikephil.charting.charts.PieChart;
import com.github.mikephil.charting.data.PieEntry;

public class chy extends chz<PieChart> {
  public chy(PieChart paramPieChart) {
    super(paramPieChart);
  }
  
  protected chv a(int paramInt, float paramFloat1, float paramFloat2) {
    cis cis = ((cgy)this.a.aC()).a();
    PieEntry pieEntry = cis.m(paramInt);
    return new chv(paramInt, pieEntry.c(), paramFloat1, paramFloat2, 0, cis.C());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\chy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */