import com.github.mikephil.charting.charts.PieRadarChartBase;
import java.util.ArrayList;
import java.util.List;

public abstract class chz<T extends PieRadarChartBase> implements chx {
  protected T a;
  
  protected List<chv> b = new ArrayList<chv>();
  
  public chz(T paramT) {
    this.a = paramT;
  }
  
  public chv a(float paramFloat1, float paramFloat2) {
    if (this.a.c(paramFloat1, paramFloat2) > this.a.m())
      return null; 
    float f2 = this.a.b(paramFloat1, paramFloat2);
    float f1 = f2;
    if (this.a instanceof com.github.mikephil.charting.charts.PieChart)
      f1 = f2 / this.a.aa().a(); 
    int i = this.a.a(f1);
    return (i < 0 || i >= this.a.aC().o().I()) ? null : a(i, paramFloat1, paramFloat2);
  }
  
  protected abstract chv a(int paramInt, float paramFloat1, float paramFloat2);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\chz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */