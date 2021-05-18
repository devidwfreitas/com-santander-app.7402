import android.os.RemoteException;

public final class eeb {
  private final efe a;
  
  public eeb(efe paramefe) {
    this.a = csp.<efe>a(paramefe);
  }
  
  public void a() {
    try {
      this.a.a();
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void a(float paramFloat) {
    try {
      this.a.a(paramFloat);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void a(boolean paramBoolean) {
    try {
      this.a.a(paramBoolean);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void b() {
    try {
      this.a.b();
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void b(float paramFloat) {
    try {
      this.a.b(paramFloat);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void b(boolean paramBoolean) {
    try {
      this.a.b(paramBoolean);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public String c() {
    try {
      return this.a.c();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public float d() {
    try {
      return this.a.d();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public boolean e() {
    try {
      return this.a.e();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public boolean equals(Object paramObject) {
    if (!(paramObject instanceof eeb))
      return false; 
    try {
      return this.a.a(((eeb)paramObject).a);
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public boolean f() {
    try {
      return this.a.g();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public float g() {
    try {
      return this.a.h();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public int hashCode() {
    try {
      return this.a.f();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eeb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */