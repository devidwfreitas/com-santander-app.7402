import java.io.Serializable;
import java.util.Comparator;

final class evb implements Serializable, Comparator<eva> {
  private evb() {}
  
  public int a(eva parameva1, eva parameva2) {
    return parameva1.c() - parameva2.c();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\evb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */