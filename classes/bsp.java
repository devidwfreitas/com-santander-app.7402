import android.app.Activity;
import android.app.Fragment;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import com.facebook.AccessToken;
import com.facebook.FacebookActivity;
import com.facebook.Profile;
import com.facebook.login.LoginClient;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

public class bsp {
  private static final String a = "publish";
  
  private static final String b = "manage";
  
  private static final Set<String> c = a();
  
  private static volatile bsp d;
  
  private bse e = bse.NATIVE_WITH_FALLBACK;
  
  private brn f = brn.FRIENDS;
  
  bsp() {
    bqx.b();
  }
  
  static bsx a(LoginClient.Request paramRequest, AccessToken paramAccessToken) {
    Set<?> set = paramRequest.a();
    HashSet<?> hashSet1 = new HashSet(paramAccessToken.e());
    if (paramRequest.f())
      hashSet1.retainAll(set); 
    HashSet<String> hashSet = new HashSet(set);
    hashSet.removeAll(hashSet1);
    return new bsx(paramAccessToken, (Set)hashSet1, hashSet);
  }
  
  private LoginClient.Request a(bix parambix) {
    bqx.a(parambix, "response");
    AccessToken accessToken = parambix.e().f();
    if (accessToken != null) {
      Set<String> set = accessToken.e();
      return a(set);
    } 
    accessToken = null;
    return a((Collection<String>)accessToken);
  }
  
  private static Set<String> a() {
    return Collections.unmodifiableSet(new bsr());
  }
  
  private void a(Context paramContext, bsk parambsk, Map<String, String> paramMap, Exception paramException, boolean paramBoolean, LoginClient.Request paramRequest) {
    String str;
    bso bso = bsw.a(paramContext);
    if (bso == null)
      return; 
    if (paramRequest == null) {
      bso.c("fb_mobile_login_complete", "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.");
      return;
    } 
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    if (paramBoolean) {
      str = "1";
    } else {
      str = "0";
    } 
    hashMap.put("try_login_activity", str);
    bso.a(paramRequest.e(), (Map)hashMap, parambsk, paramMap, paramException);
  }
  
  private void a(Context paramContext, LoginClient.Request paramRequest) {
    bso bso = bsw.a(paramContext);
    if (bso != null && paramRequest != null)
      bso.a(paramRequest); 
  }
  
  private void a(bpa parambpa, bix parambix) {
    a(new bsv(parambpa), a(parambix));
  }
  
  private void a(bpa parambpa, Collection<String> paramCollection) {
    b(paramCollection);
    LoginClient.Request request = a(paramCollection);
    a(new bsv(parambpa), request);
  }
  
  private void a(bsz parambsz, LoginClient.Request paramRequest) {
    a((Context)parambsz.a(), paramRequest);
    bnj.a(bnl.Login.toRequestCode(), new bss(this));
    if (!b(parambsz, paramRequest)) {
      bhp bhp = new bhp("Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest.");
      a((Context)parambsz.a(), bsk.ERROR, null, bhp, false, paramRequest);
      throw bhp;
    } 
  }
  
  private void a(AccessToken paramAccessToken, LoginClient.Request paramRequest, bhp parambhp, boolean paramBoolean, bhl<bsx> parambhl) {
    if (paramAccessToken != null) {
      AccessToken.a(paramAccessToken);
      Profile.b();
    } 
    if (parambhl != null) {
      if (paramAccessToken != null) {
        bsx bsx = a(paramRequest, paramAccessToken);
      } else {
        paramRequest = null;
      } 
      if (paramBoolean || (paramRequest != null && paramRequest.b().size() == 0)) {
        parambhl.a();
        return;
      } 
    } else {
      return;
    } 
    if (parambhp != null) {
      parambhl.a(parambhp);
      return;
    } 
    if (paramAccessToken != null) {
      parambhl.a(paramRequest);
      return;
    } 
  }
  
  private boolean a(Intent paramIntent) {
    boolean bool = false;
    if (bhv.h().getPackageManager().resolveActivity(paramIntent, 0) != null)
      bool = true; 
    return bool;
  }
  
  public static boolean a(String paramString) {
    return (paramString != null && (paramString.startsWith("publish") || paramString.startsWith("manage") || c.contains(paramString)));
  }
  
  private void b(Context paramContext, bjc parambjc) {
    String str1 = bhv.l();
    String str2 = UUID.randomUUID().toString();
    bsy bsy = new bsy(paramContext, str1, str2);
    bso bso = new bso(paramContext, str1);
    bsy.a(new bst(this, str2, bso, parambjc, str1));
    bso.b(str2);
    if (!bsy.b()) {
      bso.d(str2);
      parambjc.a();
    } 
  }
  
  private void b(bpa parambpa, Collection<String> paramCollection) {
    c(paramCollection);
    LoginClient.Request request = a(paramCollection);
    a(new bsv(parambpa), request);
  }
  
  private static void b(String paramString1, String paramString2, String paramString3, bso parambso, bjc parambjc) {
    bhp bhp = new bhp(paramString1 + ": " + paramString2);
    parambso.a(paramString3, bhp);
    parambjc.a(bhp);
  }
  
  private void b(Collection<String> paramCollection) {
    if (paramCollection != null) {
      Iterator<String> iterator = paramCollection.iterator();
      while (true) {
        if (iterator.hasNext()) {
          String str = iterator.next();
          if (a(str))
            throw new bhp(String.format("Cannot pass a publish or manage permission (%s) to a request for read authorization", new Object[] { str })); 
          continue;
        } 
        return;
      } 
    } 
  }
  
  private boolean b(bsz parambsz, LoginClient.Request paramRequest) {
    Intent intent = a(paramRequest);
    if (!a(intent))
      return false; 
    try {
      parambsz.a(intent, LoginClient.d());
      return true;
    } catch (ActivityNotFoundException activityNotFoundException) {
      return false;
    } 
  }
  
  public static bsp c() {
    // Byte code:
    //   0: getstatic bsp.d : Lbsp;
    //   3: ifnonnull -> 28
    //   6: ldc bsp
    //   8: monitorenter
    //   9: getstatic bsp.d : Lbsp;
    //   12: ifnonnull -> 25
    //   15: new bsp
    //   18: dup
    //   19: invokespecial <init> : ()V
    //   22: putstatic bsp.d : Lbsp;
    //   25: ldc bsp
    //   27: monitorexit
    //   28: getstatic bsp.d : Lbsp;
    //   31: areturn
    //   32: astore_0
    //   33: ldc bsp
    //   35: monitorexit
    //   36: aload_0
    //   37: athrow
    // Exception table:
    //   from	to	target	type
    //   9	25	32	finally
    //   25	28	32	finally
    //   33	36	32	finally
  }
  
  private void c(Collection<String> paramCollection) {
    if (paramCollection != null) {
      Iterator<String> iterator = paramCollection.iterator();
      while (true) {
        if (iterator.hasNext()) {
          String str = iterator.next();
          if (!a(str))
            throw new bhp(String.format("Cannot pass a read permission (%s) to a request for publish authorization", new Object[] { str })); 
          continue;
        } 
        return;
      } 
    } 
  }
  
  protected Intent a(LoginClient.Request paramRequest) {
    Intent intent = new Intent();
    intent.setClass(bhv.h(), FacebookActivity.class);
    intent.setAction(paramRequest.b().toString());
    Bundle bundle = new Bundle();
    bundle.putParcelable("request", (Parcelable)paramRequest);
    intent.putExtra("com.facebook.LoginFragment:Request", bundle);
    return intent;
  }
  
  public bsp a(brn parambrn) {
    this.f = parambrn;
    return this;
  }
  
  public bsp a(bse parambse) {
    this.e = parambse;
    return this;
  }
  
  protected LoginClient.Request a(Collection<String> paramCollection) {
    bse bse1 = this.e;
    if (paramCollection != null) {
      paramCollection = new HashSet<String>(paramCollection);
    } else {
      paramCollection = new HashSet<String>();
    } 
    LoginClient.Request request = new LoginClient.Request(bse1, Collections.unmodifiableSet((Set<? extends String>)paramCollection), this.f, bhv.l(), UUID.randomUUID().toString());
    if (AccessToken.a() != null) {
      boolean bool1 = true;
      request.a(bool1);
      return request;
    } 
    boolean bool = false;
    request.a(bool);
    return request;
  }
  
  public void a(Activity paramActivity, bix parambix) {
    a(new bsu(paramActivity), a(parambix));
  }
  
  public void a(Activity paramActivity, Collection<String> paramCollection) {
    b(paramCollection);
    LoginClient.Request request = a(paramCollection);
    a(new bsu(paramActivity), request);
  }
  
  public void a(Fragment paramFragment, bix parambix) {
    a(new bpa(paramFragment), parambix);
  }
  
  public void a(Fragment paramFragment, Collection<String> paramCollection) {
    a(new bpa(paramFragment), paramCollection);
  }
  
  public void a(Context paramContext, bjc parambjc) {
    b(paramContext, parambjc);
  }
  
  public void a(Fragment paramFragment, bix parambix) {
    a(new bpa(paramFragment), parambix);
  }
  
  public void a(Fragment paramFragment, Collection<String> paramCollection) {
    a(new bpa(paramFragment), paramCollection);
  }
  
  public void a(bhd parambhd, bhl<bsx> parambhl) {
    if (!(parambhd instanceof bnj))
      throw new bhp("Unexpected CallbackManager, please use the provided Factory."); 
    ((bnj)parambhd).b(bnl.Login.toRequestCode(), new bsq(this, parambhl));
  }
  
  boolean a(int paramInt, Intent paramIntent) {
    return a(paramInt, paramIntent, null);
  }
  
  boolean a(int paramInt, Intent paramIntent, bhl<bsx> parambhl) {
    LoginClient.Request request;
    bhp bhp;
    Intent intent1 = null;
    bsk bsk2 = null;
    bsk bsk1 = bsk.ERROR;
    boolean bool2 = false;
    boolean bool1 = false;
    if (paramIntent != null) {
      LoginClient.Result result = (LoginClient.Result)paramIntent.getParcelableExtra("com.facebook.LoginFragment:Result");
      if (result != null) {
        LoginClient.Request request2 = result.e;
        request = (LoginClient.Request)result.a;
        if (paramInt == -1) {
          if (result.a == bsk.SUCCESS) {
            AccessToken accessToken = result.b;
            paramIntent = intent1;
          } else {
            bhi bhi = new bhi(result.c);
            bsk1 = bsk2;
          } 
        } else {
          bsk1 = bsk2;
          paramIntent = intent1;
          if (paramInt == 0) {
            bool1 = true;
            bsk1 = bsk2;
            paramIntent = intent1;
          } 
        } 
        Map map2 = result.f;
        intent1 = paramIntent;
        bsk bsk3 = (bsk)request;
        request = (LoginClient.Request)bsk1;
        bsk1 = bsk3;
        Map map1 = map2;
        LoginClient.Request request1 = request2;
      } else {
        bsk2 = null;
        request = null;
        paramIntent = null;
        intent1 = null;
        bool1 = bool2;
      } 
      bsk bsk = bsk2;
      Intent intent = paramIntent;
      bsk2 = (bsk)request;
      request = (LoginClient.Request)bsk;
      paramIntent = intent1;
      intent1 = intent;
    } else if (paramInt == 0) {
      bsk1 = bsk.CANCEL;
      bool1 = true;
      bsk2 = null;
      request = null;
      paramIntent = null;
      intent1 = null;
    } else {
      bool1 = false;
      bsk2 = null;
      request = null;
      paramIntent = null;
      intent1 = null;
    } 
    Intent intent2 = paramIntent;
    if (paramIntent == null) {
      intent2 = paramIntent;
      if (bsk2 == null) {
        intent2 = paramIntent;
        if (!bool1)
          bhp = new bhp("Unexpected call to LoginManager.onActivityResult"); 
      } 
    } 
    a(null, bsk1, (Map<String, String>)intent1, bhp, true, request);
    a((AccessToken)bsk2, request, bhp, bool1, parambhl);
    return true;
  }
  
  public void b(Activity paramActivity, Collection<String> paramCollection) {
    c(paramCollection);
    LoginClient.Request request = a(paramCollection);
    a(new bsu(paramActivity), request);
  }
  
  public void b(Fragment paramFragment, Collection<String> paramCollection) {
    b(new bpa(paramFragment), paramCollection);
  }
  
  public void b(Fragment paramFragment, Collection<String> paramCollection) {
    b(new bpa(paramFragment), paramCollection);
  }
  
  public bse d() {
    return this.e;
  }
  
  public brn e() {
    return this.f;
  }
  
  public void f() {
    AccessToken.a(null);
    Profile.a(null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bsp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */