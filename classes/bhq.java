import com.facebook.FacebookRequestError;

public class bhq extends bhp {
  private final bix a;
  
  public bhq(bix parambix, String paramString) {
    super(paramString);
    this.a = parambix;
  }
  
  public final bix a() {
    return this.a;
  }
  
  public final String toString() {
    FacebookRequestError facebookRequestError;
    if (this.a != null) {
      facebookRequestError = this.a.a();
    } else {
      facebookRequestError = null;
    } 
    StringBuilder stringBuilder = (new StringBuilder()).append("{FacebookGraphResponseException: ");
    String str = getMessage();
    if (str != null) {
      stringBuilder.append(str);
      stringBuilder.append(" ");
    } 
    if (facebookRequestError != null)
      stringBuilder.append("httpResponseCode: ").append(facebookRequestError.b()).append(", facebookErrorCode: ").append(facebookRequestError.c()).append(", facebookErrorType: ").append(facebookRequestError.e()).append(", message: ").append(facebookRequestError.f()).append("}"); 
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bhq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */