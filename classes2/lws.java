import java.util.Comparator;
import java.util.Date;

class lws implements Comparator<kvs> {
  lws(lwr paramlwr) {}
  
  public int a(kvs paramkvs1, kvs paramkvs2) {
    Date date1 = paramkvs1.b();
    Date date2 = paramkvs2.b();
    return (date1 != null && date2 != null) ? date2.compareTo(date1) : 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lws.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */