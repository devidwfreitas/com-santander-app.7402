import android.support.annotation.Nullable;
import java.util.ArrayList;

public class gwx {
  private ArrayList<gta> a = new ArrayList<gta>();
  
  private Boolean b = Boolean.valueOf(false);
  
  private Boolean c = Boolean.valueOf(false);
  
  @Nullable
  public gta a(gwq paramgwq) {
    for (gta gta : this.a) {
      if (gta.e() == paramgwq)
        return gta; 
    } 
    return null;
  }
  
  public ArrayList<gta> a() {
    return this.a;
  }
  
  public void a(Boolean paramBoolean) {
    this.b = paramBoolean;
  }
  
  public void a(ArrayList<gta> paramArrayList) {
    this.a = paramArrayList;
  }
  
  public Boolean b() {
    return this.b;
  }
  
  public void b(Boolean paramBoolean) {
    this.c = paramBoolean;
  }
  
  public Boolean c() {
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gwx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */