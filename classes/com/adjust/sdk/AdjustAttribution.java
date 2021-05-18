package com.adjust.sdk;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamField;
import java.io.Serializable;
import java.util.Locale;
import org.json.JSONObject;

public class AdjustAttribution implements Serializable {
  private static final ObjectStreamField[] serialPersistentFields = new ObjectStreamField[] { new ObjectStreamField("trackerToken", String.class), new ObjectStreamField("trackerName", String.class), new ObjectStreamField("network", String.class), new ObjectStreamField("campaign", String.class), new ObjectStreamField("adgroup", String.class), new ObjectStreamField("creative", String.class), new ObjectStreamField("clickLabel", String.class), new ObjectStreamField("adid", String.class) };
  
  private static final long serialVersionUID = 1L;
  
  public String adgroup;
  
  public String adid;
  
  public String campaign;
  
  public String clickLabel;
  
  public String creative;
  
  public String network;
  
  public String trackerName;
  
  public String trackerToken;
  
  public static AdjustAttribution fromJson(JSONObject paramJSONObject, String paramString) {
    if (paramJSONObject == null)
      return null; 
    AdjustAttribution adjustAttribution = new AdjustAttribution();
    adjustAttribution.trackerToken = paramJSONObject.optString("tracker_token", null);
    adjustAttribution.trackerName = paramJSONObject.optString("tracker_name", null);
    adjustAttribution.network = paramJSONObject.optString("network", null);
    adjustAttribution.campaign = paramJSONObject.optString("campaign", null);
    adjustAttribution.adgroup = paramJSONObject.optString("adgroup", null);
    adjustAttribution.creative = paramJSONObject.optString("creative", null);
    adjustAttribution.clickLabel = paramJSONObject.optString("click_label", null);
    adjustAttribution.adid = paramString;
    return adjustAttribution;
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream) {
    paramObjectInputStream.defaultReadObject();
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream) {
    paramObjectOutputStream.defaultWriteObject();
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject != this) {
      if (paramObject == null)
        return false; 
      if (getClass() != paramObject.getClass())
        return false; 
      paramObject = paramObject;
      if (!Util.equalString(this.trackerToken, ((AdjustAttribution)paramObject).trackerToken))
        return false; 
      if (!Util.equalString(this.trackerName, ((AdjustAttribution)paramObject).trackerName))
        return false; 
      if (!Util.equalString(this.network, ((AdjustAttribution)paramObject).network))
        return false; 
      if (!Util.equalString(this.campaign, ((AdjustAttribution)paramObject).campaign))
        return false; 
      if (!Util.equalString(this.adgroup, ((AdjustAttribution)paramObject).adgroup))
        return false; 
      if (!Util.equalString(this.creative, ((AdjustAttribution)paramObject).creative))
        return false; 
      if (!Util.equalString(this.clickLabel, ((AdjustAttribution)paramObject).clickLabel))
        return false; 
      if (!Util.equalString(this.adid, ((AdjustAttribution)paramObject).adid))
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    return (((((((Util.hashString(this.trackerToken) + 629) * 37 + Util.hashString(this.trackerName)) * 37 + Util.hashString(this.network)) * 37 + Util.hashString(this.campaign)) * 37 + Util.hashString(this.adgroup)) * 37 + Util.hashString(this.creative)) * 37 + Util.hashString(this.clickLabel)) * 37 + Util.hashString(this.adid);
  }
  
  public String toString() {
    return String.format(Locale.US, "tt:%s tn:%s net:%s cam:%s adg:%s cre:%s cl:%s adid:%s", new Object[] { this.trackerToken, this.trackerName, this.network, this.campaign, this.adgroup, this.creative, this.clickLabel, this.adid });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\AdjustAttribution.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */