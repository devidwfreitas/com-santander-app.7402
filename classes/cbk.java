import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.share.model.AppInviteContent;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class cbk extends bny<AppInviteContent, cbp> {
  private static final String b = "AppInviteDialog";
  
  private static final int c = bnl.AppInvite.toRequestCode();
  
  public cbk(Activity paramActivity) {
    super(paramActivity, c);
  }
  
  public cbk(Fragment paramFragment) {
    this(new bpa(paramFragment));
  }
  
  public cbk(Fragment paramFragment) {
    this(new bpa(paramFragment));
  }
  
  private cbk(bpa parambpa) {
    super(parambpa, c);
  }
  
  public static void a(Activity paramActivity, AppInviteContent paramAppInviteContent) {
    (new cbk(paramActivity)).b(paramAppInviteContent);
  }
  
  public static void a(Fragment paramFragment, AppInviteContent paramAppInviteContent) {
    a(new bpa(paramFragment), paramAppInviteContent);
  }
  
  public static void a(Fragment paramFragment, AppInviteContent paramAppInviteContent) {
    a(new bpa(paramFragment), paramAppInviteContent);
  }
  
  private static void a(bpa parambpa, AppInviteContent paramAppInviteContent) {
    (new cbk(parambpa)).b(paramAppInviteContent);
  }
  
  private static Bundle b(AppInviteContent paramAppInviteContent) {
    Bundle bundle = new Bundle();
    bundle.putString("app_link_url", paramAppInviteContent.a());
    bundle.putString("preview_image_url", paramAppInviteContent.b());
    bundle.putString("destination", paramAppInviteContent.e().toString());
    String str2 = paramAppInviteContent.c();
    if (str2 == null)
      str2 = ""; 
    String str1 = paramAppInviteContent.d();
    if (!TextUtils.isEmpty(str1))
      try {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("promo_code", str2);
        jSONObject.put("promo_text", str1);
        bundle.putString("deeplink_context", jSONObject.toString());
        bundle.putString("promo_code", str2);
        bundle.putString("promo_text", str1);
        return bundle;
      } catch (JSONException jSONException) {
        Log.e("AppInviteDialog", "Json Exception in creating deeplink context");
        return bundle;
      }  
    return bundle;
  }
  
  public static boolean e() {
    return (i() || j());
  }
  
  private static boolean i() {
    return bnw.a(k());
  }
  
  private static boolean j() {
    return bnw.b(k());
  }
  
  private static bnv k() {
    return bwp.APP_INVITES_DIALOG;
  }
  
  protected void a(bnj parambnj, bhl<cbp> parambhl) {
    cbl cbl;
    if (parambhl == null) {
      parambhl = null;
    } else {
      cbl = new cbl(this, parambhl, parambhl);
    } 
    cbm cbm = new cbm(this, cbl);
    parambnj.b(a(), cbm);
  }
  
  protected List<bny<AppInviteContent, cbp>.bnz> c() {
    ArrayList<cbn> arrayList = new ArrayList();
    arrayList.add(new cbn(this, null));
    arrayList.add(new cbq(this, null));
    return (List)arrayList;
  }
  
  protected bmr d() {
    return new bmr(a());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cbk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */