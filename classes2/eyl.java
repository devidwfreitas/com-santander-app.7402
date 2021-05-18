import java.util.ArrayList;
import java.util.Map;

public final class eyl implements eqk, evy {
  private static int a(eqo parameqo1, eqo parameqo2) {
    return (parameqo1 == null || parameqo2 == null) ? 0 : (int)Math.abs(parameqo1.a() - parameqo2.a());
  }
  
  private static int a(eqo[] paramArrayOfeqo) {
    return Math.max(Math.max(a(paramArrayOfeqo[0], paramArrayOfeqo[4]), a(paramArrayOfeqo[6], paramArrayOfeqo[2]) * 17 / 18), Math.max(a(paramArrayOfeqo[1], paramArrayOfeqo[5]), a(paramArrayOfeqo[7], paramArrayOfeqo[3]) * 17 / 18));
  }
  
  private static eqm[] a(epw paramepw, Map<epy, ?> paramMap, boolean paramBoolean) {
    ArrayList<eqm> arrayList = new ArrayList();
    eze eze = ezd.a(paramepw, paramMap, paramBoolean);
    for (eqo[] arrayOfEqo : eze.b()) {
      etw etw = eyz.a(eze.a(), arrayOfEqo[4], arrayOfEqo[5], arrayOfEqo[6], arrayOfEqo[7], b(arrayOfEqo), a(arrayOfEqo));
      eqm eqm = new eqm(etw.b(), etw.a(), arrayOfEqo, epu.PDF_417);
      eqm.a(eqn.ERROR_CORRECTION_LEVEL, etw.d());
      eym eym = (eym)etw.g();
      if (eym != null)
        eqm.a(eqn.PDF417_EXTRA_METADATA, eym); 
      arrayList.add(eqm);
    } 
    return arrayList.<eqm>toArray(new eqm[arrayList.size()]);
  }
  
  private static int b(eqo parameqo1, eqo parameqo2) {
    return (parameqo1 == null || parameqo2 == null) ? Integer.MAX_VALUE : (int)Math.abs(parameqo1.a() - parameqo2.a());
  }
  
  private static int b(eqo[] paramArrayOfeqo) {
    return Math.min(Math.min(b(paramArrayOfeqo[0], paramArrayOfeqo[4]), b(paramArrayOfeqo[6], paramArrayOfeqo[2]) * 17 / 18), Math.min(b(paramArrayOfeqo[1], paramArrayOfeqo[5]), b(paramArrayOfeqo[7], paramArrayOfeqo[3]) * 17 / 18));
  }
  
  public eqm a(epw paramepw) {
    return a(paramepw, (Map<epy, ?>)null);
  }
  
  public eqm a(epw paramepw, Map<epy, ?> paramMap) {
    eqm[] arrayOfEqm = a(paramepw, paramMap, false);
    if (arrayOfEqm == null || arrayOfEqm.length == 0 || arrayOfEqm[0] == null)
      throw eqh.a(); 
    return arrayOfEqm[0];
  }
  
  public void a() {}
  
  public eqm[] a_(epw paramepw) {
    return a_(paramepw, null);
  }
  
  public eqm[] a_(epw paramepw, Map<epy, ?> paramMap) {
    try {
      return a(paramepw, paramMap, true);
    } catch (eqb eqb) {
    
    } catch (epx epx) {}
    throw eqh.a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eyl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */