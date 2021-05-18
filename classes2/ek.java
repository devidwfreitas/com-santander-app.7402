import android.net.Uri;
import java.util.Collections;
import java.util.List;

public class ek {
  private Uri a;
  
  private List<el> b;
  
  private Uri c;
  
  public ek(Uri paramUri1, List<el> paramList, Uri paramUri2) {
    this.a = paramUri1;
    List<el> list = paramList;
    if (paramList == null)
      list = Collections.emptyList(); 
    this.b = list;
    this.c = paramUri2;
  }
  
  public Uri a() {
    return this.a;
  }
  
  public List<el> b() {
    return Collections.unmodifiableList(this.b);
  }
  
  public Uri c() {
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ek.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */