import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import org.json.JSONArray;
import org.json.JSONObject;

class bxr extends bxl implements bxu {
  private boolean f = bww.k(this.e);
  
  private String g;
  
  private final String h;
  
  private final ccn i;
  
  bxr(bww parambww, String paramString, ccn paramccn) {
    super(parambww, paramString, paramccn);
    this.h = paramString;
    this.i = paramccn;
    Bundle bundle = new Bundle();
    bundle.putString("fields", "id,application");
    bundle.putString("object", this.h);
    a(new GraphRequest(AccessToken.a(), "me/og.likes", bundle, biz.GET));
  }
  
  protected void a(bix parambix) {
    JSONArray jSONArray = bqq.c(parambix.b(), "data");
    if (jSONArray != null)
      for (int i = 0; i < jSONArray.length(); i++) {
        JSONObject jSONObject = jSONArray.optJSONObject(i);
        if (jSONObject != null) {
          this.f = true;
          JSONObject jSONObject1 = jSONObject.optJSONObject("application");
          AccessToken accessToken = AccessToken.a();
          if (jSONObject1 != null && accessToken != null && bqq.a(accessToken.i(), jSONObject1.optString("id")))
            this.g = jSONObject.optString("id"); 
        } 
      }  
  }
  
  protected void a(FacebookRequestError paramFacebookRequestError) {
    bpu.a(bjb.REQUESTS, bww.f(), "Error fetching like status for object '%s' with type '%s' : %s", new Object[] { this.h, this.i, paramFacebookRequestError });
    bww.a(this.e, "get_og_object_like", paramFacebookRequestError);
  }
  
  public boolean b() {
    return this.f;
  }
  
  public String c() {
    return this.g;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bxr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */