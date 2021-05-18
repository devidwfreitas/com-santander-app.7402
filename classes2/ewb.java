import java.io.Serializable;
import java.util.Comparator;

final class ewb implements Serializable, Comparator<eqm> {
  private ewb() {}
  
  public int a(eqm parameqm1, eqm parameqm2) {
    int i = ((Integer)parameqm1.e().get(eqn.STRUCTURED_APPEND_SEQUENCE)).intValue();
    int j = ((Integer)parameqm2.e().get(eqn.STRUCTURED_APPEND_SEQUENCE)).intValue();
    return (i < j) ? -1 : ((i > j) ? 1 : 0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ewb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */