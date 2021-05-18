import com.facebook.FacebookRequestError;

public class bid extends bhp {
  private static final long c = 1L;
  
  private final FacebookRequestError a;
  
  public bid(FacebookRequestError paramFacebookRequestError, String paramString) {
    super(paramString);
    this.a = paramFacebookRequestError;
  }
  
  public final FacebookRequestError a() {
    return this.a;
  }
  
  public final String toString() {
    return "{FacebookServiceException: " + "httpResponseCode: " + this.a.b() + ", facebookErrorCode: " + this.a.c() + ", facebookErrorType: " + this.a.e() + ", message: " + this.a.f() + "}";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bid.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */