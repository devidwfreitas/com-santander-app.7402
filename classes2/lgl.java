import java.util.Comparator;
import java.util.Date;

class lgl implements Comparator<knx> {
  lgl(lgk paramlgk) {}
  
  public int a(knx paramknx1, knx paramknx2) {
    Date date1;
    Date date2;
    if (paramknx1.d().equalsIgnoreCase("PAGA")) {
      date1 = paramknx1.a();
    } else {
      date1 = date1.b();
    } 
    if (paramknx2.d().equalsIgnoreCase("PAGA")) {
      date2 = paramknx2.a();
    } else {
      date2 = date2.b();
    } 
    return (date1 != null && date2 != null) ? date2.compareTo(date1) : 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lgl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */