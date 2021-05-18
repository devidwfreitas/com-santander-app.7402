import android.graphics.Canvas;
import com.github.mikephil.charting.charts.RadarChart;

public class cki extends ckg {
  private RadarChart n;
  
  public cki(clh paramclh, cfz paramcfz, RadarChart paramRadarChart) {
    super(paramclh, paramcfz, (cle)null);
    this.n = paramRadarChart;
  }
  
  public void a(Canvas paramCanvas) {
    if (!this.g.K() || !this.g.h())
      return; 
    float f1 = this.g.M();
    cla cla1 = cla.a(0.5F, 0.25F);
    this.d.setTypeface(this.g.H());
    this.d.setTextSize(this.g.I());
    this.d.setColor(this.g.J());
    float f2 = this.n.d();
    float f3 = this.n.c();
    cla cla2 = this.n.am();
    cla cla3 = cla.a(0.0F, 0.0F);
    int i;
    for (i = 0; i < ((chb)this.n.aC()).o().I(); i++) {
      String str = this.g.q().a(i, this.g);
      float f4 = i;
      float f5 = this.n.z();
      clg.a(cla2, this.n.q() * f3 + this.g.D / 2.0F, (f4 * f2 + f5) % 360.0F, cla3);
      a(paramCanvas, str, cla3.a, cla3.b - this.g.E / 2.0F, cla1, f1);
    } 
    cla.a(cla2);
    cla.a(cla3);
    cla.a(cla1);
  }
  
  public void d(Canvas paramCanvas) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cki.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */