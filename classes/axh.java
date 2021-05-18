import android.support.v4.util.ArraySet;
import android.support.v4.util.Pair;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class axh {
  private boolean a = false;
  
  private final Set<axj> b = (Set<axj>)new ArraySet();
  
  private Map<String, bew> c = new HashMap<String, bew>();
  
  private final Comparator<Pair<String, Float>> d = new axi(this);
  
  public void a() {
    this.c.clear();
  }
  
  public void a(axj paramaxj) {
    this.b.add(paramaxj);
  }
  
  public void a(String paramString, float paramFloat) {
    if (this.a) {
      bew bew2 = this.c.get(paramString);
      bew bew1 = bew2;
      if (bew2 == null) {
        bew1 = new bew();
        this.c.put(paramString, bew1);
      } 
      bew1.a(paramFloat);
      if (paramString.equals("root")) {
        Iterator<axj> iterator = this.b.iterator();
        while (true) {
          if (iterator.hasNext()) {
            ((axj)iterator.next()).a(paramFloat);
            continue;
          } 
          return;
        } 
      } 
    } 
  }
  
  void a(boolean paramBoolean) {
    this.a = paramBoolean;
  }
  
  public void b() {
    if (this.a) {
      List<Pair<String, Float>> list = c();
      Log.d("LOTTIE", "Render times:");
      int i = 0;
      while (true) {
        if (i < list.size()) {
          Pair pair = list.get(i);
          Log.d("LOTTIE", String.format("\t\t%30s:%.2f", new Object[] { pair.first, pair.second }));
          i++;
          continue;
        } 
        return;
      } 
    } 
  }
  
  public void b(axj paramaxj) {
    this.b.add(paramaxj);
  }
  
  public List<Pair<String, Float>> c() {
    if (!this.a)
      return Collections.emptyList(); 
    ArrayList<Pair> arrayList = new ArrayList(this.c.size());
    for (Map.Entry<String, bew> entry : this.c.entrySet())
      arrayList.add(new Pair(entry.getKey(), Float.valueOf(((bew)entry.getValue()).a()))); 
    Collections.sort(arrayList, (Comparator)this.d);
    return (List)arrayList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\axh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */