import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

public final class ewu extends eww {
  private final eww[] a;
  
  public ewu(Map<epy, ?> paramMap) {
    boolean bool;
    Collection collection;
    if (paramMap == null) {
      collection = null;
    } else {
      collection = (Collection)paramMap.get(epy.POSSIBLE_FORMATS);
    } 
    if (paramMap != null && paramMap.get(epy.ASSUME_CODE_39_CHECK_DIGIT) != null) {
      bool = true;
    } else {
      bool = false;
    } 
    ArrayList<ewv> arrayList = new ArrayList();
    if (collection != null) {
      if (collection.contains(epu.EAN_13) || collection.contains(epu.UPC_A) || collection.contains(epu.EAN_8) || collection.contains(epu.UPC_E))
        arrayList.add(new ewv(paramMap)); 
      if (collection.contains(epu.CODE_39))
        arrayList.add(new ewk(bool)); 
      if (collection.contains(epu.CODE_93))
        arrayList.add(new ewm()); 
      if (collection.contains(epu.CODE_128))
        arrayList.add(new ewi()); 
      if (collection.contains(epu.ITF))
        arrayList.add(new ews()); 
      if (collection.contains(epu.CODABAR))
        arrayList.add(new ewg()); 
      if (collection.contains(epu.RSS_14))
        arrayList.add(new exk()); 
      if (collection.contains(epu.RSS_EXPANDED))
        arrayList.add(new exp()); 
    } 
    if (arrayList.isEmpty()) {
      arrayList.add(new ewv(paramMap));
      arrayList.add(new ewk());
      arrayList.add(new ewg());
      arrayList.add(new ewm());
      arrayList.add(new ewi());
      arrayList.add(new ews());
      arrayList.add(new exk());
      arrayList.add(new exp());
    } 
    this.a = arrayList.<eww>toArray(new eww[arrayList.size()]);
  }
  
  public eqm a(int paramInt, ets paramets, Map<epy, ?> paramMap) {
    eww[] arrayOfEww = this.a;
    int j = arrayOfEww.length;
    int i = 0;
    while (i < j) {
      eww eww1 = arrayOfEww[i];
      try {
        return eww1.a(paramInt, paramets, paramMap);
      } catch (eql eql) {
        i++;
      } 
    } 
    throw eqh.a();
  }
  
  public void a() {
    eww[] arrayOfEww = this.a;
    int j = arrayOfEww.length;
    for (int i = 0; i < j; i++)
      arrayOfEww[i].a(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ewu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */