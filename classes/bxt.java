import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import org.json.JSONArray;

class bxt extends bxl implements bxu {
  private boolean f = bww.k(this.e);
  
  private String g;
  
  bxt(bww parambww, String paramString) {
    super(parambww, paramString, ccn.PAGE);
    this.g = paramString;
    Bundle bundle = new Bundle();
    bundle.putString("fields", "id");
    a(new GraphRequest(AccessToken.a(), "me/likes/" + paramString, bundle, biz.GET));
  }
  
  protected void a(bix parambix) {
    JSONArray jSONArray = bqq.c(parambix.b(), "data");
    if (jSONArray != null && jSONArray.length() > 0)
      this.f = true; 
  }
  
  protected void a(FacebookRequestError paramFacebookRequestError) {
    bpu.a(bjb.REQUESTS, bww.f(), "Error fetching like status for page id '%s': %s", new Object[] { this.g, paramFacebookRequestError });
    bww.a(this.e, "get_page_like", paramFacebookRequestError);
  }
  
  public boolean b() {
    return this.f;
  }
  
  public String c() {
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bxt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */