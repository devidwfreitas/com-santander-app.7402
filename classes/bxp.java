import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import java.util.Locale;
import org.json.JSONObject;

class bxp extends bxl {
  String e = bww.b(this.i);
  
  String f = bww.c(this.i);
  
  String g = bww.d(this.i);
  
  String h = bww.e(this.i);
  
  bxp(bww parambww, String paramString, ccn paramccn) {
    super(parambww, paramString, paramccn);
    Bundle bundle = new Bundle();
    bundle.putString("fields", "engagement.fields(count_string_with_like,count_string_without_like,social_sentence_with_like,social_sentence_without_like)");
    bundle.putString("locale", Locale.getDefault().toString());
    a(new GraphRequest(AccessToken.a(), paramString, bundle, biz.GET));
  }
  
  protected void a(bix parambix) {
    JSONObject jSONObject = bqq.b(parambix.b(), "engagement");
    if (jSONObject != null) {
      this.e = jSONObject.optString("count_string_with_like", this.e);
      this.f = jSONObject.optString("count_string_without_like", this.f);
      this.g = jSONObject.optString("social_sentence_with_like", this.g);
      this.h = jSONObject.optString("social_sentence_without_like", this.h);
    } 
  }
  
  protected void a(FacebookRequestError paramFacebookRequestError) {
    bpu.a(bjb.REQUESTS, bww.f(), "Error fetching engagement for object '%s' with type '%s' : %s", new Object[] { this.a, this.b, paramFacebookRequestError });
    bww.a(this.i, "get_engagement", paramFacebookRequestError);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bxp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */