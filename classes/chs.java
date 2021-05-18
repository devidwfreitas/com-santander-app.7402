import com.github.mikephil.charting.data.BarEntry;

public class chs extends cht<cic> {
  public chs(cic paramcic) {
    super(paramcic);
  }
  
  protected float a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4) {
    return Math.abs(paramFloat1 - paramFloat3);
  }
  
  protected int a(cib[] paramArrayOfcib, float paramFloat) {
    if (paramArrayOfcib == null || paramArrayOfcib.length == 0)
      return 0; 
    int m = paramArrayOfcib.length;
    int k = 0;
    int j = 0;
    while (k < m) {
      int n = j;
      if (!paramArrayOfcib[k].a(paramFloat)) {
        k++;
        j++;
        continue;
      } 
      return n;
    } 
    j = Math.max(paramArrayOfcib.length - 1, 0);
    int i = j;
    return (paramFloat <= (paramArrayOfcib[j]).b) ? 0 : i;
  }
  
  protected cgg a() {
    return this.a.f();
  }
  
  public chv a(float paramFloat1, float paramFloat2) {
    chv chv = super.a(paramFloat1, paramFloat2);
    if (chv == null)
      return null; 
    ckz ckz = b(paramFloat1, paramFloat2);
    cik cik = this.a.f().a(chv.f());
    if (cik.c())
      return a(chv, cik, (float)ckz.a, (float)ckz.b); 
    ckz.a(ckz);
    return chv;
  }
  
  public chv a(chv paramchv, cik paramcik, float paramFloat1, float paramFloat2) {
    cib[] arrayOfCib;
    BarEntry barEntry = paramcik.b(paramFloat1, paramFloat2);
    if (barEntry == null)
      return null; 
    chv chv1 = paramchv;
    if (barEntry.b() != null) {
      arrayOfCib = barEntry.d();
      if (arrayOfCib.length > 0) {
        int i = a(arrayOfCib, paramFloat2);
        ckz ckz = this.a.a(paramcik.C()).b(paramchv.a(), (arrayOfCib[i]).b);
        paramchv = new chv(barEntry.k(), barEntry.c(), (float)ckz.a, (float)ckz.b, paramchv.f(), i, paramchv.i());
        ckz.a(ckz);
        return paramchv;
      } 
      return null;
    } 
    return (chv)arrayOfCib;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\chs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */