import android.graphics.Canvas;
import com.github.mikephil.charting.charts.Chart;
import com.github.mikephil.charting.charts.CombinedChart;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class cjr extends cjt {
  protected List<cjt> a = new ArrayList<cjt>(5);
  
  protected WeakReference<Chart> b;
  
  protected List<chv> c = new ArrayList<chv>();
  
  public cjr(CombinedChart paramCombinedChart, cdq paramcdq, clh paramclh) {
    super(paramcdq, paramclh);
    this.b = new WeakReference(paramCombinedChart);
    b();
  }
  
  public cjt a(int paramInt) {
    return (paramInt >= this.a.size() || paramInt < 0) ? null : this.a.get(paramInt);
  }
  
  public void a() {
    Iterator<cjt> iterator = this.a.iterator();
    while (iterator.hasNext())
      ((cjt)iterator.next()).a(); 
  }
  
  public void a(Canvas paramCanvas) {
    Iterator<cjt> iterator = this.a.iterator();
    while (iterator.hasNext())
      ((cjt)iterator.next()).a(paramCanvas); 
  }
  
  public void a(Canvas paramCanvas, chv[] paramArrayOfchv) {
    Chart chart = this.b.get();
    if (chart != null) {
      Iterator<cjt> iterator = this.a.iterator();
      while (true) {
        if (iterator.hasNext()) {
          int i;
          chv chv1;
          cjt cjt1 = iterator.next();
          if (cjt1 instanceof cjm) {
            chv1 = (chv)((cjm)cjt1).a.f();
          } else if (cjt1 instanceof cjx) {
            chv1 = (chv)((cjx)cjt1).a.aL();
          } else if (cjt1 instanceof cjq) {
            chv1 = (chv)((cjq)cjt1).a.e_();
          } else if (cjt1 instanceof ckf) {
            chv1 = (chv)((ckf)cjt1).a.aM();
          } else if (cjt1 instanceof cjp) {
            chv1 = (chv)((cjp)cjt1).a.c();
          } else {
            chv1 = null;
          } 
          if (chv1 == null) {
            i = -1;
          } else {
            i = ((cgp)chart.aC()).t().indexOf(chv1);
          } 
          this.c.clear();
          int k = paramArrayOfchv.length;
          int j;
          for (j = 0; j < k; j++) {
            chv1 = paramArrayOfchv[j];
            if (chv1.e() == i || chv1.e() == -1)
              this.c.add(chv1); 
          } 
          cjt1.a(paramCanvas, this.c.<chv>toArray(new chv[this.c.size()]));
          continue;
        } 
        return;
      } 
    } 
  }
  
  public void a(List<cjt> paramList) {
    this.a = paramList;
  }
  
  public void b() {
    this.a.clear();
    CombinedChart combinedChart = (CombinedChart)this.b.get();
    if (combinedChart != null) {
      cff[] arrayOfCff = combinedChart.aN();
      int j = arrayOfCff.length;
      int i = 0;
      while (true) {
        if (i < j) {
          cff cff = arrayOfCff[i];
          switch (cjs.a[cff.ordinal()]) {
            case 1:
              if (combinedChart.f() != null)
                this.a.add(new cjm((cic)combinedChart, this.g, this.s)); 
              i++;
              break;
            case 2:
              if (combinedChart.c() != null)
                this.a.add(new cjp((cie)combinedChart, this.g, this.s)); 
              i++;
              break;
            case 3:
              if (combinedChart.aL() != null)
                this.a.add(new cjx((cii)combinedChart, this.g, this.s)); 
              i++;
              break;
            case 4:
              if (combinedChart.e_() != null)
                this.a.add(new cjq((cif)combinedChart, this.g, this.s)); 
              i++;
              break;
            case 5:
              if (combinedChart.aM() != null)
                this.a.add(new ckf((cij)combinedChart, this.g, this.s)); 
              i++;
              break;
          } 
          continue;
        } 
        return;
      } 
    } 
  }
  
  public void b(Canvas paramCanvas) {
    Iterator<cjt> iterator = this.a.iterator();
    while (iterator.hasNext())
      ((cjt)iterator.next()).b(paramCanvas); 
  }
  
  public List<cjt> c() {
    return this.a;
  }
  
  public void c(Canvas paramCanvas) {
    Iterator<cjt> iterator = this.a.iterator();
    while (iterator.hasNext())
      ((cjt)iterator.next()).c(paramCanvas); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cjr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */