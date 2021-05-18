import java.util.Collections;
import java.util.List;

public class btj {
  private brn a = brn.FRIENDS;
  
  private List<String> b = Collections.emptyList();
  
  private bpv c = null;
  
  private bse d = bse.NATIVE_WITH_FALLBACK;
  
  public brn a() {
    return this.a;
  }
  
  public void a(brn parambrn) {
    this.a = parambrn;
  }
  
  public void a(bse parambse) {
    this.d = parambse;
  }
  
  public void a(List<String> paramList) {
    if (bpv.PUBLISH.equals(this.c))
      throw new UnsupportedOperationException("Cannot call setReadPermissions after setPublishPermissions has been called."); 
    this.b = paramList;
    this.c = bpv.READ;
  }
  
  public List<String> b() {
    return this.b;
  }
  
  public void b(List<String> paramList) {
    if (bpv.READ.equals(this.c))
      throw new UnsupportedOperationException("Cannot call setPublishPermissions after setReadPermissions has been called."); 
    if (bqq.a(paramList))
      throw new IllegalArgumentException("Permissions for publish actions cannot be null or empty."); 
    this.b = paramList;
    this.c = bpv.PUBLISH;
  }
  
  public void c() {
    this.b = null;
    this.c = null;
  }
  
  public bse d() {
    return this.d;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\btj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */