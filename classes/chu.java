import java.util.Iterator;
import java.util.List;

public class chu extends cht<cih> implements chx {
  protected chs c;
  
  public chu(cih paramcih, cic paramcic) {
    super(paramcih);
    chs chs1;
    if (paramcic.f() == null) {
      paramcih = null;
    } else {
      chs1 = new chs(paramcic);
    } 
    this.c = chs1;
  }
  
  protected List<chv> b(float paramFloat1, float paramFloat2, float paramFloat3) {
    this.b.clear();
    List<cgg> list = this.a.aK().t();
    int i = 0;
    label27: while (i < list.size()) {
      chv chv;
      cgo cgo = list.get(i);
      if (this.c != null && cgo instanceof cge) {
        chv = this.c.a(paramFloat2, paramFloat3);
        if (chv != null) {
          chv.a(i);
          this.b.add(chv);
          continue;
        } 
        continue;
      } 
      int k = chv.d();
      int j = 0;
      label24: while (true) {
        if (j < k) {
          chv = ((cgg<chv>)list.get(i)).a(j);
          if (!chv.q())
            continue; 
          Iterator<chv> iterator = a((cio)chv, j, paramFloat1, cgr.CLOSEST).iterator();
          while (true) {
            if (iterator.hasNext()) {
              chv chv1 = iterator.next();
              chv1.a(i);
              this.b.add(chv1);
              continue;
            } 
            j++;
            continue label24;
          } 
          break;
        } 
        i++;
        continue label27;
      } 
    } 
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\chu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */