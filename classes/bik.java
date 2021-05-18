import android.net.Uri;
import com.facebook.share.model.SharePhoto;
import org.json.JSONObject;

public final class bik implements bys {
  public JSONObject a(SharePhoto paramSharePhoto) {
    Uri uri = paramSharePhoto.d();
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("url", uri.toString());
      return jSONObject;
    } catch (Exception exception) {
      throw new bhp("Unable to attach images", exception);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bik.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */