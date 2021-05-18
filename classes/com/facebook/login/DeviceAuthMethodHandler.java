package com.facebook.login;

import android.os.Parcel;
import android.os.Parcelable;
import bgy;
import brw;
import com.facebook.AccessToken;
import java.util.Collection;
import java.util.Date;
import java.util.concurrent.ScheduledThreadPoolExecutor;

public class DeviceAuthMethodHandler extends LoginMethodHandler {
  public static final Parcelable.Creator<DeviceAuthMethodHandler> CREATOR = (Parcelable.Creator<DeviceAuthMethodHandler>)new brw();
  
  private static ScheduledThreadPoolExecutor c;
  
  public DeviceAuthMethodHandler(Parcel paramParcel) {
    super(paramParcel);
  }
  
  DeviceAuthMethodHandler(LoginClient paramLoginClient) {
    super(paramLoginClient);
  }
  
  private void b(LoginClient$Request paramLoginClient$Request) {
    DeviceAuthDialog deviceAuthDialog = new DeviceAuthDialog();
    deviceAuthDialog.show(this.b.b().getSupportFragmentManager(), "login_with_facebook");
    deviceAuthDialog.a(paramLoginClient$Request);
  }
  
  public static ScheduledThreadPoolExecutor c() {
    // Byte code:
    //   0: ldc com/facebook/login/DeviceAuthMethodHandler
    //   2: monitorenter
    //   3: getstatic com/facebook/login/DeviceAuthMethodHandler.c : Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    //   6: ifnonnull -> 20
    //   9: new java/util/concurrent/ScheduledThreadPoolExecutor
    //   12: dup
    //   13: iconst_1
    //   14: invokespecial <init> : (I)V
    //   17: putstatic com/facebook/login/DeviceAuthMethodHandler.c : Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    //   20: getstatic com/facebook/login/DeviceAuthMethodHandler.c : Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    //   23: astore_0
    //   24: ldc com/facebook/login/DeviceAuthMethodHandler
    //   26: monitorexit
    //   27: aload_0
    //   28: areturn
    //   29: astore_0
    //   30: ldc com/facebook/login/DeviceAuthMethodHandler
    //   32: monitorexit
    //   33: aload_0
    //   34: athrow
    // Exception table:
    //   from	to	target	type
    //   3	20	29	finally
    //   20	24	29	finally
  }
  
  String a() {
    return "device_auth";
  }
  
  public void a(Exception paramException) {
    LoginClient$Result loginClient$Result = LoginClient$Result.a(this.b.c(), null, paramException.getMessage());
    this.b.a(loginClient$Result);
  }
  
  public void a(String paramString1, String paramString2, String paramString3, Collection<String> paramCollection1, Collection<String> paramCollection2, bgy parambgy, Date paramDate1, Date paramDate2) {
    AccessToken accessToken = new AccessToken(paramString1, paramString2, paramString3, paramCollection1, paramCollection2, parambgy, paramDate1, paramDate2);
    LoginClient$Result loginClient$Result = LoginClient$Result.a(this.b.c(), accessToken);
    this.b.a(loginClient$Result);
  }
  
  boolean a(LoginClient$Request paramLoginClient$Request) {
    b(paramLoginClient$Request);
    return true;
  }
  
  public void c_() {
    LoginClient$Result loginClient$Result = LoginClient$Result.a(this.b.c(), "User canceled log in.");
    this.b.a(loginClient$Result);
  }
  
  public int describeContents() {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    super.writeToParcel(paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\login\DeviceAuthMethodHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */