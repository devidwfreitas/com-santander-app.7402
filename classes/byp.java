import android.os.Bundle;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareHashtag;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareMediaContent;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideoContent;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

public class byp {
  private static Bundle a(ShareContent paramShareContent, boolean paramBoolean) {
    Bundle bundle = new Bundle();
    bqq.a(bundle, "LINK", paramShareContent.h());
    bqq.a(bundle, "PLACE", paramShareContent.j());
    bqq.a(bundle, "REF", paramShareContent.k());
    bundle.putBoolean("DATA_FAILURES_FATAL", paramBoolean);
    List<?> list = paramShareContent.i();
    if (!bqq.a(list))
      bundle.putStringArrayList("FRIENDS", new ArrayList(list)); 
    ShareHashtag shareHashtag = paramShareContent.l();
    if (shareHashtag != null)
      bqq.a(bundle, "HASHTAG", shareHashtag.a()); 
    return bundle;
  }
  
  private static Bundle a(ShareLinkContent paramShareLinkContent, boolean paramBoolean) {
    Bundle bundle = a((ShareContent)paramShareLinkContent, paramBoolean);
    bqq.a(bundle, "TITLE", paramShareLinkContent.b());
    bqq.a(bundle, "DESCRIPTION", paramShareLinkContent.a());
    bqq.a(bundle, "IMAGE", paramShareLinkContent.c());
    bqq.a(bundle, "QUOTE", paramShareLinkContent.d());
    return bundle;
  }
  
  private static Bundle a(ShareMediaContent paramShareMediaContent, List<Bundle> paramList, boolean paramBoolean) {
    Bundle bundle = a((ShareContent)paramShareMediaContent, paramBoolean);
    bundle.putParcelableArrayList("MEDIA", new ArrayList<Bundle>(paramList));
    return bundle;
  }
  
  private static Bundle a(ShareOpenGraphContent paramShareOpenGraphContent, JSONObject paramJSONObject, boolean paramBoolean) {
    Bundle bundle = a((ShareContent)paramShareOpenGraphContent, paramBoolean);
    bqq.a(bundle, "PREVIEW_PROPERTY_NAME", (String)(bze.a(paramShareOpenGraphContent.b())).second);
    bqq.a(bundle, "ACTION_TYPE", paramShareOpenGraphContent.a().a());
    bqq.a(bundle, "ACTION", paramJSONObject.toString());
    return bundle;
  }
  
  private static Bundle a(SharePhotoContent paramSharePhotoContent, List<String> paramList, boolean paramBoolean) {
    Bundle bundle = a((ShareContent)paramSharePhotoContent, paramBoolean);
    bundle.putStringArrayList("PHOTOS", new ArrayList<String>(paramList));
    return bundle;
  }
  
  private static Bundle a(ShareVideoContent paramShareVideoContent, String paramString, boolean paramBoolean) {
    Bundle bundle = a((ShareContent)paramShareVideoContent, paramBoolean);
    bqq.a(bundle, "TITLE", paramShareVideoContent.b());
    bqq.a(bundle, "DESCRIPTION", paramShareVideoContent.a());
    bqq.a(bundle, "VIDEO", paramString);
    return bundle;
  }
  
  public static Bundle a(UUID paramUUID, ShareContent paramShareContent, boolean paramBoolean) {
    SharePhotoContent sharePhotoContent;
    ShareVideoContent shareVideoContent;
    ShareOpenGraphContent shareOpenGraphContent;
    bqx.a(paramShareContent, "shareContent");
    bqx.a(paramUUID, "callId");
    Bundle bundle = null;
    if (paramShareContent instanceof ShareLinkContent)
      return a((ShareLinkContent)paramShareContent, paramBoolean); 
    if (paramShareContent instanceof SharePhotoContent) {
      sharePhotoContent = (SharePhotoContent)paramShareContent;
      return a(sharePhotoContent, bze.a(sharePhotoContent, paramUUID), paramBoolean);
    } 
    if (sharePhotoContent instanceof ShareVideoContent) {
      shareVideoContent = (ShareVideoContent)sharePhotoContent;
      return a(shareVideoContent, bze.a(shareVideoContent, paramUUID), paramBoolean);
    } 
    if (shareVideoContent instanceof ShareOpenGraphContent) {
      shareOpenGraphContent = (ShareOpenGraphContent)shareVideoContent;
      try {
        return a(shareOpenGraphContent, bze.a(bze.a(paramUUID, shareOpenGraphContent), false), paramBoolean);
      } catch (JSONException jSONException) {
        throw new bhp("Unable to create a JSON Object from the provided ShareOpenGraphContent: " + jSONException.getMessage());
      } 
    } 
    if (shareOpenGraphContent instanceof ShareMediaContent) {
      ShareMediaContent shareMediaContent = (ShareMediaContent)shareOpenGraphContent;
      return a(shareMediaContent, bze.a(shareMediaContent, (UUID)jSONException), paramBoolean);
    } 
    return bundle;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\byp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */