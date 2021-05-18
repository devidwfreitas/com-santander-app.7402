package com.google.android.gms.ads.identifier;

public final class AdvertisingIdClient$Info {
  private final String a;
  
  private final boolean b;
  
  public AdvertisingIdClient$Info(String paramString, boolean paramBoolean) {
    this.a = paramString;
    this.b = paramBoolean;
  }
  
  public String getId() {
    return this.a;
  }
  
  public boolean isLimitAdTrackingEnabled() {
    return this.b;
  }
  
  public String toString() {
    String str = this.a;
    boolean bool = this.b;
    return (new StringBuilder(String.valueOf(str).length() + 7)).append("{").append(str).append("}").append(bool).toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\ads\identifier\AdvertisingIdClient$Info.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */