import android.support.v4.util.Pair;
import java.util.Comparator;

class axi implements Comparator<Pair<String, Float>> {
  axi(axh paramaxh) {}
  
  public int a(Pair<String, Float> paramPair1, Pair<String, Float> paramPair2) {
    float f1 = ((Float)paramPair1.second).floatValue();
    float f2 = ((Float)paramPair2.second).floatValue();
    return (f2 > f1) ? 1 : ((f1 > f2) ? -1 : 0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\axi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */