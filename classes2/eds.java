import android.os.RemoteException;

public final class eds {
  private final eev a;
  
  public eds(eev parameev) {
    this.a = csp.<eev>a(parameev);
  }
  
  public String a() {
    try {
      return this.a.a();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public String b() {
    try {
      return this.a.b();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void c() {
    try {
      this.a.c();
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public boolean equals(Object paramObject) {
    if (!(paramObject instanceof eds))
      return false; 
    try {
      return this.a.a(((eds)paramObject).a);
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public int hashCode() {
    try {
      return this.a.d();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eds.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */