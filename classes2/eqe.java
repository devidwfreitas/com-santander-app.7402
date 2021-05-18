import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

public final class eqe implements eqk {
  private Map<epy, ?> a;
  
  private eqk[] b;
  
  private eqm c(epw paramepw) {
    if (this.b != null) {
      eqk[] arrayOfEqk = this.b;
      int j = arrayOfEqk.length;
      int i = 0;
      while (i < j) {
        eqk eqk1 = arrayOfEqk[i];
        try {
          return eqk1.a(paramepw, this.a);
        } catch (eql eql) {
          i++;
        } 
      } 
    } 
    throw eqh.a();
  }
  
  public eqm a(epw paramepw) {
    a((Map<epy, ?>)null);
    return c(paramepw);
  }
  
  public eqm a(epw paramepw, Map<epy, ?> paramMap) {
    a(paramMap);
    return c(paramepw);
  }
  
  public void a() {
    if (this.b != null) {
      eqk[] arrayOfEqk = this.b;
      int j = arrayOfEqk.length;
      for (int i = 0; i < j; i++)
        arrayOfEqk[i].a(); 
    } 
  }
  
  public void a(Map<epy, ?> paramMap) {
    boolean bool1;
    Collection collection;
    boolean bool2 = false;
    this.a = paramMap;
    if (paramMap != null && paramMap.containsKey(epy.TRY_HARDER)) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if (paramMap == null) {
      collection = null;
    } else {
      collection = (Collection)paramMap.get(epy.POSSIBLE_FORMATS);
    } 
    ArrayList<ewu> arrayList = new ArrayList();
    if (collection != null) {
      if (collection.contains(epu.UPC_A) || collection.contains(epu.UPC_E) || collection.contains(epu.EAN_13) || collection.contains(epu.EAN_8) || collection.contains(epu.CODABAR) || collection.contains(epu.CODE_39) || collection.contains(epu.CODE_93) || collection.contains(epu.CODE_128) || collection.contains(epu.ITF) || collection.contains(epu.RSS_14) || collection.contains(epu.RSS_EXPANDED))
        bool2 = true; 
      if (bool2 && !bool1)
        arrayList.add(new ewu(paramMap)); 
      if (collection.contains(epu.QR_CODE))
        arrayList.add(new ezm()); 
      if (collection.contains(epu.DATA_MATRIX))
        arrayList.add(new eum()); 
      if (collection.contains(epu.AZTEC))
        arrayList.add(new eqt()); 
      if (collection.contains(epu.PDF_417))
        arrayList.add(new eyl()); 
      if (collection.contains(epu.MAXICODE))
        arrayList.add(new evs()); 
      if (bool2 && bool1)
        arrayList.add(new ewu(paramMap)); 
    } 
    if (arrayList.isEmpty()) {
      if (!bool1)
        arrayList.add(new ewu(paramMap)); 
      arrayList.add(new ezm());
      arrayList.add(new eum());
      arrayList.add(new eqt());
      arrayList.add(new eyl());
      arrayList.add(new evs());
      if (bool1)
        arrayList.add(new ewu(paramMap)); 
    } 
    this.b = arrayList.<eqk>toArray(new eqk[arrayList.size()]);
  }
  
  public eqm b(epw paramepw) {
    if (this.b == null)
      a((Map<epy, ?>)null); 
    return c(paramepw);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eqe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */