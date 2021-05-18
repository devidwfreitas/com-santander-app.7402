import com.github.mikephil.charting.charts.RadarChart;
import com.github.mikephil.charting.data.Entry;
import java.util.List;

public class cia extends chz<RadarChart> {
  public cia(RadarChart paramRadarChart) {
    super(paramRadarChart);
  }
  
  protected chv a(int paramInt, float paramFloat1, float paramFloat2) {
    List<chv> list = a(paramInt);
    float f = this.a.c(paramFloat1, paramFloat2) / this.a.c();
    chv chv = null;
    paramFloat1 = Float.MAX_VALUE;
    for (paramInt = 0; paramInt < list.size(); paramInt++) {
      chv chv1 = list.get(paramInt);
      paramFloat2 = Math.abs(chv1.b() - f);
      if (paramFloat2 < paramFloat1) {
        chv = chv1;
        paramFloat1 = paramFloat2;
      } 
    } 
    return chv;
  }
  
  protected List<chv> a(int paramInt) {
    this.b.clear();
    float f1 = this.a.aa().b();
    float f2 = this.a.aa().a();
    float f3 = this.a.d();
    float f4 = this.a.c();
    cla cla = cla.a(0.0F, 0.0F);
    int i;
    for (i = 0; i < ((chb)this.a.aC()).d(); i++) {
      cit cit = ((chb)this.a.aC()).a(i);
      Entry entry = (Entry)cit.m(paramInt);
      float f5 = entry.c();
      float f6 = this.a.O();
      cla cla1 = this.a.am();
      float f7 = paramInt;
      clg.a(cla1, (f5 - f6) * f4 * f2, this.a.z() + f7 * f3 * f1, cla);
      this.b.add(new chv(paramInt, entry.c(), cla.a, cla.b, i, cit.C()));
    } 
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cia.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */