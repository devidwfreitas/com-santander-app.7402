import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.facebook.FacebookActivity;

public class bnw {
  public static void a(Context paramContext, String paramString1, String paramString2) {
    bla bla = bla.c(paramContext);
    Bundle bundle = new Bundle();
    bundle.putString("fb_dialog_outcome", paramString2);
    bla.a(paramString1, (Double)null, bundle);
  }
  
  public static void a(bmr parambmr) {
    a(parambmr, new bhp("Unable to show the provided content via the web or the installed version of the Facebook app. Some dialogs are only supported starting API 14."));
  }
  
  public static void a(bmr parambmr, Activity paramActivity) {
    paramActivity.startActivityForResult(parambmr.b(), parambmr.d());
    parambmr.e();
  }
  
  public static void a(bmr parambmr, Bundle paramBundle, bnv parambnv) {
    Uri uri1;
    bqx.f(bhv.h());
    bqx.a(bhv.h());
    String str = parambnv.name();
    Uri uri2 = d(parambnv);
    if (uri2 == null)
      throw new bhp("Unable to fetch the Url for the DialogFeature : '" + str + "'"); 
    int i = bqa.a();
    paramBundle = bqn.a(parambmr.c().toString(), i, paramBundle);
    if (paramBundle == null)
      throw new bhp("Unable to fetch the app's key-hash"); 
    if (uri2.isRelative()) {
      uri1 = bqq.a(bqn.a(), uri2.toString(), paramBundle);
    } else {
      uri1 = bqq.a(uri2.getAuthority(), uri2.getPath(), (Bundle)uri1);
    } 
    Bundle bundle = new Bundle();
    bundle.putString("url", uri1.toString());
    bundle.putBoolean("is_fallback", true);
    Intent intent = new Intent();
    bqa.a(intent, parambmr.c().toString(), parambnv.getAction(), bqa.a(), bundle);
    intent.setClass(bhv.h(), FacebookActivity.class);
    intent.setAction("FacebookDialogFragment");
    parambmr.a(intent);
  }
  
  public static void a(bmr parambmr, bhp parambhp) {
    b(parambmr, parambhp);
  }
  
  public static void a(bmr parambmr, bnx parambnx, bnv parambnv) {
    Bundle bundle1;
    Context context = bhv.h();
    String str = parambnv.getAction();
    bqg bqg = c(parambnv);
    int i = bqg.c();
    if (i == -1)
      throw new bhp("Cannot present this dialog. This likely means that the Facebook app is not installed."); 
    if (bqa.a(i)) {
      bundle1 = parambnx.a();
    } else {
      bundle1 = bundle1.b();
    } 
    Bundle bundle2 = bundle1;
    if (bundle1 == null)
      bundle2 = new Bundle(); 
    Intent intent = bqa.a(context, parambmr.c().toString(), str, bqg, bundle2);
    if (intent == null)
      throw new bhp("Unable to create Intent; this likely means theFacebook app is not installed."); 
    parambmr.a(intent);
  }
  
  public static void a(bmr parambmr, bpa parambpa) {
    parambpa.a(parambmr.b(), parambmr.d());
    parambmr.e();
  }
  
  public static void a(bmr parambmr, String paramString, Bundle paramBundle) {
    bqx.f(bhv.h());
    bqx.a(bhv.h());
    Bundle bundle = new Bundle();
    bundle.putString("action", paramString);
    bundle.putBundle("params", paramBundle);
    Intent intent = new Intent();
    bqa.a(intent, parambmr.c().toString(), paramString, bqa.a(), bundle);
    intent.setClass(bhv.h(), FacebookActivity.class);
    intent.setAction("FacebookDialogFragment");
    parambmr.a(intent);
  }
  
  public static boolean a(bnv parambnv) {
    return (c(parambnv).c() != -1);
  }
  
  private static int[] a(String paramString1, String paramString2, bnv parambnv) {
    bok bok = boj.a(paramString1, paramString2, parambnv.name());
    return (bok != null) ? bok.d() : new int[] { parambnv.getMinVersion() };
  }
  
  public static void b(bmr parambmr, bhp parambhp) {
    if (parambhp == null)
      return; 
    bqx.f(bhv.h());
    Intent intent = new Intent();
    intent.setClass(bhv.h(), FacebookActivity.class);
    intent.setAction(FacebookActivity.a);
    bqa.a(intent, parambmr.c().toString(), (String)null, bqa.a(), bqa.a(parambhp));
    parambmr.a(intent);
  }
  
  public static boolean b(bnv parambnv) {
    return (d(parambnv) != null);
  }
  
  public static bqg c(bnv parambnv) {
    String str1 = bhv.l();
    String str2 = parambnv.getAction();
    return bqa.a(str2, a(str1, str2, parambnv));
  }
  
  private static Uri d(bnv parambnv) {
    Uri uri;
    String str2 = parambnv.name();
    String str1 = parambnv.getAction();
    bok bok = boj.a(bhv.l(), str1, str2);
    str1 = null;
    if (bok != null)
      uri = bok.c(); 
    return uri;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bnw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */