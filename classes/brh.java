import com.facebook.FacebookRequestError;
import java.util.concurrent.CountDownLatch;
import org.json.JSONObject;

class brh implements bim {
  brh(brg parambrg, String[] paramArrayOfString, int paramInt, CountDownLatch paramCountDownLatch) {}
  
  public void a(bix parambix) {
    try {
      FacebookRequestError facebookRequestError = parambix.a();
      if (facebookRequestError != null) {
        String str2 = facebookRequestError.f();
        String str1 = str2;
        if (str2 == null)
          str1 = "Error staging photo."; 
        throw new bhq(parambix, str1);
      } 
    } catch (Exception exception) {
      brg.a(this.d)[this.b] = exception;
      this.c.countDown();
      return;
    } 
    JSONObject jSONObject = exception.b();
    if (jSONObject == null)
      throw new bhp("Error staging photo."); 
    String str = jSONObject.optString("uri");
    if (str == null)
      throw new bhp("Error staging photo."); 
    this.a[this.b] = str;
    this.c.countDown();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\brh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */