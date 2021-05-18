import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class aro implements arn {
  private static final String a = aro.class.getName();
  
  private final ard b;
  
  private List<ark> c;
  
  public aro(ard paramard, List<ark> paramList) {
    this.b = paramard;
    this.c = paramList;
  }
  
  public ark a(List<ark> paramList, ark paramark) {
    ark ark1;
    List list = null;
    Iterator<ark> iterator = paramList.iterator();
    paramList = list;
    while (iterator.hasNext()) {
      ark ark2 = iterator.next();
      if (ark2.b() == aqb.Agent && (ark2.c() == apu.TypingStarted || ark2.c() == apu.TypingStopped) && ark2.e().equals(paramark.e()))
        ark1 = ark2; 
    } 
    return ark1;
  }
  
  public List<ark> a() {
    if (this.c == null)
      this.c = new ArrayList<ark>(); 
    return a(this.c);
  }
  
  public List<ark> a(List<ark> paramList) {
    if (this.b.L()) {
      ArrayList<ark> arrayList = new ArrayList();
      for (ark ark : paramList) {
        if (!ark.i() && ark.c() == apu.TypingStarted) {
          Log.d(a, "Typing: " + ark);
          arrayList.add(ark);
        } 
      } 
      this.b.c(false);
      return arrayList;
    } 
    return a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aro.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */