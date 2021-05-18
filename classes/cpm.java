import com.google.android.gms.common.api.Status;
import java.util.List;

public final class cpm extends dat<cpp> {
  private int d;
  
  private boolean e;
  
  private boolean f;
  
  private final cpy<?>[] g;
  
  private final Object h = new Object();
  
  private cpm(List<cpy<?>> paramList, cpt paramcpt) {
    super(paramcpt);
    this.d = paramList.size();
    this.g = (cpy<?>[])new cpy[this.d];
    if (paramList.isEmpty()) {
      a(new cpp(Status.a, this.g));
      return;
    } 
    int i = 0;
    while (true) {
      if (i < paramList.size()) {
        cpy<?> cpy1 = paramList.get(i);
        this.g[i] = cpy1;
        cpy1.a(new cpn(this));
        i++;
        continue;
      } 
      return;
    } 
  }
  
  public cpp a(Status paramStatus) {
    return new cpp(paramStatus, this.g);
  }
  
  public void a() {
    super.a();
    cpy<?>[] arrayOfCpy = this.g;
    int j = arrayOfCpy.length;
    for (int i = 0; i < j; i++)
      arrayOfCpy[i].a(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cpm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */