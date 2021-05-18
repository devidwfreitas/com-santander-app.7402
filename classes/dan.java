import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

public abstract class dan<R extends cqg, A extends cpe> extends dat<R> implements dao<R> {
  private final cpf<A> d;
  
  private final cox<?> e;
  
  protected dan(cox<?> paramcox, cpt paramcpt) {
    super((cpt)csp.a(paramcpt, "GoogleApiClient must not be null"));
    this.d = (cpf)paramcox.c();
    this.e = paramcox;
  }
  
  @Deprecated
  protected dan(cpf<A> paramcpf, cpt paramcpt) {
    super((cpt)csp.a(paramcpt, "GoogleApiClient must not be null"));
    this.d = (cpf<A>)csp.a(paramcpf);
    this.e = null;
  }
  
  private void a(RemoteException paramRemoteException) {
    a(new Status(8, paramRemoteException.getLocalizedMessage(), null));
  }
  
  public final void a(Status paramStatus) {
    boolean bool;
    if (!paramStatus.e()) {
      bool = true;
    } else {
      bool = false;
    } 
    csp.b(bool, "Failed result must not be success");
    a(b(paramStatus));
  }
  
  public final void a(A paramA) {
    try {
      b(paramA);
      return;
    } catch (DeadObjectException deadObjectException) {
      a((RemoteException)deadObjectException);
      throw deadObjectException;
    } catch (RemoteException remoteException) {
      a(remoteException);
      return;
    } 
  }
  
  public final cpf<A> b() {
    return this.d;
  }
  
  protected abstract void b(A paramA);
  
  public final cox<?> c() {
    return this.e;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\dan.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */