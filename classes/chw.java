import com.github.mikephil.charting.data.Entry;
import java.util.ArrayList;
import java.util.List;

public class chw extends chs {
  public chw(cic paramcic) {
    super(paramcic);
  }
  
  protected float a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4) {
    return Math.abs(paramFloat2 - paramFloat4);
  }
  
  public chv a(float paramFloat1, float paramFloat2) {
    cge cge = this.a.f();
    ckz ckz = b(paramFloat2, paramFloat1);
    chv chv = a((float)ckz.b, paramFloat2, paramFloat1);
    if (chv == null)
      return null; 
    cik cik = cge.a(chv.f());
    if (cik.c())
      return a(chv, cik, (float)ckz.b, (float)ckz.a); 
    ckz.a(ckz);
    return chv;
  }
  
  protected List<chv> a(cio<cgr> paramcio, int paramInt, float paramFloat, cgr paramcgr) {
    ArrayList<chv> arrayList = new ArrayList();
    List<cgr> list2 = paramcio.g(paramFloat);
    List<cgr> list1 = list2;
    if (list2.size() == 0) {
      paramcgr = paramcio.a(paramFloat, Float.NaN, paramcgr);
      list1 = list2;
      if (paramcgr != null)
        list1 = paramcio.g(paramcgr.k()); 
    } 
    if (list1.size() == 0)
      return arrayList; 
    for (Entry entry : list1) {
      ckz ckz = this.a.a(paramcio.C()).b(entry.c(), entry.k());
      arrayList.add(new chv(entry.k(), entry.c(), (float)ckz.a, (float)ckz.b, paramInt, paramcio.C()));
    } 
    return arrayList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\chw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */