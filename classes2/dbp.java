import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import java.util.Iterator;

public class dbp implements dcl {
  private final dcm a;
  
  private boolean b = false;
  
  public dbp(dcm paramdcm) {
    this.a = paramdcm;
  }
  
  private <A extends cpe> void c(dan<? extends cqg, A> paramdan) {
    cpj cpj;
    this.a.i.k.a((dat)paramdan);
    cph cph2 = (cph)this.a.i.b(paramdan.b());
    if (!cph2.b() && this.a.d.containsKey(paramdan.b())) {
      paramdan.a(new Status(17));
      return;
    } 
    cph cph1 = cph2;
    if (cph2 instanceof csu)
      cpj = ((csu)cph2).k(); 
    paramdan.a((cpe)cpj);
  }
  
  public <A extends cpe, R extends cqg, T extends dan<R, A>> T a(T paramT) {
    return (T)b((dan<? extends cqg, cpe>)paramT);
  }
  
  public void a() {}
  
  public void a(int paramInt) {
    this.a.a((ConnectionResult)null);
    this.a.j.a(paramInt, this.b);
  }
  
  public void a(Bundle paramBundle) {}
  
  public void a(ConnectionResult paramConnectionResult, cox<?> paramcox, boolean paramBoolean) {}
  
  public <A extends cpe, T extends dan<? extends cqg, A>> T b(T paramT) {
    try {
      c((dan<? extends cqg, cpe>)paramT);
      return paramT;
    } catch (DeadObjectException deadObjectException) {
      this.a.a(new dbq(this, this));
      return paramT;
    } 
  }
  
  public boolean b() {
    if (this.b)
      return false; 
    if (this.a.i.p()) {
      this.b = true;
      Iterator<dej> iterator = this.a.i.j.iterator();
      while (iterator.hasNext())
        ((dej)iterator.next()).a(); 
      return false;
    } 
    this.a.a((ConnectionResult)null);
    return true;
  }
  
  public void c() {
    if (this.b) {
      this.b = false;
      this.a.a(new dbr(this, this));
    } 
  }
  
  void d() {
    if (this.b) {
      this.b = false;
      this.a.i.k.a();
      b();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dbp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */