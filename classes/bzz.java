import android.os.Bundle;
import com.facebook.share.internal.ShareFeedContent;
import com.facebook.share.model.AppGroupCreationContent;
import com.facebook.share.model.GameRequestContent;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareHashtag;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhotoContent;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public class bzz {
  public static Bundle a(ShareFeedContent paramShareFeedContent) {
    Bundle bundle = new Bundle();
    bqq.a(bundle, "to", paramShareFeedContent.a());
    bqq.a(bundle, "link", paramShareFeedContent.b());
    bqq.a(bundle, "picture", paramShareFeedContent.f());
    bqq.a(bundle, "source", paramShareFeedContent.g());
    bqq.a(bundle, "name", paramShareFeedContent.c());
    bqq.a(bundle, "caption", paramShareFeedContent.d());
    bqq.a(bundle, "description", paramShareFeedContent.e());
    return bundle;
  }
  
  public static Bundle a(AppGroupCreationContent paramAppGroupCreationContent) {
    Bundle bundle = new Bundle();
    bqq.a(bundle, "name", paramAppGroupCreationContent.a());
    bqq.a(bundle, "description", paramAppGroupCreationContent.b());
    cac cac = paramAppGroupCreationContent.c();
    if (cac != null)
      bqq.a(bundle, "privacy", cac.toString().toLowerCase(Locale.ENGLISH)); 
    return bundle;
  }
  
  public static Bundle a(GameRequestContent paramGameRequestContent) {
    Bundle bundle = new Bundle();
    bqq.a(bundle, "message", paramGameRequestContent.a());
    bqq.a(bundle, "to", paramGameRequestContent.c());
    bqq.a(bundle, "title", paramGameRequestContent.d());
    bqq.a(bundle, "data", paramGameRequestContent.e());
    if (paramGameRequestContent.f() != null)
      bqq.a(bundle, "action_type", paramGameRequestContent.f().toString().toLowerCase(Locale.ENGLISH)); 
    bqq.a(bundle, "object_id", paramGameRequestContent.g());
    if (paramGameRequestContent.h() != null)
      bqq.a(bundle, "filters", paramGameRequestContent.h().toString().toLowerCase(Locale.ENGLISH)); 
    bqq.a(bundle, "suggestions", paramGameRequestContent.i());
    return bundle;
  }
  
  public static Bundle a(ShareContent paramShareContent) {
    Bundle bundle = new Bundle();
    ShareHashtag shareHashtag = paramShareContent.l();
    if (shareHashtag != null)
      bqq.a(bundle, "hashtag", shareHashtag.a()); 
    return bundle;
  }
  
  public static Bundle a(ShareLinkContent paramShareLinkContent) {
    Bundle bundle = a((ShareContent)paramShareLinkContent);
    bqq.a(bundle, "href", paramShareLinkContent.h());
    bqq.a(bundle, "quote", paramShareLinkContent.d());
    return bundle;
  }
  
  public static Bundle a(ShareOpenGraphContent paramShareOpenGraphContent) {
    Bundle bundle = a((ShareContent)paramShareOpenGraphContent);
    bqq.a(bundle, "action_type", paramShareOpenGraphContent.a().a());
    try {
      JSONObject jSONObject = bze.a(bze.a(paramShareOpenGraphContent), false);
      if (jSONObject != null)
        bqq.a(bundle, "action_properties", jSONObject.toString()); 
      return bundle;
    } catch (JSONException jSONException) {
      throw new bhp("Unable to serialize the ShareOpenGraphContent to JSON", jSONException);
    } 
  }
  
  public static Bundle a(SharePhotoContent paramSharePhotoContent) {
    Bundle bundle = a((ShareContent)paramSharePhotoContent);
    String[] arrayOfString = new String[paramSharePhotoContent.a().size()];
    bqq.a(paramSharePhotoContent.a(), new caa()).toArray((Object[])arrayOfString);
    bundle.putStringArray("media", arrayOfString);
    return bundle;
  }
  
  public static Bundle b(ShareLinkContent paramShareLinkContent) {
    Bundle bundle = new Bundle();
    bqq.a(bundle, "name", paramShareLinkContent.b());
    bqq.a(bundle, "description", paramShareLinkContent.a());
    bqq.a(bundle, "link", bqq.a(paramShareLinkContent.h()));
    bqq.a(bundle, "picture", bqq.a(paramShareLinkContent.c()));
    bqq.a(bundle, "quote", paramShareLinkContent.d());
    if (paramShareLinkContent.l() != null)
      bqq.a(bundle, "hashtag", paramShareLinkContent.l().a()); 
    return bundle;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bzz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */