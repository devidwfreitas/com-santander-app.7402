import android.net.Uri;
import com.facebook.share.model.SharePhoto;
import org.json.JSONException;
import org.json.JSONObject;

final class bzm implements bys {
  public JSONObject a(SharePhoto paramSharePhoto) {
    Uri uri = paramSharePhoto.d();
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("url", uri.toString());
      return jSONObject;
    } catch (JSONException jSONException) {
      throw new bhp("Unable to attach images", jSONException);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bzm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */