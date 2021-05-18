import com.facebook.share.model.ShareMedia;
import com.facebook.share.model.SharePhoto;
import java.util.ArrayList;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

final class bzl implements bys {
  bzl(UUID paramUUID, ArrayList paramArrayList) {}
  
  public JSONObject a(SharePhoto paramSharePhoto) {
    JSONObject jSONObject1;
    bpz bpz = bze.a(this.a, (ShareMedia)paramSharePhoto);
    if (bpz == null)
      return null; 
    this.b.add(bpz);
    JSONObject jSONObject2 = new JSONObject();
    try {
      jSONObject2.put("url", bpz.a());
      jSONObject1 = jSONObject2;
      if (paramSharePhoto.e()) {
        jSONObject2.put("user_generated", true);
        return jSONObject2;
      } 
    } catch (JSONException jSONException) {
      throw new bhp("Unable to attach images", jSONException);
    } 
    return jSONObject1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bzl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */