import android.os.Bundle;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideoContent;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

public class bwv {
  private static Bundle a(ShareContent paramShareContent, boolean paramBoolean) {
    Bundle bundle = new Bundle();
    bqq.a(bundle, "com.facebook.platform.extra.LINK", paramShareContent.h());
    bqq.a(bundle, "com.facebook.platform.extra.PLACE", paramShareContent.j());
    bqq.a(bundle, "com.facebook.platform.extra.REF", paramShareContent.k());
    bundle.putBoolean("com.facebook.platform.extra.DATA_FAILURES_FATAL", paramBoolean);
    List<?> list = paramShareContent.i();
    if (!bqq.a(list))
      bundle.putStringArrayList("com.facebook.platform.extra.FRIENDS", new ArrayList(list)); 
    return bundle;
  }
  
  private static Bundle a(ShareLinkContent paramShareLinkContent, boolean paramBoolean) {
    Bundle bundle = a((ShareContent)paramShareLinkContent, paramBoolean);
    bqq.a(bundle, "com.facebook.platform.extra.TITLE", paramShareLinkContent.b());
    bqq.a(bundle, "com.facebook.platform.extra.DESCRIPTION", paramShareLinkContent.a());
    bqq.a(bundle, "com.facebook.platform.extra.IMAGE", paramShareLinkContent.c());
    return bundle;
  }
  
  private static Bundle a(ShareOpenGraphContent paramShareOpenGraphContent, JSONObject paramJSONObject, boolean paramBoolean) {
    Bundle bundle = a((ShareContent)paramShareOpenGraphContent, paramBoolean);
    bqq.a(bundle, "com.facebook.platform.extra.PREVIEW_PROPERTY_NAME", paramShareOpenGraphContent.b());
    bqq.a(bundle, "com.facebook.platform.extra.ACTION_TYPE", paramShareOpenGraphContent.a().a());
    bqq.a(bundle, "com.facebook.platform.extra.ACTION", paramJSONObject.toString());
    return bundle;
  }
  
  private static Bundle a(SharePhotoContent paramSharePhotoContent, List<String> paramList, boolean paramBoolean) {
    Bundle bundle = a((ShareContent)paramSharePhotoContent, paramBoolean);
    bundle.putStringArrayList("com.facebook.platform.extra.PHOTOS", new ArrayList<String>(paramList));
    return bundle;
  }
  
  private static Bundle a(ShareVideoContent paramShareVideoContent, boolean paramBoolean) {
    return null;
  }
  
  public static Bundle a(UUID paramUUID, ShareContent paramShareContent, boolean paramBoolean) {
    SharePhotoContent sharePhotoContent;
    bqx.a(paramShareContent, "shareContent");
    bqx.a(paramUUID, "callId");
    Bundle bundle = null;
    if (paramShareContent instanceof ShareLinkContent)
      return a((ShareLinkContent)paramShareContent, paramBoolean); 
    if (paramShareContent instanceof SharePhotoContent) {
      sharePhotoContent = (SharePhotoContent)paramShareContent;
      return a(sharePhotoContent, bze.a(sharePhotoContent, paramUUID), paramBoolean);
    } 
    if (sharePhotoContent instanceof ShareVideoContent)
      return a((ShareVideoContent)sharePhotoContent, paramBoolean); 
    if (sharePhotoContent instanceof ShareOpenGraphContent) {
      ShareOpenGraphContent shareOpenGraphContent = (ShareOpenGraphContent)sharePhotoContent;
      try {
        return a(shareOpenGraphContent, bze.a(paramUUID, shareOpenGraphContent), paramBoolean);
      } catch (JSONException jSONException) {
        throw new bhp("Unable to create a JSON Object from the provided ShareOpenGraphContent: " + jSONException.getMessage());
      } 
    } 
    return bundle;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bwv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */