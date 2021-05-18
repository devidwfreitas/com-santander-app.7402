import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.util.Pair;
import com.facebook.AccessToken;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.share.model.ShareMedia;
import com.facebook.share.model.ShareMediaContent;
import com.facebook.share.model.ShareOpenGraphAction;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideo;
import com.facebook.share.model.ShareVideoContent;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class bze {
  public static final String a = "me/photos";
  
  private static final String b = "me/staging_resources";
  
  private static final String c = "file";
  
  public static Pair<String, String> a(String paramString) {
    String str3 = null;
    int i = paramString.indexOf(':');
    String str2 = str3;
    String str1 = paramString;
    if (i != -1) {
      str2 = str3;
      str1 = paramString;
      if (paramString.length() > i + 1) {
        str2 = paramString.substring(0, i);
        str1 = paramString.substring(i + 1);
      } 
    } 
    return new Pair(str2, str1);
  }
  
  private static bmr a(int paramInt1, int paramInt2, Intent paramIntent) {
    UUID uUID = bqa.b(paramIntent);
    return (uUID == null) ? null : bmr.a(uUID, paramInt1);
  }
  
  public static byu a(bhl<bwo> parambhl) {
    return new bzf(parambhl, parambhl);
  }
  
  @Nullable
  public static ccn a(ccn paramccn1, ccn paramccn2) {
    if (paramccn1 != paramccn2) {
      if (paramccn1 == ccn.UNKNOWN)
        return paramccn2; 
      if (paramccn2 != ccn.UNKNOWN)
        return null; 
    } 
    return paramccn1;
  }
  
  public static GraphRequest a(AccessToken paramAccessToken, Bitmap paramBitmap, bim parambim) {
    Bundle bundle = new Bundle(1);
    bundle.putParcelable("file", (Parcelable)paramBitmap);
    return new GraphRequest(paramAccessToken, "me/staging_resources", bundle, biz.POST, parambim);
  }
  
  public static GraphRequest a(AccessToken paramAccessToken, Uri paramUri, bim parambim) {
    if (bqq.d(paramUri))
      return a(paramAccessToken, new File(paramUri.getPath()), parambim); 
    if (!bqq.c(paramUri))
      throw new bhp("The image Uri must be either a file:// or content:// Uri"); 
    GraphRequest.ParcelableResourceWithMimeType parcelableResourceWithMimeType = new GraphRequest.ParcelableResourceWithMimeType((Parcelable)paramUri, "image/png");
    Bundle bundle = new Bundle(1);
    bundle.putParcelable("file", (Parcelable)parcelableResourceWithMimeType);
    return new GraphRequest(paramAccessToken, "me/staging_resources", bundle, biz.POST, parambim);
  }
  
  public static GraphRequest a(AccessToken paramAccessToken, File paramFile, bim parambim) {
    GraphRequest.ParcelableResourceWithMimeType parcelableResourceWithMimeType = new GraphRequest.ParcelableResourceWithMimeType((Parcelable)ParcelFileDescriptor.open(paramFile, 268435456), "image/png");
    Bundle bundle = new Bundle(1);
    bundle.putParcelable("file", (Parcelable)parcelableResourceWithMimeType);
    return new GraphRequest(paramAccessToken, "me/staging_resources", bundle, biz.POST, parambim);
  }
  
  public static String a(Bundle paramBundle) {
    return paramBundle.containsKey("completionGesture") ? paramBundle.getString("completionGesture") : paramBundle.getString("com.facebook.platform.extra.COMPLETION_GESTURE");
  }
  
  public static String a(ShareVideoContent paramShareVideoContent, UUID paramUUID) {
    if (paramShareVideoContent == null || paramShareVideoContent.d() == null)
      return null; 
    bpz bpz = bpx.a(paramUUID, paramShareVideoContent.d().c());
    ArrayList<bpz> arrayList = new ArrayList(1);
    arrayList.add(bpz);
    bpx.a(arrayList);
    return bpz.a();
  }
  
  public static List<Bundle> a(ShareMediaContent paramShareMediaContent, UUID paramUUID) {
    if (paramShareMediaContent != null) {
      List<?> list = paramShareMediaContent.a();
      if (list != null) {
        ArrayList<bpz> arrayList = new ArrayList();
        List<?> list1 = bqq.a(list, new bzk(paramUUID, arrayList));
        bpx.a(arrayList);
        return (List)list1;
      } 
    } 
    return null;
  }
  
  public static List<String> a(SharePhotoContent paramSharePhotoContent, UUID paramUUID) {
    if (paramSharePhotoContent != null) {
      List<?> list = paramSharePhotoContent.a();
      if (list != null) {
        list = bqq.a(list, new bzi(paramUUID));
        List<?> list1 = bqq.a(list, new bzj());
        bpx.a((Collection)list);
        return (List)list1;
      } 
    } 
    return null;
  }
  
  public static JSONArray a(JSONArray paramJSONArray, boolean paramBoolean) {
    JSONArray jSONArray = new JSONArray();
    for (int i = 0; i < paramJSONArray.length(); i++) {
      Object object1;
      Object object2 = paramJSONArray.get(i);
      if (object2 instanceof JSONArray) {
        object1 = a((JSONArray)object2, paramBoolean);
      } else {
        object1 = object2;
        if (object2 instanceof JSONObject)
          object1 = a((JSONObject)object2, paramBoolean); 
      } 
      jSONArray.put(object1);
    } 
    return jSONArray;
  }
  
  public static JSONObject a(ShareOpenGraphContent paramShareOpenGraphContent) {
    return byr.a(paramShareOpenGraphContent.a(), new bzm());
  }
  
  public static JSONObject a(UUID paramUUID, ShareOpenGraphContent paramShareOpenGraphContent) {
    ShareOpenGraphAction shareOpenGraphAction = paramShareOpenGraphContent.a();
    ArrayList<bpz> arrayList = new ArrayList();
    JSONObject jSONObject = byr.a(shareOpenGraphAction, new bzl(paramUUID, arrayList));
    bpx.a(arrayList);
    if (paramShareOpenGraphContent.j() != null && bqq.a(jSONObject.optString("place")))
      jSONObject.put("place", paramShareOpenGraphContent.j()); 
    if (paramShareOpenGraphContent.i() != null) {
      Set<String> set;
      JSONArray jSONArray = jSONObject.optJSONArray("tags");
      if (jSONArray == null) {
        set = new HashSet();
      } else {
        set = bqq.b((JSONArray)set);
      } 
      Iterator<String> iterator = paramShareOpenGraphContent.i().iterator();
      while (iterator.hasNext())
        set.add(iterator.next()); 
      jSONObject.put("tags", new JSONArray(set));
    } 
    return jSONObject;
  }
  
  public static JSONObject a(JSONObject paramJSONObject, boolean paramBoolean) {
    if (paramJSONObject == null)
      return null; 
    try {
      JSONObject jSONObject1 = new JSONObject();
      JSONObject jSONObject2 = new JSONObject();
      JSONArray jSONArray = paramJSONObject.names();
      for (int i = 0;; i++) {
        if (i < jSONArray.length()) {
          String str1 = jSONArray.getString(i);
          Object object = paramJSONObject.get(str1);
          if (object instanceof JSONObject) {
            object = a((JSONObject)object, true);
          } else if (object instanceof JSONArray) {
            object = a((JSONArray)object, true);
          } 
          Pair<String, String> pair = a(str1);
          String str2 = (String)pair.first;
          String str3 = (String)pair.second;
          if (paramBoolean) {
            if (str2 != null && str2.equals("fbsdk")) {
              jSONObject1.put(str1, object);
            } else if (str2 == null || str2.equals("og")) {
              jSONObject1.put(str3, object);
            } else {
              jSONObject2.put(str3, object);
            } 
          } else if (str2 != null && str2.equals("fb")) {
            jSONObject1.put(str1, object);
          } else {
            jSONObject1.put(str3, object);
          } 
        } else {
          if (jSONObject2.length() > 0)
            jSONObject1.put("data", jSONObject2); 
          return jSONObject1;
        } 
      } 
    } catch (JSONException jSONException) {
      throw new bhp("Failed to create json object from share content");
    } 
  }
  
  public static void a(int paramInt) {
    bnj.a(paramInt, new bzg(paramInt));
  }
  
  public static void a(int paramInt, bhd parambhd, bhl<bwo> parambhl) {
    if (!(parambhd instanceof bnj))
      throw new bhp("Unexpected CallbackManager, please use the provided Factory."); 
    ((bnj)parambhd).b(paramInt, new bzh(paramInt, parambhl));
  }
  
  static void a(bhl<bwo> parambhl, bhp parambhp) {
    a("error", parambhp.getMessage());
    if (parambhl != null)
      parambhl.a(parambhp); 
  }
  
  static void a(bhl<bwo> parambhl, bix parambix, String paramString) {
    a("error", paramString);
    if (parambhl != null)
      parambhl.a(new bhq(parambix, paramString)); 
  }
  
  public static void a(bhl<bwo> parambhl, Exception paramException) {
    if (paramException instanceof bhp) {
      a(parambhl, (bhp)paramException);
      return;
    } 
    a(parambhl, "Error preparing share content: " + paramException.getLocalizedMessage());
  }
  
  public static void a(bhl<bwo> parambhl, String paramString) {
    c(parambhl, paramString);
  }
  
  public static void a(bhl<bwo> parambhl, String paramString, bix parambix) {
    FacebookRequestError facebookRequestError = parambix.a();
    if (facebookRequestError != null) {
      String str = facebookRequestError.f();
      paramString = str;
      if (bqq.a(str))
        paramString = "Unexpected error sharing."; 
      a(parambhl, parambix, paramString);
      return;
    } 
    b(parambhl, paramString);
  }
  
  private static void a(String paramString1, String paramString2) {
    bla bla = bla.c(bhv.h());
    Bundle bundle = new Bundle();
    bundle.putString("fb_share_dialog_outcome", paramString1);
    if (paramString2 != null)
      bundle.putString("error_message", paramString2); 
    bla.a("fb_share_dialog_result", (Double)null, bundle);
  }
  
  public static boolean a(int paramInt1, int paramInt2, Intent paramIntent, byu parambyu) {
    boolean bool = true;
    bmr bmr = a(paramInt1, paramInt2, paramIntent);
    if (bmr == null)
      return false; 
    bpx.a(bmr.c());
    if (parambyu != null) {
      bhp bhp = bqa.a(bqa.g(paramIntent));
      if (bhp != null) {
        if (bhp instanceof bhr) {
          parambyu.a(bmr);
          return true;
        } 
        parambyu.a(bmr, bhp);
        return true;
      } 
      parambyu.a(bmr, bqa.e(paramIntent));
      return true;
    } 
    return bool;
  }
  
  private static bpz b(UUID paramUUID, ShareMedia paramShareMedia) {
    Uri uri;
    bpz bpz2 = null;
    if (paramShareMedia instanceof SharePhoto) {
      SharePhoto sharePhoto = (SharePhoto)paramShareMedia;
      bpz1 = (bpz)sharePhoto.c();
      uri = sharePhoto.d();
    } else if (uri instanceof ShareVideo) {
      uri = ((ShareVideo)uri).c();
      bpz1 = null;
    } else {
      uri = null;
      bpz1 = null;
    } 
    if (bpz1 != null)
      return bpx.a(paramUUID, (Bitmap)bpz1); 
    bpz bpz1 = bpz2;
    return (uri != null) ? bpx.a(paramUUID, uri) : bpz1;
  }
  
  public static String b(Bundle paramBundle) {
    return paramBundle.containsKey("postId") ? paramBundle.getString("postId") : (paramBundle.containsKey("com.facebook.platform.extra.POST_ID") ? paramBundle.getString("com.facebook.platform.extra.POST_ID") : paramBundle.getString("post_id"));
  }
  
  static void b(bhl<bwo> parambhl) {
    a("cancelled", (String)null);
    if (parambhl != null)
      parambhl.a(); 
  }
  
  static void b(bhl<bwo> parambhl, String paramString) {
    a("succeeded", (String)null);
    if (parambhl != null)
      parambhl.a(new bwo(paramString)); 
  }
  
  static void c(bhl<bwo> parambhl, String paramString) {
    a("error", paramString);
    if (parambhl != null)
      parambhl.a(new bhp(paramString)); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bze.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */