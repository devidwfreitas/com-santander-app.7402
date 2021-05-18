import com.github.mikephil.charting.data.Entry;
import java.util.Comparator;

public class ckv implements Comparator<Entry> {
  public int a(Entry paramEntry1, Entry paramEntry2) {
    float f = paramEntry1.k() - paramEntry2.k();
    return (f == 0.0F) ? 0 : ((f > 0.0F) ? 1 : -1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ckv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */