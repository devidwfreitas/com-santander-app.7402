import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.zzad;
import com.google.android.gms.internal.zzbau;
import com.google.android.gms.internal.zzbaw;

public class dql extends ctv<dqh> implements dpx {
  private final boolean e;
  
  private final ctn f;
  
  private final Bundle g;
  
  private Integer h;
  
  public dql(Context paramContext, Looper paramLooper, boolean paramBoolean, ctn paramctn, Bundle paramBundle, cpv paramcpv, cpw paramcpw) {
    super(paramContext, paramLooper, 44, paramctn, paramcpv, paramcpw);
    this.e = paramBoolean;
    this.f = paramctn;
    this.g = paramBundle;
    this.h = paramctn.l();
  }
  
  public dql(Context paramContext, Looper paramLooper, boolean paramBoolean, ctn paramctn, dpy paramdpy, cpv paramcpv, cpw paramcpw) {
    this(paramContext, paramLooper, paramBoolean, paramctn, a(paramctn), paramcpv, paramcpw);
  }
  
  private zzad A() {
    Account account = this.f.c();
    GoogleSignInAccount googleSignInAccount = null;
    if ("<<default account>>".equals(account.name))
      googleSignInAccount = coi.a(o()).a(); 
    return new zzad(account, this.h.intValue(), googleSignInAccount);
  }
  
  public static Bundle a(ctn paramctn) {
    dpy dpy = paramctn.k();
    Integer integer = paramctn.l();
    Bundle bundle = new Bundle();
    bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", (Parcelable)paramctn.b());
    if (integer != null)
      bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", integer.intValue()); 
    if (dpy != null) {
      bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", dpy.a());
      bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", dpy.b());
      bundle.putString("com.google.android.gms.signin.internal.serverClientId", dpy.c());
      bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
      bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", dpy.d());
      bundle.putString("com.google.android.gms.signin.internal.hostedDomain", dpy.e());
      bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", dpy.f());
      if (dpy.g() != null)
        bundle.putLong("com.google.android.gms.signin.internal.authApiSignInModuleVersion", dpy.g().longValue()); 
      if (dpy.h() != null)
        bundle.putLong("com.google.android.gms.signin.internal.realClientLibraryVersion", dpy.h().longValue()); 
    } 
    return bundle;
  }
  
  public void a(cug paramcug, boolean paramBoolean) {
    try {
      w().a(paramcug, this.h.intValue(), paramBoolean);
      return;
    } catch (RemoteException remoteException) {
      Log.w("SignInClientImpl", "Remote service probably died when saveDefaultAccount is called");
      return;
    } 
  }
  
  public void a(dqe paramdqe) {
    csp.a(paramdqe, "Expecting a valid ISignInCallbacks");
    try {
      zzad zzad = A();
      w().a(new zzbau(zzad), paramdqe);
      return;
    } catch (RemoteException remoteException) {
      Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
      try {
        paramdqe.a(new zzbaw(8));
        return;
      } catch (RemoteException remoteException1) {
        Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", (Throwable)remoteException);
        return;
      } 
    } 
  }
  
  protected dqh b(IBinder paramIBinder) {
    return dqi.a(paramIBinder);
  }
  
  public boolean d() {
    return this.e;
  }
  
  protected String i() {
    return "com.google.android.gms.signin.service.START";
  }
  
  protected String j() {
    return "com.google.android.gms.signin.internal.ISignInService";
  }
  
  public void k() {
    try {
      w().a(this.h.intValue());
      return;
    } catch (RemoteException remoteException) {
      Log.w("SignInClientImpl", "Remote service probably died when clearAccountFromSessionStore is called");
      return;
    } 
  }
  
  public void l() {
    a(new ctk(this));
  }
  
  protected Bundle t() {
    String str = this.f.h();
    if (!o().getPackageName().equals(str))
      this.g.putString("com.google.android.gms.signin.internal.realClientPackageName", this.f.h()); 
    return this.g;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dql.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */