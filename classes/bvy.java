import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphAction;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.ShareOpenGraphObject;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideoContent;
import java.io.FileNotFoundException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class bvy {
  private static final String a = "ShareApi";
  
  private static final String b = "me";
  
  private static final String c = "photos";
  
  private static final String d = "%s/%s";
  
  private static final String e = "UTF-8";
  
  private String f;
  
  private String g;
  
  private final ShareContent h;
  
  public bvy(ShareContent paramShareContent) {
    this.h = paramShareContent;
    this.g = "me";
  }
  
  private Bundle a(SharePhoto paramSharePhoto, SharePhotoContent paramSharePhotoContent) {
    Bundle bundle = paramSharePhoto.a();
    if (!bundle.containsKey("place") && !bqq.a(paramSharePhotoContent.j()))
      bundle.putString("place", paramSharePhotoContent.j()); 
    if (!bundle.containsKey("tags") && !bqq.a(paramSharePhotoContent.i())) {
      List<?> list = paramSharePhotoContent.i();
      if (!bqq.a(list)) {
        JSONArray jSONArray = new JSONArray();
        for (String str : list) {
          JSONObject jSONObject = new JSONObject();
          jSONObject.put("tag_uid", str);
          jSONArray.put(jSONObject);
        } 
        bundle.putString("tags", jSONArray.toString());
      } 
    } 
    if (!bundle.containsKey("ref") && !bqq.a(paramSharePhotoContent.k()))
      bundle.putString("ref", paramSharePhotoContent.k()); 
    return bundle;
  }
  
  private static void a(Bundle paramBundle, int paramInt, JSONObject paramJSONObject) {
    Iterator<String> iterator = paramJSONObject.keys();
    while (iterator.hasNext()) {
      String str = iterator.next();
      paramBundle.putString(String.format(Locale.ROOT, "image[%d][%s]", new Object[] { Integer.valueOf(paramInt), str }), paramJSONObject.get(str).toString());
    } 
  }
  
  private void a(Bundle paramBundle, bns parambns) {
    a(new bwk(this, paramBundle), parambns);
  }
  
  private void a(Bundle paramBundle, ShareContent paramShareContent) {
    List<?> list = paramShareContent.i();
    if (!bqq.a(list))
      paramBundle.putString("tags", TextUtils.join(", ", list)); 
    if (!bqq.a(paramShareContent.j()))
      paramBundle.putString("place", paramShareContent.j()); 
    if (!bqq.a(paramShareContent.k()))
      paramBundle.putString("ref", paramShareContent.k()); 
  }
  
  private <T> void a(bnp<T> parambnp, bns parambns) {
    bnm.a(parambnp, new bwj(this), parambns);
  }
  
  public static void a(ShareContent paramShareContent, bhl<bwo> parambhl) {
    (new bvy(paramShareContent)).a(parambhl);
  }
  
  private void a(ShareLinkContent paramShareLinkContent, bhl<bwo> parambhl) {
    bwf bwf = new bwf(this, parambhl);
    Bundle bundle = new Bundle();
    a(bundle, (ShareContent)paramShareLinkContent);
    bundle.putString("message", a());
    bundle.putString("link", bqq.a(paramShareLinkContent.h()));
    bundle.putString("picture", bqq.a(paramShareLinkContent.c()));
    bundle.putString("name", paramShareLinkContent.b());
    bundle.putString("description", paramShareLinkContent.a());
    bundle.putString("ref", paramShareLinkContent.k());
    (new GraphRequest(AccessToken.a(), c("feed"), bundle, biz.POST, bwf)).n();
  }
  
  private void a(ShareOpenGraphContent paramShareOpenGraphContent, bhl<bwo> parambhl) {
    bvz bvz = new bvz(this, parambhl);
    ShareOpenGraphAction shareOpenGraphAction = paramShareOpenGraphContent.a();
    Bundle bundle = shareOpenGraphAction.b();
    a(bundle, (ShareContent)paramShareOpenGraphContent);
    if (!bqq.a(a()))
      bundle.putString("message", a()); 
    a(bundle, new bwd(this, bundle, shareOpenGraphAction, bvz, parambhl));
  }
  
  private void a(ShareOpenGraphObject paramShareOpenGraphObject, bnr parambnr) {
    String str2 = paramShareOpenGraphObject.j("type");
    String str1 = str2;
    if (str2 == null)
      str1 = paramShareOpenGraphObject.j("og:type"); 
    if (str1 == null) {
      parambnr.a(new bhp("Open Graph objects must contain a type value."));
      return;
    } 
    JSONObject jSONObject = new JSONObject();
    a(new bwl(this, paramShareOpenGraphObject, jSONObject), new bwb(this, jSONObject, str1, new bwa(this, parambnr), parambnr));
  }
  
  private void a(SharePhoto paramSharePhoto, bnr parambnr) {
    Bitmap bitmap = paramSharePhoto.c();
    Uri uri = paramSharePhoto.d();
    if (bitmap != null || uri != null) {
      bwc bwc = new bwc(this, parambnr, paramSharePhoto);
      if (bitmap != null) {
        bze.a(AccessToken.a(), bitmap, bwc).n();
        return;
      } 
      try {
        bze.a(AccessToken.a(), uri, bwc).n();
        return;
      } catch (FileNotFoundException fileNotFoundException) {
        String str2 = fileNotFoundException.getLocalizedMessage();
        String str1 = str2;
        if (str2 == null)
          str1 = "Error staging photo."; 
        parambnr.a(new bhp(str1));
        return;
      } 
    } 
    parambnr.a(new bhp("Photos must have an imageURL or bitmap."));
  }
  
  private void a(SharePhotoContent paramSharePhotoContent, bhl<bwo> parambhl) {
    bpw<Integer> bpw = new bpw<Integer>(Integer.valueOf(0));
    AccessToken accessToken = AccessToken.a();
    ArrayList<GraphRequest> arrayList = new ArrayList();
    bwe bwe = new bwe(this, new ArrayList(), new ArrayList(), bpw, parambhl);
    try {
      for (SharePhoto sharePhoto : paramSharePhotoContent.a()) {
        String str;
        Bundle bundle;
        Uri uri;
        try {
          bundle = a(sharePhoto, paramSharePhotoContent);
          Bitmap bitmap = sharePhoto.c();
          uri = sharePhoto.d();
          String str1 = sharePhoto.f();
          str = str1;
          if (str1 == null)
            str = a(); 
          if (bitmap != null) {
            arrayList.add(GraphRequest.a(accessToken, c("photos"), bitmap, str, bundle, bwe));
            continue;
          } 
        } catch (JSONException jSONException) {
          bze.a(parambhl, (Exception)jSONException);
          return;
        } 
        if (uri != null)
          arrayList.add(GraphRequest.a(accessToken, c("photos"), uri, str, bundle, bwe)); 
      } 
    } catch (FileNotFoundException fileNotFoundException) {
      bze.a(parambhl, fileNotFoundException);
      return;
    } 
    bpw.a = (T)Integer.valueOf(((Integer)bpw.a).intValue() + arrayList.size());
    Iterator<GraphRequest> iterator = arrayList.iterator();
    while (true) {
      if (iterator.hasNext()) {
        ((GraphRequest)iterator.next()).n();
        continue;
      } 
      return;
    } 
  }
  
  private void a(ShareVideoContent paramShareVideoContent, bhl<bwo> parambhl) {
    try {
      bzn.a(paramShareVideoContent, b(), parambhl);
      return;
    } catch (FileNotFoundException fileNotFoundException) {
      bze.a(parambhl, fileNotFoundException);
      return;
    } 
  }
  
  private void a(ArrayList paramArrayList, bnr parambnr) {
    JSONArray jSONArray = new JSONArray();
    a(new bwg(this, paramArrayList, jSONArray), new bwi(this, parambnr, jSONArray));
  }
  
  private static void b(Bundle paramBundle) {
    int i = 0;
    String str = paramBundle.getString("image");
    if (str != null)
      try {
        JSONArray jSONArray = new JSONArray(str);
        while (true) {
          if (i < jSONArray.length()) {
            JSONObject jSONObject = jSONArray.optJSONObject(i);
            if (jSONObject != null) {
              a(paramBundle, i, jSONObject);
            } else {
              String str1 = jSONArray.getString(i);
              paramBundle.putString(String.format(Locale.ROOT, "image[%d][url]", new Object[] { Integer.valueOf(i) }), str1);
            } 
          } else {
            paramBundle.remove("image");
            return;
          } 
          i++;
        } 
      } catch (JSONException jSONException) {
        try {
          a(paramBundle, 0, new JSONObject(str));
          paramBundle.remove("image");
          return;
        } catch (JSONException jSONException1) {
          return;
        } 
      }  
  }
  
  private String c(String paramString) {
    try {
      return String.format(Locale.ROOT, "%s/%s", new Object[] { URLEncoder.encode(b(), "UTF-8"), paramString });
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      return null;
    } 
  }
  
  public String a() {
    return this.f;
  }
  
  public void a(bhl<bwo> parambhl) {
    if (!d()) {
      bze.a(parambhl, "Insufficient permissions for sharing content via Api.");
      return;
    } 
    ShareContent shareContent = c();
    try {
      byw.d(shareContent);
      if (shareContent instanceof ShareLinkContent) {
        a((ShareLinkContent)shareContent, parambhl);
        return;
      } 
    } catch (bhp bhp) {
      bze.a(parambhl, bhp);
      return;
    } 
    if (bhp instanceof SharePhotoContent) {
      a((SharePhotoContent)bhp, parambhl);
      return;
    } 
    if (bhp instanceof ShareVideoContent) {
      a((ShareVideoContent)bhp, parambhl);
      return;
    } 
    if (bhp instanceof ShareOpenGraphContent) {
      a((ShareOpenGraphContent)bhp, parambhl);
      return;
    } 
  }
  
  public void a(String paramString) {
    this.f = paramString;
  }
  
  public String b() {
    return this.g;
  }
  
  public void b(String paramString) {
    this.g = paramString;
  }
  
  public ShareContent c() {
    return this.h;
  }
  
  public boolean d() {
    if (c() != null) {
      AccessToken accessToken = AccessToken.a();
      if (accessToken != null) {
        Set set = accessToken.e();
        if (set == null || !set.contains("publish_actions"))
          Log.w("ShareApi", "The publish_actions permissions are missing, the share will fail unless this app was authorized to publish in another installation."); 
        return true;
      } 
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bvy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */