package com.adjust.sdk;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamField;
import java.io.Serializable;
import java.util.Calendar;
import java.util.LinkedList;
import java.util.Locale;

public class ActivityState implements Serializable, Cloneable {
  private static final int ORDER_ID_MAXCOUNT = 10;
  
  private static final ObjectStreamField[] serialPersistentFields = new ObjectStreamField[] { 
      new ObjectStreamField("uuid", String.class), new ObjectStreamField("enabled", boolean.class), new ObjectStreamField("askingAttribution", boolean.class), new ObjectStreamField("eventCount", int.class), new ObjectStreamField("sessionCount", int.class), new ObjectStreamField("subsessionCount", int.class), new ObjectStreamField("sessionLength", long.class), new ObjectStreamField("timeSpent", long.class), new ObjectStreamField("lastActivity", long.class), new ObjectStreamField("lastInterval", long.class), 
      new ObjectStreamField("updatePackages", boolean.class), new ObjectStreamField("orderIds", LinkedList.class), new ObjectStreamField("pushToken", String.class), new ObjectStreamField("adid", String.class), new ObjectStreamField("clickTime", long.class), new ObjectStreamField("installBegin", long.class), new ObjectStreamField("installReferrer", String.class) };
  
  private static final long serialVersionUID = 9039439291143138148L;
  
  protected String adid = null;
  
  protected boolean askingAttribution = false;
  
  protected long clickTime = 0L;
  
  protected boolean enabled = true;
  
  public int eventCount = 0;
  
  protected long installBegin = 0L;
  
  protected String installReferrer = null;
  
  protected long lastActivity = -1L;
  
  public long lastInterval = -1L;
  
  private transient ILogger logger = AdjustFactory.getLogger();
  
  protected LinkedList<String> orderIds = null;
  
  public String pushToken = null;
  
  public int sessionCount = 0;
  
  public long sessionLength = -1L;
  
  public int subsessionCount = -1;
  
  public long timeSpent = -1L;
  
  protected boolean updatePackages = false;
  
  public String uuid = Util.createUuid();
  
  private void readObject(ObjectInputStream paramObjectInputStream) {
    ObjectInputStream.GetField getField = paramObjectInputStream.readFields();
    this.eventCount = Util.readIntField(getField, "eventCount", 0);
    this.sessionCount = Util.readIntField(getField, "sessionCount", 0);
    this.subsessionCount = Util.readIntField(getField, "subsessionCount", -1);
    this.sessionLength = Util.readLongField(getField, "sessionLength", -1L);
    this.timeSpent = Util.readLongField(getField, "timeSpent", -1L);
    this.lastActivity = Util.readLongField(getField, "lastActivity", -1L);
    this.lastInterval = Util.readLongField(getField, "lastInterval", -1L);
    this.uuid = Util.readStringField(getField, "uuid", null);
    this.enabled = Util.readBooleanField(getField, "enabled", true);
    this.askingAttribution = Util.readBooleanField(getField, "askingAttribution", false);
    this.updatePackages = Util.readBooleanField(getField, "updatePackages", false);
    this.orderIds = Util.<LinkedList<String>>readObjectField(getField, "orderIds", null);
    this.pushToken = Util.readStringField(getField, "pushToken", null);
    this.adid = Util.readStringField(getField, "adid", null);
    this.clickTime = Util.readLongField(getField, "clickTime", -1L);
    this.installBegin = Util.readLongField(getField, "installBegin", -1L);
    this.installReferrer = Util.readStringField(getField, "installReferrer", null);
    if (this.uuid == null)
      this.uuid = Util.createUuid(); 
  }
  
  private static String stamp(long paramLong) {
    Calendar.getInstance().setTimeInMillis(paramLong);
    return String.format(Locale.US, "%02d:%02d:%02d", new Object[] { Integer.valueOf(11), Integer.valueOf(12), Integer.valueOf(13) });
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream) {
    paramObjectOutputStream.defaultWriteObject();
  }
  
  protected void addOrderId(String paramString) {
    if (this.orderIds == null)
      this.orderIds = new LinkedList<String>(); 
    if (this.orderIds.size() >= 10)
      this.orderIds.removeLast(); 
    this.orderIds.addFirst(paramString);
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject != this) {
      if (paramObject == null)
        return false; 
      if (getClass() != paramObject.getClass())
        return false; 
      paramObject = paramObject;
      if (!Util.equalString(this.uuid, ((ActivityState)paramObject).uuid))
        return false; 
      if (!Util.equalBoolean(Boolean.valueOf(this.enabled), Boolean.valueOf(((ActivityState)paramObject).enabled)))
        return false; 
      if (!Util.equalBoolean(Boolean.valueOf(this.askingAttribution), Boolean.valueOf(((ActivityState)paramObject).askingAttribution)))
        return false; 
      if (!Util.equalInt(Integer.valueOf(this.eventCount), Integer.valueOf(((ActivityState)paramObject).eventCount)))
        return false; 
      if (!Util.equalInt(Integer.valueOf(this.sessionCount), Integer.valueOf(((ActivityState)paramObject).sessionCount)))
        return false; 
      if (!Util.equalInt(Integer.valueOf(this.subsessionCount), Integer.valueOf(((ActivityState)paramObject).subsessionCount)))
        return false; 
      if (!Util.equalLong(Long.valueOf(this.sessionLength), Long.valueOf(((ActivityState)paramObject).sessionLength)))
        return false; 
      if (!Util.equalLong(Long.valueOf(this.timeSpent), Long.valueOf(((ActivityState)paramObject).timeSpent)))
        return false; 
      if (!Util.equalLong(Long.valueOf(this.lastInterval), Long.valueOf(((ActivityState)paramObject).lastInterval)))
        return false; 
      if (!Util.equalBoolean(Boolean.valueOf(this.updatePackages), Boolean.valueOf(((ActivityState)paramObject).updatePackages)))
        return false; 
      if (!Util.equalObject(this.orderIds, ((ActivityState)paramObject).orderIds))
        return false; 
      if (!Util.equalString(this.pushToken, ((ActivityState)paramObject).pushToken))
        return false; 
      if (!Util.equalString(this.adid, ((ActivityState)paramObject).adid))
        return false; 
      if (!Util.equalLong(Long.valueOf(this.clickTime), Long.valueOf(((ActivityState)paramObject).clickTime)))
        return false; 
      if (!Util.equalLong(Long.valueOf(this.installBegin), Long.valueOf(((ActivityState)paramObject).installBegin)))
        return false; 
      if (!Util.equalString(this.installReferrer, ((ActivityState)paramObject).installReferrer))
        return false; 
    } 
    return true;
  }
  
  protected boolean findOrderId(String paramString) {
    return (this.orderIds == null) ? false : this.orderIds.contains(paramString);
  }
  
  public int hashCode() {
    return (((((((((((((((Util.hashString(this.uuid) + 629) * 37 + Util.hashBoolean(Boolean.valueOf(this.enabled))) * 37 + Util.hashBoolean(Boolean.valueOf(this.askingAttribution))) * 37 + this.eventCount) * 37 + this.sessionCount) * 37 + this.subsessionCount) * 37 + Util.hashLong(Long.valueOf(this.sessionLength))) * 37 + Util.hashLong(Long.valueOf(this.timeSpent))) * 37 + Util.hashLong(Long.valueOf(this.lastInterval))) * 37 + Util.hashBoolean(Boolean.valueOf(this.updatePackages))) * 37 + Util.hashObject(this.orderIds)) * 37 + Util.hashString(this.pushToken)) * 37 + Util.hashString(this.adid)) * 37 + Util.hashLong(Long.valueOf(this.clickTime))) * 37 + Util.hashLong(Long.valueOf(this.installBegin))) * 37 + Util.hashString(this.installReferrer);
  }
  
  protected void resetSessionAttributes(long paramLong) {
    this.subsessionCount = 1;
    this.sessionLength = 0L;
    this.timeSpent = 0L;
    this.lastActivity = paramLong;
    this.lastInterval = -1L;
  }
  
  public String toString() {
    return String.format(Locale.US, "ec:%d sc:%d ssc:%d sl:%.1f ts:%.1f la:%s uuid:%s", new Object[] { Integer.valueOf(this.eventCount), Integer.valueOf(this.sessionCount), Integer.valueOf(this.subsessionCount), Double.valueOf(this.sessionLength / 1000.0D), Double.valueOf(this.timeSpent / 1000.0D), stamp(this.lastActivity), this.uuid });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\ActivityState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */