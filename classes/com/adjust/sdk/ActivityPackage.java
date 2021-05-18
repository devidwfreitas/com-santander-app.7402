package com.adjust.sdk;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamField;
import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

public class ActivityPackage implements Serializable {
  private static final ObjectStreamField[] serialPersistentFields = new ObjectStreamField[] { new ObjectStreamField("path", String.class), new ObjectStreamField("clientSdk", String.class), new ObjectStreamField("parameters", Map.class), new ObjectStreamField("activityKind", ActivityKind.class), new ObjectStreamField("suffix", String.class), new ObjectStreamField("callbackParameters", Map.class), new ObjectStreamField("partnerParameters", Map.class) };
  
  private static final long serialVersionUID = -35935556512024097L;
  
  private ActivityKind activityKind = ActivityKind.UNKNOWN;
  
  private Map<String, String> callbackParameters;
  
  private long clickTimeInMilliseconds;
  
  private long clickTimeInSeconds;
  
  private String clientSdk;
  
  private transient int hashCode;
  
  private long installBeginTimeInSeconds;
  
  private Map<String, String> parameters;
  
  private Map<String, String> partnerParameters;
  
  private String path;
  
  private int retries;
  
  private String suffix;
  
  public ActivityPackage(ActivityKind paramActivityKind) {
    this.activityKind = paramActivityKind;
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream) {
    ObjectInputStream.GetField getField = paramObjectInputStream.readFields();
    this.path = Util.readStringField(getField, "path", null);
    this.clientSdk = Util.readStringField(getField, "clientSdk", null);
    this.parameters = Util.<Map<String, String>>readObjectField(getField, "parameters", null);
    this.activityKind = Util.<ActivityKind>readObjectField(getField, "activityKind", ActivityKind.UNKNOWN);
    this.suffix = Util.readStringField(getField, "suffix", null);
    this.callbackParameters = Util.<Map<String, String>>readObjectField(getField, "callbackParameters", null);
    this.partnerParameters = Util.<Map<String, String>>readObjectField(getField, "partnerParameters", null);
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
      if (!Util.equalString(this.path, ((ActivityPackage)paramObject).path))
        return false; 
      if (!Util.equalString(this.clientSdk, ((ActivityPackage)paramObject).clientSdk))
        return false; 
      if (!Util.equalObject(this.parameters, ((ActivityPackage)paramObject).parameters))
        return false; 
      if (!Util.equalEnum(this.activityKind, ((ActivityPackage)paramObject).activityKind))
        return false; 
      if (!Util.equalString(this.suffix, ((ActivityPackage)paramObject).suffix))
        return false; 
      if (!Util.equalObject(this.callbackParameters, ((ActivityPackage)paramObject).callbackParameters))
        return false; 
      if (!Util.equalObject(this.partnerParameters, ((ActivityPackage)paramObject).partnerParameters))
        return false; 
    } 
    return true;
  }
  
  public ActivityKind getActivityKind() {
    return this.activityKind;
  }
  
  public Map<String, String> getCallbackParameters() {
    return this.callbackParameters;
  }
  
  public long getClickTimeInMilliseconds() {
    return this.clickTimeInMilliseconds;
  }
  
  public long getClickTimeInSeconds() {
    return this.clickTimeInSeconds;
  }
  
  public String getClientSdk() {
    return this.clientSdk;
  }
  
  public String getExtendedString() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(String.format(Locale.US, "Path:      %s\n", new Object[] { this.path }));
    stringBuilder.append(String.format(Locale.US, "ClientSdk: %s\n", new Object[] { this.clientSdk }));
    if (this.parameters != null) {
      stringBuilder.append("Parameters:");
      TreeMap<String, String> treeMap = new TreeMap<String, String>(this.parameters);
      List<String> list = Arrays.asList(new String[] { "app_secret", "secret_id" });
      for (Map.Entry<String, String> entry : treeMap.entrySet()) {
        String str = (String)entry.getKey();
        if (!list.contains(str))
          stringBuilder.append(String.format(Locale.US, "\n\t%-16s %s", new Object[] { str, entry.getValue() })); 
      } 
    } 
    return stringBuilder.toString();
  }
  
  protected String getFailureMessage() {
    return String.format(Locale.US, "Failed to track %s%s", new Object[] { this.activityKind.toString(), this.suffix });
  }
  
  public long getInstallBeginTimeInSeconds() {
    return this.installBeginTimeInSeconds;
  }
  
  public Map<String, String> getParameters() {
    return this.parameters;
  }
  
  public Map<String, String> getPartnerParameters() {
    return this.partnerParameters;
  }
  
  public String getPath() {
    return this.path;
  }
  
  public int getRetries() {
    return this.retries;
  }
  
  public String getSuffix() {
    return this.suffix;
  }
  
  public int hashCode() {
    if (this.hashCode == 0) {
      this.hashCode = 17;
      this.hashCode = this.hashCode * 37 + Util.hashString(this.path);
      this.hashCode = this.hashCode * 37 + Util.hashString(this.clientSdk);
      this.hashCode = this.hashCode * 37 + Util.hashObject(this.parameters);
      this.hashCode = this.hashCode * 37 + Util.hashEnum(this.activityKind);
      this.hashCode = this.hashCode * 37 + Util.hashString(this.suffix);
      this.hashCode = this.hashCode * 37 + Util.hashObject(this.callbackParameters);
      this.hashCode = this.hashCode * 37 + Util.hashObject(this.partnerParameters);
    } 
    return this.hashCode;
  }
  
  public int increaseRetries() {
    this.retries++;
    return this.retries;
  }
  
  public void setCallbackParameters(Map<String, String> paramMap) {
    this.callbackParameters = paramMap;
  }
  
  public void setClickTimeInMilliseconds(long paramLong) {
    this.clickTimeInMilliseconds = paramLong;
  }
  
  public void setClickTimeInSeconds(long paramLong) {
    this.clickTimeInSeconds = paramLong;
  }
  
  public void setClientSdk(String paramString) {
    this.clientSdk = paramString;
  }
  
  public void setInstallBeginTimeInSeconds(long paramLong) {
    this.installBeginTimeInSeconds = paramLong;
  }
  
  public void setParameters(Map<String, String> paramMap) {
    this.parameters = paramMap;
  }
  
  public void setPartnerParameters(Map<String, String> paramMap) {
    this.partnerParameters = paramMap;
  }
  
  public void setPath(String paramString) {
    this.path = paramString;
  }
  
  public void setSuffix(String paramString) {
    this.suffix = paramString;
  }
  
  public String toString() {
    return String.format(Locale.US, "%s%s", new Object[] { this.activityKind.toString(), this.suffix });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\ActivityPackage.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */