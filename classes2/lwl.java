import java.util.Comparator;
import java.util.Date;

class lwl implements Comparator<kvs> {
  lwl(lwk paramlwk) {}
  
  public int a(kvs paramkvs1, kvs paramkvs2) {
    Date date1 = paramkvs1.b();
    Date date2 = paramkvs2.b();
    return (date1 != null && date2 != null) ? date2.compareTo(date1) : 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lwl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */