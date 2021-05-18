import com.github.mikephil.charting.data.Entry;
import java.util.ArrayList;
import java.util.List;

public class cht<T extends cid> implements chx {
  protected T a;
  
  protected List<chv> b = new ArrayList<chv>();
  
  public cht(T paramT) {
    this.a = paramT;
  }
  
  protected float a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4) {
    return (float)Math.hypot((paramFloat1 - paramFloat3), (paramFloat2 - paramFloat4));
  }
  
  protected float a(chv paramchv) {
    return paramchv.d();
  }
  
  protected float a(List<chv> paramList, float paramFloat, cgc paramcgc) {
    float f = Float.MAX_VALUE;
    int i = 0;
    while (i < paramList.size()) {
      chv chv = paramList.get(i);
      float f1 = f;
      if (chv.i() == paramcgc) {
        float f2 = Math.abs(a(chv) - paramFloat);
        f1 = f;
        if (f2 < f)
          f1 = f2; 
      } 
      i++;
      f = f1;
    } 
    return f;
  }
  
  protected cgg a() {
    return this.a.R();
  }
  
  public chv a(float paramFloat1, float paramFloat2) {
    ckz ckz = b(paramFloat1, paramFloat2);
    float f = (float)ckz.a;
    ckz.a(ckz);
    return a(f, paramFloat1, paramFloat2);
  }
  
  protected chv a(float paramFloat1, float paramFloat2, float paramFloat3) {
    List<chv> list = b(paramFloat1, paramFloat2, paramFloat3);
    if (list.isEmpty())
      return null; 
    if (a(list, paramFloat3, cgc.LEFT) < a(list, paramFloat3, cgc.RIGHT)) {
      cgc cgc1 = cgc.LEFT;
      return a(list, paramFloat2, paramFloat3, cgc1, this.a.V());
    } 
    cgc cgc = cgc.RIGHT;
    return a(list, paramFloat2, paramFloat3, cgc, this.a.V());
  }
  
  public chv a(List<chv> paramList, float paramFloat1, float paramFloat2, cgc paramcgc, float paramFloat3) {
    chv chv = null;
    int i;
    for (i = 0; i < paramList.size(); i++) {
      chv chv1 = paramList.get(i);
      if (paramcgc == null || chv1.i() == paramcgc) {
        float f = a(paramFloat1, paramFloat2, chv1.c(), chv1.d());
        if (f < paramFloat3) {
          chv = chv1;
          paramFloat3 = f;
        } 
      } 
    } 
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
      ckz ckz = this.a.a(paramcio.C()).b(entry.k(), entry.c());
      arrayList.add(new chv(entry.k(), entry.c(), (float)ckz.a, (float)ckz.b, paramInt, paramcio.C()));
    } 
    return arrayList;
  }
  
  protected ckz b(float paramFloat1, float paramFloat2) {
    return this.a.a(cgc.LEFT).a(paramFloat1, paramFloat2);
  }
  
  protected List<chv> b(float paramFloat1, float paramFloat2, float paramFloat3) {
    this.b.clear();
    cgg<Object> cgg = a();
    if (cgg == null)
      return this.b; 
    int i = 0;
    int j = cgg.d();
    while (i < j) {
      cio cio = (cio)cgg.a(i);
      if (cio.q())
        this.b.addAll(a(cio, i, paramFloat1, cgr.CLOSEST)); 
      i++;
    } 
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cht.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */