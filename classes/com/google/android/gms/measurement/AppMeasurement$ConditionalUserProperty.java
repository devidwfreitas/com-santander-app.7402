package com.google.android.gms.measurement;

import android.os.Bundle;
import android.support.annotation.Keep;
import csp;
import dou;

public class AppMeasurement$ConditionalUserProperty {
  @Keep
  public boolean mActive;
  
  @Keep
  public String mAppId;
  
  @Keep
  public long mCreationTimestamp;
  
  @Keep
  public String mExpiredEventName;
  
  @Keep
  public Bundle mExpiredEventParams;
  
  @Keep
  public String mName;
  
  @Keep
  public String mOrigin;
  
  @Keep
  public long mTimeToLive;
  
  @Keep
  public String mTimedOutEventName;
  
  @Keep
  public Bundle mTimedOutEventParams;
  
  @Keep
  public String mTriggerEventName;
  
  @Keep
  public long mTriggerTimeout;
  
  @Keep
  public String mTriggeredEventName;
  
  @Keep
  public Bundle mTriggeredEventParams;
  
  @Keep
  public long mTriggeredTimestamp;
  
  @Keep
  public Object mValue;
  
  public AppMeasurement$ConditionalUserProperty() {}
  
  public AppMeasurement$ConditionalUserProperty(AppMeasurement$ConditionalUserProperty paramAppMeasurement$ConditionalUserProperty) {
    csp.a(paramAppMeasurement$ConditionalUserProperty);
    this.mAppId = paramAppMeasurement$ConditionalUserProperty.mAppId;
    this.mOrigin = paramAppMeasurement$ConditionalUserProperty.mOrigin;
    this.mCreationTimestamp = paramAppMeasurement$ConditionalUserProperty.mCreationTimestamp;
    this.mName = paramAppMeasurement$ConditionalUserProperty.mName;
    if (paramAppMeasurement$ConditionalUserProperty.mValue != null) {
      this.mValue = dou.a(paramAppMeasurement$ConditionalUserProperty.mValue);
      if (this.mValue == null)
        this.mValue = paramAppMeasurement$ConditionalUserProperty.mValue; 
    } 
    this.mValue = paramAppMeasurement$ConditionalUserProperty.mValue;
    this.mActive = paramAppMeasurement$ConditionalUserProperty.mActive;
    this.mTriggerEventName = paramAppMeasurement$ConditionalUserProperty.mTriggerEventName;
    this.mTriggerTimeout = paramAppMeasurement$ConditionalUserProperty.mTriggerTimeout;
    this.mTimedOutEventName = paramAppMeasurement$ConditionalUserProperty.mTimedOutEventName;
    if (paramAppMeasurement$ConditionalUserProperty.mTimedOutEventParams != null)
      this.mTimedOutEventParams = new Bundle(paramAppMeasurement$ConditionalUserProperty.mTimedOutEventParams); 
    this.mTriggeredEventName = paramAppMeasurement$ConditionalUserProperty.mTriggeredEventName;
    if (paramAppMeasurement$ConditionalUserProperty.mTriggeredEventParams != null)
      this.mTriggeredEventParams = new Bundle(paramAppMeasurement$ConditionalUserProperty.mTriggeredEventParams); 
    this.mTriggeredTimestamp = paramAppMeasurement$ConditionalUserProperty.mTriggeredTimestamp;
    this.mTimeToLive = paramAppMeasurement$ConditionalUserProperty.mTimeToLive;
    this.mExpiredEventName = paramAppMeasurement$ConditionalUserProperty.mExpiredEventName;
    if (paramAppMeasurement$ConditionalUserProperty.mExpiredEventParams != null)
      this.mExpiredEventParams = new Bundle(paramAppMeasurement$ConditionalUserProperty.mExpiredEventParams); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\measurement\AppMeasurement$ConditionalUserProperty.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */