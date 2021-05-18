package com.ca.mdo;

import android.content.Context;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

class DatabaseHandler {
  public static AtomicBoolean isDBFull = new AtomicBoolean(false);
  
  private static Context mContext;
  
  public DatabaseHandler(Context paramContext) {
    mContext = paramContext;
    isDBFull = new AtomicBoolean(SDK.isDBFull());
  }
  
  public void mergeEvent(JSONObject paramJSONObject) {
    DatabaseHelper databaseHelper = DatabaseHelper.getDatabaseHelper(mContext);
    try {
      String str1 = paramJSONObject.getString("session_json_type");
      String str2 = paramJSONObject.getString("session_id");
      paramJSONObject = paramJSONObject.getJSONObject("session_json");
      if (MDOSecurityManager.getInstance().isSecureMode()) {
        databaseHelper.updateEvent(str2, MDOSecurityManager.getInstance().encrypt(paramJSONObject, str1), str1);
        return;
      } 
      databaseHelper.updateEvent(str2, paramJSONObject.toString(), str1);
      return;
    } catch (JSONException jSONException) {
      CALog.e("Exception " + jSONException, (Throwable)jSONException);
      return;
    } 
  }
  
  public void persistEvents(JSONObject paramJSONObject, int paramInt, boolean paramBoolean) {
    if (!isDBFull.get())
      try {
        boolean bool;
        CALog.d("PersistedEvent: " + paramJSONObject.toString());
        DataManager dataManager = CAMobileDevOps.getDataManager();
        DatabaseHelper databaseHelper = DatabaseHelper.getDatabaseHelper(mContext);
        String str2 = paramJSONObject.getString("session_json_type");
        String str3 = paramJSONObject.getString("session_id");
        JSONObject jSONObject = paramJSONObject.getJSONObject("session_json");
        if (str2 != null && str2.equalsIgnoreCase("evt")) {
          bool = true;
        } else {
          bool = false;
        } 
        if (bool && paramBoolean && paramInt != 2)
          dataManager.processRules(); 
        String str1 = jSONObject.toString();
        if (MDOSecurityManager.getInstance().isSecureMode())
          str1 = MDOSecurityManager.getInstance().encrypt(jSONObject, str2); 
        databaseHelper.persistEvent(str3, str1, str2, paramInt);
        Util.getSharedPreferencesEditor().putLong("lastloggedevent", System.currentTimeMillis()).commit();
        if (bool && paramBoolean) {
          dataManager.increment();
          return;
        } 
        return;
      } catch (JSONException jSONException) {
        CALog.e("Exception " + jSONException);
        return;
      }  
  }
  
  public void updateEvent(JSONObject paramJSONObject) {
    DatabaseHelper databaseHelper = DatabaseHelper.getDatabaseHelper(mContext);
    try {
      String str = paramJSONObject.getString("si");
      if (MDOSecurityManager.getInstance().isSecureMode()) {
        databaseHelper.updateEvent(str, MDOSecurityManager.getInstance().encrypt(paramJSONObject, "hdr"), "hdr");
        return;
      } 
      databaseHelper.updateEvent(str, paramJSONObject.toString(), "hdr");
      return;
    } catch (Exception exception) {
      CALog.e("Exception " + exception);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\DatabaseHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */