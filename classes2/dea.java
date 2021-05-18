import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.BinderThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.util.Log;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzaf;
import com.google.android.gms.internal.zzbaw;
import java.util.HashSet;
import java.util.Set;

public class dea extends dqc implements cpv, cpw {
  private static cpd<? extends dpx, dpy> c = (cpd)dpt.c;
  
  private final Context d;
  
  private final Handler e;
  
  private final cpd<? extends dpx, dpy> f;
  
  private final boolean g;
  
  private Set<Scope> h;
  
  private ctn i;
  
  private dpx j;
  
  private dec k;
  
  @WorkerThread
  public dea(Context paramContext, Handler paramHandler) {
    this.d = paramContext;
    this.e = paramHandler;
    this.f = c;
    this.g = true;
  }
  
  @WorkerThread
  public dea(Context paramContext, Handler paramHandler, ctn paramctn, cpd<? extends dpx, dpy> paramcpd) {
    this.d = paramContext;
    this.e = paramHandler;
    this.i = paramctn;
    this.h = paramctn.e();
    this.f = paramcpd;
    this.g = false;
  }
  
  @WorkerThread
  private void b(zzbaw paramzzbaw) {
    String str;
    ConnectionResult connectionResult = paramzzbaw.a();
    if (connectionResult.b()) {
      zzaf zzaf = paramzzbaw.b();
      ConnectionResult connectionResult1 = zzaf.b();
      if (!connectionResult1.b()) {
        str = String.valueOf(connectionResult1);
        Log.wtf("SignInCoordinator", (new StringBuilder(String.valueOf(str).length() + 48)).append("Sign-in succeeded with resolve account failure: ").append(str).toString(), new Exception());
        this.k.b(connectionResult1);
        this.j.a();
        return;
      } 
      this.k.a(str.a(), this.h);
    } else {
      this.k.b((ConnectionResult)str);
    } 
    this.j.a();
  }
  
  public dpx a() {
    return this.j;
  }
  
  @WorkerThread
  public void a(int paramInt) {
    this.j.a();
  }
  
  @WorkerThread
  public void a(@Nullable Bundle paramBundle) {
    this.j.a(this);
  }
  
  @WorkerThread
  public void a(@NonNull ConnectionResult paramConnectionResult) {
    this.k.b(paramConnectionResult);
  }
  
  @BinderThread
  public void a(zzbaw paramzzbaw) {
    this.e.post(new deb(this, paramzzbaw));
  }
  
  @WorkerThread
  public void a(dec paramdec) {
    if (this.j != null)
      this.j.a(); 
    if (this.g) {
      HashSet<Scope> hashSet;
      GoogleSignInOptions googleSignInOptions = coi.a(this.d).b();
      if (googleSignInOptions == null) {
        hashSet = new HashSet();
      } else {
        hashSet = new HashSet(hashSet.a());
      } 
      this.h = hashSet;
      this.i = new ctn(null, this.h, null, 0, null, null, null, dpy.a);
    } 
    this.j = (dpx)this.f.a(this.d, this.e.getLooper(), this.i, this.i.k(), this, this);
    this.k = paramdec;
    this.j.l();
  }
  
  public void b() {
    this.j.a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dea.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */