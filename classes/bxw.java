import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;

class bxw extends bxl {
  String e;
  
  bxw(bww parambww, String paramString, ccn paramccn) {
    super(parambww, paramString, paramccn);
    Bundle bundle = new Bundle();
    bundle.putString("object", paramString);
    a(new GraphRequest(AccessToken.a(), "me/og.likes", bundle, biz.POST));
  }
  
  protected void a(bix parambix) {
    this.e = bqq.a(parambix.b(), "id");
  }
  
  protected void a(FacebookRequestError paramFacebookRequestError) {
    if (paramFacebookRequestError.c() == 3501) {
      this.c = null;
      return;
    } 
    bpu.a(bjb.REQUESTS, bww.f(), "Error liking object '%s' with type '%s' : %s", new Object[] { this.a, this.b, paramFacebookRequestError });
    bww.a(this.f, "publish_like", paramFacebookRequestError);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bxw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */