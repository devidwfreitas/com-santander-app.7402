import android.graphics.Matrix;
import android.view.View;
import com.github.mikephil.charting.charts.BarLineChartBase;

public class cja extends ciz {
  private static clc<cja> e = clc.a(1, new cja(null, 0.0F, 0.0F, 0.0F, 0.0F, null, null, null));
  
  protected float a;
  
  protected float b;
  
  protected cgc c;
  
  protected Matrix d = new Matrix();
  
  static {
    e.a(0.5F);
  }
  
  public cja(clh paramclh, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, cle paramcle, cgc paramcgc, View paramView) {
    super(paramclh, paramFloat3, paramFloat4, paramcle, paramView);
    this.a = paramFloat1;
    this.b = paramFloat2;
    this.c = paramcgc;
  }
  
  public static cja a(clh paramclh, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, cle paramcle, cgc paramcgc, View paramView) {
    cja cja1 = e.c();
    cja1.n = paramFloat3;
    cja1.o = paramFloat4;
    cja1.a = paramFloat1;
    cja1.b = paramFloat2;
    cja1.m = paramclh;
    cja1.p = paramcle;
    cja1.c = paramcgc;
    cja1.q = paramView;
    return cja1;
  }
  
  public static void a(cja paramcja) {
    e.a(paramcja);
  }
  
  protected cld b() {
    return new cja(null, 0.0F, 0.0F, 0.0F, 0.0F, null, null, null);
  }
  
  public void run() {
    Matrix matrix = this.d;
    this.m.c(this.a, this.b, matrix);
    this.m.a(matrix, this.q, false);
    float f1 = (((BarLineChartBase)this.q).c(this.c)).u / this.m.t();
    float f2 = (((BarLineChartBase)this.q).ad()).u / this.m.s();
    this.l[0] = this.n - f2 / 2.0F;
    float[] arrayOfFloat = this.l;
    f2 = this.o;
    arrayOfFloat[1] = f1 / 2.0F + f2;
    this.p.a(this.l);
    this.m.a(this.l, matrix);
    this.m.a(matrix, this.q, false);
    ((BarLineChartBase)this.q).l();
    this.q.postInvalidate();
    a(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cja.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */