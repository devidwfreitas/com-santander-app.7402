package com.facebook.login.widget;

import android.content.Context;
import android.net.Uri;
import android.util.AttributeSet;
import bte;
import btk;

public class DeviceLoginButton extends LoginButton {
  private Uri a;
  
  public DeviceLoginButton(Context paramContext) {
    super(paramContext);
  }
  
  public DeviceLoginButton(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  public DeviceLoginButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public Uri g() {
    return this.a;
  }
  
  protected btk h() {
    return (btk)new bte(this, null);
  }
  
  public void setDeviceRedirectUri(Uri paramUri) {
    this.a = paramUri;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\login\widget\DeviceLoginButton.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */