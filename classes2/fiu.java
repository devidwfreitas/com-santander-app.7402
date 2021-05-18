import android.app.Activity;
import android.os.Bundle;
import android.util.Base64;
import android.util.Log;
import android.widget.TextView;
import java.io.UnsupportedEncodingException;
import javax.net.ssl.HostnameVerifier;
import org.json.JSONObject;

public class fiu extends grs {
  private static final String d = "https://mbb.paas.isbanbr.dev.corp/";
  
  private static final String e = "https://mbb.paas.santanderbr.pre.corp/";
  
  private static final String f = "transfer/v1/listAllBanks";
  
  public Activity a = null;
  
  public TextView b = null;
  
  private HostnameVerifier c = new fiv(this);
  
  private String a() {
    byte[] arrayOfByte = new byte[0];
    try {
      byte[] arrayOfByte1 = (miq.C().i() + ":" + miq.C().f().a()).getBytes("UTF-8");
      arrayOfByte = arrayOfByte1;
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      unsupportedEncodingException.printStackTrace();
    } 
    return Base64.encodeToString(arrayOfByte, 2);
  }
  
  private void b() {
    try {
      iq iq = new iq();
      iq.a("payment/v1/checkBarcode");
      iq.a(im.POST);
      JSONObject jSONObject1 = new JSONObject();
      jSONObject1.put("Content-Type", "application/json");
      jSONObject1.put("accept", "application/json");
      jSONObject1.put("Accept-Encoding", "gzip");
      jSONObject1.put("Content-Encoding", "gzip");
      jSONObject1.put("x-uid", miq.C().i());
      jSONObject1.put("x-authorization-token", miq.C().f().a());
      JSONObject jSONObject2 = new JSONObject();
      jSONObject2.put("barcode", "846200000004399002962013710100550007001230742650");
      iq.a(jSONObject1);
      iq.a(nab.a().b(jSONObject2.toString()));
      iq.a(Boolean.valueOf(true));
      gnz.a().b().a(iq, new fiw(this));
      return;
    } catch (Exception exception) {
      Log.e("ERROR_PAAS", exception.getMessage());
      return;
    } 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968721);
    this.a = (Activity)this;
    this.b = (TextView)findViewById(2131755975);
    b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fiu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */