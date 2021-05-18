import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

final class ewd extends fan {
  private static final far[] c = new far[0];
  
  private static final float d = 180.0F;
  
  private static final float e = 9.0F;
  
  private static final float f = 0.05F;
  
  private static final float g = 0.5F;
  
  ewd(ett paramett) {
    super(paramett);
  }
  
  ewd(ett paramett, eqp parameqp) {
    super(paramett, parameqp);
  }
  
  private fam[][] c() {
    List<fam> list = b();
    int j = list.size();
    if (j < 3)
      throw eqh.a(); 
    if (j == 3)
      return new fam[][] { { list.get(0), list.get(1), list.get(2) } }; 
    Collections.sort(list, new ewf(null));
    ArrayList<fam[]> arrayList = new ArrayList();
    int i = 0;
    label46: while (i < j - 2) {
      fam fam = list.get(i);
      if (fam == null)
        continue; 
      int k = i + 1;
      label43: while (true) {
        if (k < j - 1) {
          fam fam1 = list.get(k);
          if (fam1 == null)
            continue; 
          float f = (fam.c() - fam1.c()) / Math.min(fam.c(), fam1.c());
          if (Math.abs(fam.c() - fam1.c()) <= 0.5F || f < 0.05F) {
            for (int m = k + 1;; m++) {
              if (m < j) {
                fam fam2 = list.get(m);
                if (fam2 == null)
                  continue; 
                f = (fam1.c() - fam2.c()) / Math.min(fam1.c(), fam2.c());
                if (Math.abs(fam1.c() - fam2.c()) <= 0.5F || f < 0.05F) {
                  fam[] arrayOfFam = new fam[3];
                  arrayOfFam[0] = fam;
                  arrayOfFam[1] = fam1;
                  arrayOfFam[2] = fam2;
                  eqo.a((eqo[])arrayOfFam);
                  far far1 = new far(arrayOfFam);
                  float f1 = eqo.a(far1.b(), far1.a());
                  f = eqo.a(far1.c(), far1.a());
                  float f2 = eqo.a(far1.b(), far1.c());
                  float f3 = (f1 + f2) / fam.c() * 2.0F;
                  if (f3 <= 180.0F && f3 >= 9.0F && Math.abs((f1 - f2) / Math.min(f1, f2)) < 0.1F) {
                    f1 = (float)Math.sqrt((f2 * f2 + f1 * f1));
                    if (Math.abs((f - f1) / Math.min(f, f1)) < 0.1F)
                      arrayList.add(arrayOfFam); 
                  } 
                  continue;
                } 
              } 
              k++;
              continue label43;
            } 
            break;
          } 
        } 
        i++;
        continue label46;
      } 
    } 
    if (!arrayList.isEmpty())
      return arrayList.<fam[]>toArray(new fam[arrayList.size()][]); 
    throw eqh.a();
  }
  
  public far[] a(Map<epy, ?> paramMap) {
    boolean bool;
    if (paramMap != null && paramMap.containsKey(epy.TRY_HARDER)) {
      i = 1;
    } else {
      i = 0;
    } 
    if (paramMap != null && paramMap.containsKey(epy.PURE_BARCODE)) {
      bool = true;
    } else {
      bool = false;
    } 
    ett ett = a();
    int n = ett.g();
    int i1 = ett.f();
    int k = (int)(n / 228.0F * 3.0F);
    if (k < 3 || i)
      k = 3; 
    int[] arrayOfInt = new int[5];
    int m;
    for (m = k - 1; m < n; m += k) {
      arrayOfInt[0] = 0;
      arrayOfInt[1] = 0;
      arrayOfInt[2] = 0;
      arrayOfInt[3] = 0;
      arrayOfInt[4] = 0;
      i = 0;
      for (int i2 = 0; i2 < i1; i2++) {
        if (ett.a(i2, m)) {
          int i3 = i;
          if ((i & 0x1) == 1)
            i3 = i + 1; 
          arrayOfInt[i3] = arrayOfInt[i3] + 1;
          i = i3;
        } else if ((i & 0x1) == 0) {
          if (i == 4) {
            if (a(arrayOfInt) && a(arrayOfInt, m, i2, bool)) {
              i = 0;
              arrayOfInt[0] = 0;
              arrayOfInt[1] = 0;
              arrayOfInt[2] = 0;
              arrayOfInt[3] = 0;
              arrayOfInt[4] = 0;
            } else {
              arrayOfInt[0] = arrayOfInt[2];
              arrayOfInt[1] = arrayOfInt[3];
              arrayOfInt[2] = arrayOfInt[4];
              arrayOfInt[3] = 1;
              arrayOfInt[4] = 0;
              i = 3;
            } 
          } else {
            arrayOfInt[++i] = arrayOfInt[i] + 1;
          } 
        } else {
          arrayOfInt[i] = arrayOfInt[i] + 1;
        } 
      } 
      if (a(arrayOfInt))
        a(arrayOfInt, m, i1, bool); 
    } 
    fam[][] arrayOfFam = c();
    ArrayList<far> arrayList = new ArrayList();
    int j = arrayOfFam.length;
    for (int i = 0; i < j; i++) {
      fam[] arrayOfFam1 = arrayOfFam[i];
      eqo.a((eqo[])arrayOfFam1);
      arrayList.add(new far(arrayOfFam1));
    } 
    return arrayList.isEmpty() ? c : arrayList.<far>toArray(new far[arrayList.size()]);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ewd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */