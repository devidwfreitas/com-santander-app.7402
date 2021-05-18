import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import org.json.JSONObject;

class bwb implements bns {
  bwb(bvy parambvy, JSONObject paramJSONObject, String paramString, bim parambim, bnr parambnr) {}
  
  public void a() {
    String str = this.a.toString();
    Bundle bundle = new Bundle();
    bundle.putString("object", str);
    try {
      (new GraphRequest(AccessToken.a(), bvy.a(this.e, "objects/" + URLEncoder.encode(this.b, "UTF-8")), bundle, biz.POST, this.c)).n();
      return;
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      String str2 = unsupportedEncodingException.getLocalizedMessage();
      String str1 = str2;
      if (str2 == null)
        str1 = "Error staging Open Graph object."; 
      this.d.a(new bhp(str1));
      return;
    } 
  }
  
  public void a(bhp parambhp) {
    this.d.a(parambhp);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bwb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */