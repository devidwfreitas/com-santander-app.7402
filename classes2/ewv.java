import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

public final class ewv extends eww {
  private final exd[] a;
  
  public ewv(Map<epy, ?> paramMap) {
    Collection collection;
    if (paramMap == null) {
      paramMap = null;
    } else {
      collection = (Collection)paramMap.get(epy.POSSIBLE_FORMATS);
    } 
    ArrayList<ewn> arrayList = new ArrayList();
    if (collection != null) {
      if (collection.contains(epu.EAN_13)) {
        arrayList.add(new ewn());
      } else if (collection.contains(epu.UPC_A)) {
        arrayList.add(new ewy());
      } 
      if (collection.contains(epu.EAN_8))
        arrayList.add(new ewp()); 
      if (collection.contains(epu.UPC_E))
        arrayList.add(new exf()); 
    } 
    if (arrayList.isEmpty()) {
      arrayList.add(new ewn());
      arrayList.add(new ewp());
      arrayList.add(new exf());
    } 
    this.a = arrayList.<exd>toArray(new exd[arrayList.size()]);
  }
  
  public eqm a(int paramInt, ets paramets, Map<epy, ?> paramMap) {
    int[] arrayOfInt = exd.a(paramets);
    exd[] arrayOfExd = this.a;
    int j = arrayOfExd.length;
    int i = 0;
    while (i < j) {
      exd exd1 = arrayOfExd[i];
      try {
        Collection collection;
        eqm eqm = exd1.a(paramInt, paramets, arrayOfInt, paramMap);
        if (eqm.d() == epu.EAN_13 && eqm.a().charAt(0) == '0') {
          paramInt = 1;
        } else {
          paramInt = 0;
        } 
        if (paramMap == null) {
          paramets = null;
        } else {
          collection = (Collection)paramMap.get(epy.POSSIBLE_FORMATS);
        } 
        if (collection == null || collection.contains(epu.UPC_A)) {
          i = 1;
        } else {
          i = 0;
        } 
        if (paramInt != 0 && i != 0) {
          eqm eqm1 = new eqm(eqm.a().substring(1), eqm.b(), eqm.c(), epu.UPC_A);
          eqm1.a(eqm.e());
          return eqm1;
        } 
        return eqm;
      } catch (eql eql) {
        i++;
      } 
    } 
    throw eqh.a();
  }
  
  public void a() {
    exd[] arrayOfExd = this.a;
    int j = arrayOfExd.length;
    for (int i = 0; i < j; i++)
      arrayOfExd[i].a(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ewv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */