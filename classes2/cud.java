import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Message;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

final class cud implements ServiceConnection {
  private final Set<ServiceConnection> b;
  
  private int c;
  
  private boolean d;
  
  private IBinder e;
  
  private final cub f;
  
  private ComponentName g;
  
  public cud(cuc paramcuc, cub paramcub) {
    this.f = paramcub;
    this.b = new HashSet<ServiceConnection>();
    this.c = 2;
  }
  
  public void a(ServiceConnection paramServiceConnection, String paramString) {
    cuc.d(this.a).a(cuc.c(this.a), paramServiceConnection, paramString, this.f.c());
    this.b.add(paramServiceConnection);
  }
  
  public void a(String paramString) {
    this.c = 3;
    this.d = cuc.d(this.a).a(cuc.c(this.a), paramString, this.f.c(), this, 129);
    if (this.d) {
      Message message = cuc.b(this.a).obtainMessage(1, this.f);
      cuc.b(this.a).sendMessageDelayed(message, cuc.e(this.a));
      return;
    } 
    this.c = 2;
    try {
      cuc.d(this.a).a(cuc.c(this.a), this);
      return;
    } catch (IllegalArgumentException illegalArgumentException) {
      return;
    } 
  }
  
  public boolean a() {
    return this.d;
  }
  
  public boolean a(ServiceConnection paramServiceConnection) {
    return this.b.contains(paramServiceConnection);
  }
  
  public int b() {
    return this.c;
  }
  
  public void b(ServiceConnection paramServiceConnection, String paramString) {
    cuc.d(this.a).b(cuc.c(this.a), paramServiceConnection);
    this.b.remove(paramServiceConnection);
  }
  
  public void b(String paramString) {
    cuc.b(this.a).removeMessages(1, this.f);
    cuc.d(this.a).a(cuc.c(this.a), this);
    this.d = false;
    this.c = 2;
  }
  
  public boolean c() {
    return this.b.isEmpty();
  }
  
  public IBinder d() {
    return this.e;
  }
  
  public ComponentName e() {
    return this.g;
  }
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder) {
    synchronized (cuc.a(this.a)) {
      cuc.b(this.a).removeMessages(1, this.f);
      this.e = paramIBinder;
      this.g = paramComponentName;
      Iterator<ServiceConnection> iterator = this.b.iterator();
      while (iterator.hasNext())
        ((ServiceConnection)iterator.next()).onServiceConnected(paramComponentName, paramIBinder); 
    } 
    this.c = 1;
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_3} */
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName) {
    synchronized (cuc.a(this.a)) {
      cuc.b(this.a).removeMessages(1, this.f);
      this.e = null;
      this.g = paramComponentName;
      Iterator<ServiceConnection> iterator = this.b.iterator();
      while (iterator.hasNext())
        ((ServiceConnection)iterator.next()).onServiceDisconnected(paramComponentName); 
    } 
    this.c = 2;
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_2} */
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cud.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */