import com.facebook.AccessToken;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;

class bxx extends bxl {
  private String f;
  
  bxx(bww parambww, String paramString) {
    super(parambww, null, null);
    this.f = paramString;
    a(new GraphRequest(AccessToken.a(), paramString, null, biz.DELETE));
  }
  
  protected void a(bix parambix) {}
  
  protected void a(FacebookRequestError paramFacebookRequestError) {
    bpu.a(bjb.REQUESTS, bww.f(), "Error unliking object with unlike token '%s' : %s", new Object[] { this.f, paramFacebookRequestError });
    bww.a(this.e, "publish_unlike", paramFacebookRequestError);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bxx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */