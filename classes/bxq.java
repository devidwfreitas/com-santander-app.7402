import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import org.json.JSONObject;

class bxq extends bxl {
  String e;
  
  bxq(bww parambww, String paramString, ccn paramccn) {
    super(parambww, paramString, paramccn);
    Bundle bundle = new Bundle();
    bundle.putString("fields", "og_object.fields(id)");
    bundle.putString("ids", paramString);
    a(new GraphRequest(AccessToken.a(), "", bundle, biz.GET));
  }
  
  protected void a(bix parambix) {
    JSONObject jSONObject = bqq.b(parambix.b(), this.a);
    if (jSONObject != null) {
      jSONObject = jSONObject.optJSONObject("og_object");
      if (jSONObject != null)
        this.e = jSONObject.optString("id"); 
    } 
  }
  
  protected void a(FacebookRequestError paramFacebookRequestError) {
    if (paramFacebookRequestError.f().contains("og_object")) {
      this.c = null;
      return;
    } 
    bpu.a(bjb.REQUESTS, bww.f(), "Error getting the FB id for object '%s' with type '%s' : %s", new Object[] { this.a, this.b, paramFacebookRequestError });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bxq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */