import java.util.ArrayList;
import java.util.Map;

public final class ewc extends fal {
  private static final ety[] a = new ety[0];
  
  public ewc(ett paramett) {
    super(paramett);
  }
  
  public ety[] a(Map<epy, ?> paramMap) {
    eqp eqp;
    ett ett = a();
    if (paramMap == null) {
      eqp = null;
    } else {
      eqp = (eqp)paramMap.get(epy.NEED_RESULT_POINT_CALLBACK);
    } 
    far[] arrayOfFar = (new ewd(ett, eqp)).a(paramMap);
    if (arrayOfFar.length == 0)
      throw eqh.a(); 
    ArrayList<ety> arrayList = new ArrayList();
    int j = arrayOfFar.length;
    int i = 0;
    while (true) {
      if (i < j) {
        far far = arrayOfFar[i];
        try {
          arrayList.add(a(far));
        } catch (eql eql) {}
        i++;
        continue;
      } 
      return arrayList.isEmpty() ? a : arrayList.<ety>toArray(new ety[arrayList.size()]);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ewc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */