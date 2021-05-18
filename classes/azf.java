import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;

public class azf {
  private final List<ayy<bdd, Path>> a;
  
  private final List<ayy<Integer, Integer>> b;
  
  private final List<bcm> c;
  
  public azf(List<bcm> paramList) {
    this.c = paramList;
    this.a = new ArrayList<ayy<bdd, Path>>(paramList.size());
    this.b = new ArrayList<ayy<Integer, Integer>>(paramList.size());
    for (int i = 0; i < paramList.size(); i++) {
      this.a.add(((bcm)paramList.get(i)).b().a());
      baw baw = ((bcm)paramList.get(i)).c();
      this.b.add(baw.a());
    } 
  }
  
  public List<bcm> a() {
    return this.c;
  }
  
  public List<ayy<bdd, Path>> b() {
    return this.a;
  }
  
  public List<ayy<Integer, Integer>> c() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\azf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */