import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

public class dem {
  public static final Status a = new Status(8, "The connection to Google Play services was lost");
  
  private static final dat<?>[] c = (dat<?>[])new dat[0];
  
  final Set<dat<?>> b = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap<dat<?>, Boolean>()));
  
  private final dep d = new den(this);
  
  private final Map<cpf<?>, cph> e;
  
  public dem(Map<cpf<?>, cph> paramMap) {
    this.e = paramMap;
  }
  
  private static void a(dat<?> paramdat, cqt paramcqt, IBinder paramIBinder) {
    if (paramdat.g()) {
      paramdat.a(new deo(paramdat, paramcqt, paramIBinder, null));
      return;
    } 
    if (paramIBinder != null && paramIBinder.isBinderAlive()) {
      deo deo = new deo(paramdat, paramcqt, paramIBinder, null);
      paramdat.a(deo);
      try {
        paramIBinder.linkToDeath(deo, 0);
        return;
      } catch (RemoteException remoteException) {
        paramdat.a();
        paramcqt.a(paramdat.f().intValue());
        return;
      } 
    } 
    paramdat.a(null);
    paramdat.a();
    paramcqt.a(paramdat.f().intValue());
  }
  
  public void a() {
    for (dat<?> dat1 : (dat[])this.b.<dat>toArray((dat[])c)) {
      dat1.a(null);
      if (dat1.f() == null) {
        if (dat1.h())
          this.b.remove(dat1); 
      } else {
        dat1.i();
        a(dat1, null, ((cph)this.e.get(((dan)dat1).b())).h());
        this.b.remove(dat1);
      } 
    } 
  }
  
  void a(dat<? extends cqg> paramdat) {
    this.b.add(paramdat);
    paramdat.a(this.d);
  }
  
  public void a(PrintWriter paramPrintWriter) {
    paramPrintWriter.append(" mUnconsumedApiCalls.size()=").println(this.b.size());
  }
  
  public void b() {
    dat[] arrayOfDat = this.b.<dat>toArray((dat[])c);
    int j = arrayOfDat.length;
    for (int i = 0; i < j; i++)
      arrayOfDat[i].c(a); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dem.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */