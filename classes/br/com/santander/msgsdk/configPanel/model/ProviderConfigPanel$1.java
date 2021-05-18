package br.com.santander.msgsdk.configPanel.model;

import android.util.Log;
import br.com.santander.msgsdk.MSGSDK;
import is;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class ProviderConfigPanel$1 implements MSGSDK.CallbackRequestConfigPanel {
  public void onError(is paramis) {
    Error error = new Error(paramis.b());
    Log.d(ProviderConfigPanel.access$000(), "PROVIDER onFailure: " + error.getMessage());
    ProviderConfigPanel.access$200(ProviderConfigPanel.this).getReceivedList(null, error);
  }
  
  public void onSuccess(is paramis) {
    Log.d(ProviderConfigPanel.access$000(), "PROVIDER onSuccess: " + paramis.a());
    JSONObject jSONObject = paramis.c();
    Log.d(ProviderConfigPanel.access$000(), "PROVIDER onSuccess - jsonObjectResult: " + jSONObject);
    if (jSONObject == null)
      return; 
    try {
      if (jSONObject.has("categories")) {
        JSONArray jSONArray = jSONObject.getJSONArray("categories");
      } else {
        JSONArray jSONArray = new JSONArray();
      } 
    } catch (JSONException jSONException) {
      jSONException.printStackTrace();
      ProviderConfigPanel.access$200(ProviderConfigPanel.this).getReceivedList(ProviderConfigPanel.access$100(ProviderConfigPanel.this), null);
      return;
    } 
    int i = 0;
    while (true) {
      if (i < jSONException.length()) {
        boolean bool;
        String str;
        JSONObject jSONObject1 = jSONException.getJSONObject(i);
        Category category = new Category();
        if (jSONObject1.has("code")) {
          str = jSONObject1.getString("code");
        } else {
          str = "";
        } 
        category.setCode(str);
        if (jSONObject1.has("alertMessage")) {
          str = jSONObject1.getString("alertMessage");
        } else {
          str = "";
        } 
        category.setAlertMessage(str);
        if (jSONObject1.has("description")) {
          str = jSONObject1.getString("description");
        } else {
          str = "";
        } 
        category.setDescription(str);
        if (jSONObject1.has("membershipStatus") && jSONObject1.getBoolean("membershipStatus")) {
          bool = true;
        } else {
          bool = false;
        } 
        category.setMembershipStatus(bool);
        if (jSONObject1.has("title")) {
          str = jSONObject1.getString("title");
        } else {
          str = "";
        } 
        category.setTitle(str);
        ProviderConfigPanel.access$100(ProviderConfigPanel.this).add(category);
        i++;
        continue;
      } 
      ProviderConfigPanel.access$200(ProviderConfigPanel.this).getReceivedList(ProviderConfigPanel.access$100(ProviderConfigPanel.this), null);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\configPanel\model\ProviderConfigPanel$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */