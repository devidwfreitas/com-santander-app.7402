import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.ConnectionResult;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class dah extends dap {
  private final SparseArray<dai> e = new SparseArray();
  
  private dah(ddk paramddk) {
    super(paramddk);
    this.d.a("AutoManageHelper", this);
  }
  
  public static dah a(ddi paramddi) {
    ddk ddk = b(paramddi);
    dah dah1 = ddk.<dah>a("AutoManageHelper", dah.class);
    return (dah1 != null) ? dah1 : new dah(ddk);
  }
  
  public void a() {
    super.a();
    boolean bool = this.a;
    String str = String.valueOf(this.e);
    Log.d("AutoManageHelper", (new StringBuilder(String.valueOf(str).length() + 14)).append("onStart ").append(bool).append(" ").append(str).toString());
    if (!this.b)
      for (int i = 0; i < this.e.size(); i++)
        ((dai)this.e.valueAt(i)).b.e();  
  }
  
  public void a(int paramInt) {
    dai dai = (dai)this.e.get(paramInt);
    this.e.remove(paramInt);
    if (dai != null)
      dai.a(); 
  }
  
  public void a(int paramInt, cpt paramcpt, cpw paramcpw) {
    csp.a(paramcpt, "GoogleApiClient instance cannot be null");
    if (this.e.indexOfKey(paramInt) < 0) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    csp.a(bool1, (new StringBuilder(54)).append("Already managing a GoogleApiClient with id ").append(paramInt).toString());
    boolean bool1 = this.a;
    boolean bool2 = this.b;
    Log.d("AutoManageHelper", (new StringBuilder(54)).append("starting AutoManage for client ").append(paramInt).append(" ").append(bool1).append(" ").append(bool2).toString());
    paramcpw = new dai(this, paramInt, paramcpt, paramcpw);
    this.e.put(paramInt, paramcpw);
    if (this.a && !this.b) {
      String str = String.valueOf(paramcpt);
      Log.d("AutoManageHelper", (new StringBuilder(String.valueOf(str).length() + 11)).append("connecting ").append(str).toString());
      paramcpt.e();
    } 
  }
  
  protected void a(ConnectionResult paramConnectionResult, int paramInt) {
    Log.w("AutoManageHelper", "Unresolved error while connecting client. Stopping auto-manage.");
    if (paramInt < 0) {
      Log.wtf("AutoManageHelper", "AutoManageLifecycleHelper received onErrorResolutionFailed callback but no failing client ID is set", new Exception());
      return;
    } 
    dai dai = (dai)this.e.get(paramInt);
    if (dai != null) {
      a(paramInt);
      cpw cpw = dai.c;
      if (cpw != null) {
        cpw.a(paramConnectionResult);
        return;
      } 
    } 
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString) {
    int i;
    for (i = 0; i < this.e.size(); i++)
      ((dai)this.e.valueAt(i)).a(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString); 
  }
  
  public void b() {
    super.b();
    for (int i = 0; i < this.e.size(); i++)
      ((dai)this.e.valueAt(i)).b.g(); 
  }
  
  protected void c() {
    for (int i = 0; i < this.e.size(); i++)
      ((dai)this.e.valueAt(i)).b.e(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dah.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */