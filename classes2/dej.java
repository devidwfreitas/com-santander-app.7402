import android.os.Looper;
import android.support.annotation.NonNull;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import java.lang.ref.WeakReference;

public class dej<R extends cqg> extends cqk<R> implements cqh<R> {
  private cqj<? super R, ? extends cqg> a;
  
  private dej<? extends cqg> b;
  
  private volatile cqi<? super R> c;
  
  private cpy<R> d;
  
  private final Object e;
  
  private Status f;
  
  private final WeakReference<cpt> g;
  
  private final del h;
  
  private boolean i;
  
  public dej(WeakReference<cpt> paramWeakReference) {
    Looper looper;
    this.a = null;
    this.b = null;
    this.c = null;
    this.d = null;
    this.e = new Object();
    this.f = null;
    this.i = false;
    csp.a(paramWeakReference, "GoogleApiClient reference must not be null");
    this.g = paramWeakReference;
    cpt cpt = this.g.get();
    if (cpt != null) {
      looper = cpt.c();
    } else {
      looper = Looper.getMainLooper();
    } 
    this.h = new del(this, looper);
  }
  
  private void a(Status paramStatus) {
    synchronized (this.e) {
      this.f = paramStatus;
      b(this.f);
      return;
    } 
  }
  
  private void a(cqg paramcqg) {
    if (paramcqg instanceof cqe)
      try {
        ((cqe)paramcqg).b();
        return;
      } catch (RuntimeException runtimeException) {
        String str = String.valueOf(paramcqg);
        Log.w("TransformedResultImpl", (new StringBuilder(String.valueOf(str).length() + 18)).append("Unable to release ").append(str).toString(), runtimeException);
        return;
      }  
  }
  
  private void b() {
    if (this.a != null || this.c != null) {
      cpt cpt = this.g.get();
      if (!this.i && this.a != null && cpt != null) {
        cpt.a(this);
        this.i = true;
      } 
      if (this.f != null) {
        b(this.f);
        return;
      } 
      if (this.d != null) {
        this.d.a(this);
        return;
      } 
    } 
  }
  
  private void b(Status paramStatus) {
    synchronized (this.e) {
      if (this.a != null) {
        paramStatus = this.a.a(paramStatus);
        csp.a(paramStatus, "onFailure must not return null");
        this.b.a(paramStatus);
      } else if (c()) {
        this.c.a(paramStatus);
      } 
      return;
    } 
  }
  
  private boolean c() {
    cpt cpt = this.g.get();
    return (this.c != null && cpt != null);
  }
  
  @NonNull
  public <S extends cqg> cqk<S> a(@NonNull cqj<? super R, ? extends S> paramcqj) {
    boolean bool2 = true;
    synchronized (this.e) {
      boolean bool;
      if (this.a == null) {
        bool = true;
      } else {
        bool = false;
      } 
      csp.a(bool, "Cannot call then() twice.");
      if (this.c == null) {
        bool = bool2;
        csp.a(bool, "Cannot call then() and andFinally() on the same TransformedResult.");
        this.a = paramcqj;
        dej<? extends cqg> dej2 = new dej(this.g);
        this.b = dej2;
        b();
        return (cqk)dej2;
      } 
    } 
    boolean bool1 = false;
    csp.a(bool1, "Cannot call then() and andFinally() on the same TransformedResult.");
    this.a = paramcqj;
    dej<? extends cqg> dej1 = new dej(this.g);
    this.b = dej1;
    b();
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_4} */
    return (cqk)dej1;
  }
  
  void a() {
    this.c = null;
  }
  
  public void a(cpy<?> paramcpy) {
    synchronized (this.e) {
      this.d = (cpy)paramcpy;
      b();
      return;
    } 
  }
  
  public void a(@NonNull cqi<? super R> paramcqi) {
    boolean bool = true;
    synchronized (this.e) {
      boolean bool1;
      if (this.c == null) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
      csp.a(bool1, "Cannot call andFinally() twice.");
      if (this.a == null) {
        bool1 = bool;
      } else {
        bool1 = false;
      } 
      csp.a(bool1, "Cannot call then() and andFinally() on the same TransformedResult.");
      this.c = paramcqi;
      b();
      return;
    } 
  }
  
  public void b(R paramR) {
    synchronized (this.e) {
      if (paramR.a().e()) {
        if (this.a != null) {
          ddx.a().submit(new dek(this, (cqg)paramR));
        } else if (c()) {
          this.c.a((cqg)paramR);
        } 
      } else {
        a(paramR.a());
        a((cqg)paramR);
      } 
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dej.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */