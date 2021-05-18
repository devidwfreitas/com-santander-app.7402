package br.com.santander.msgsdk.request;

import android.util.Log;
import br.com.santander.msgsdk.ConnectorRequestInterface;
import br.com.santander.msgsdk.configPanel.model.Category;
import im;
import ir;
import java.io.InputStream;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class RequestConfigPanelUpdate extends AbstractConnectorRequest {
  private static final String TAG = RequestConfigPanelUpdate.class.getName();
  
  private static final String URL = "messaging-internet/v1/update-category";
  
  private String applicationId;
  
  private Category category;
  
  public RequestConfigPanelUpdate(RequestProvider paramRequestProvider, String paramString, Category paramCategory) {
    super(paramRequestProvider);
    this.applicationId = paramString;
    this.category = paramCategory;
  }
  
  public ir createHubRequest() {
    ir ir = new ir();
    ir.a("messaging-internet/v1/update-category");
    ir.a(im.POST);
    ir.a(HeaderProvider.unauth(TAG, this.requestProvider));
    ir.a(Boolean.valueOf(true));
    ir.a(getBody());
    return ir;
  }
  
  public JSONObject getBody() {
    JSONObject jSONObject1 = new JSONObject();
    JSONObject jSONObject2 = new JSONObject();
    try {
      jSONObject2.put("id", this.category.getCode());
      if (this.category.isMembershipStatus()) {
        String str1 = "true";
        jSONObject2.put("membershipStatus", str1);
        JSONArray jSONArray1 = new JSONArray();
        jSONArray1.put(jSONObject2);
        jSONObject1.put("applicationId", this.applicationId);
        jSONObject1.put("categories", jSONArray1);
        Log.d(TAG, "getBody" + jSONObject1);
        return jSONObject1;
      } 
      String str = "false";
      jSONObject2.put("membershipStatus", str);
      JSONArray jSONArray = new JSONArray();
      jSONArray.put(jSONObject2);
      jSONObject1.put("applicationId", this.applicationId);
      jSONObject1.put("categories", jSONArray);
      Log.d(TAG, "getBody" + jSONObject1);
      return jSONObject1;
    } catch (JSONException jSONException) {
      Log.e(TAG, "getBody JSONException ", (Throwable)jSONException);
      return jSONObject1;
    } 
  }
  
  public ConnectorRequestInterface.ConnectorType getConnectorType() {
    return ConnectorRequestInterface.ConnectorType.PUT;
  }
  
  public JSONObject getHeader() {
    return HeaderProvider.unauth(TAG, this.requestProvider);
  }
  
  public String getMethod() {
    return "messaging-internet/v1/update-category";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\request\RequestConfigPanelUpdate.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */