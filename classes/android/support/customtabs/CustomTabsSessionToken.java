package android.support.customtabs;

import android.content.Intent;
import android.os.IBinder;
import android.support.v4.app.BundleCompat;

public class CustomTabsSessionToken {
  private static final String TAG = "CustomTabsSessionToken";
  
  private final CustomTabsCallback mCallback;
  
  private final ICustomTabsCallback mCallbackBinder;
  
  CustomTabsSessionToken(ICustomTabsCallback paramICustomTabsCallback) {
    this.mCallbackBinder = paramICustomTabsCallback;
    this.mCallback = new CustomTabsSessionToken$1(this);
  }
  
  public static CustomTabsSessionToken getSessionTokenFromIntent(Intent paramIntent) {
    IBinder iBinder = BundleCompat.getBinder(paramIntent.getExtras(), "android.support.customtabs.extra.SESSION");
    return (iBinder == null) ? null : new CustomTabsSessionToken(ICustomTabsCallback$Stub.asInterface(iBinder));
  }
  
  public boolean equals(Object paramObject) {
    return !(paramObject instanceof CustomTabsSessionToken) ? false : ((CustomTabsSessionToken)paramObject).getCallbackBinder().equals(this.mCallbackBinder.asBinder());
  }
  
  public CustomTabsCallback getCallback() {
    return this.mCallback;
  }
  
  IBinder getCallbackBinder() {
    return this.mCallbackBinder.asBinder();
  }
  
  public int hashCode() {
    return getCallbackBinder().hashCode();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\customtabs\CustomTabsSessionToken.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */