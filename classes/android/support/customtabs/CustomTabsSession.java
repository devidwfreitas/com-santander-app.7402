package android.support.customtabs;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.widget.RemoteViews;
import java.util.List;

public final class CustomTabsSession {
  private static final String TAG = "CustomTabsSession";
  
  private final ICustomTabsCallback mCallback;
  
  private final ComponentName mComponentName;
  
  private final ICustomTabsService mService;
  
  CustomTabsSession(ICustomTabsService paramICustomTabsService, ICustomTabsCallback paramICustomTabsCallback, ComponentName paramComponentName) {
    this.mService = paramICustomTabsService;
    this.mCallback = paramICustomTabsCallback;
    this.mComponentName = paramComponentName;
  }
  
  IBinder getBinder() {
    return this.mCallback.asBinder();
  }
  
  ComponentName getComponentName() {
    return this.mComponentName;
  }
  
  public boolean mayLaunchUrl(Uri paramUri, Bundle paramBundle, List<Bundle> paramList) {
    try {
      return this.mService.mayLaunchUrl(this.mCallback, paramUri, paramBundle, paramList);
    } catch (RemoteException remoteException) {
      return false;
    } 
  }
  
  public boolean setActionButton(@NonNull Bitmap paramBitmap, @NonNull String paramString) {
    Bundle bundle2 = new Bundle();
    bundle2.putParcelable("android.support.customtabs.customaction.ICON", (Parcelable)paramBitmap);
    bundle2.putString("android.support.customtabs.customaction.DESCRIPTION", paramString);
    Bundle bundle1 = new Bundle();
    bundle1.putBundle("android.support.customtabs.extra.ACTION_BUTTON_BUNDLE", bundle2);
    try {
      return this.mService.updateVisuals(this.mCallback, bundle1);
    } catch (RemoteException remoteException) {
      return false;
    } 
  }
  
  public boolean setSecondaryToolbarViews(@Nullable RemoteViews paramRemoteViews, @Nullable int[] paramArrayOfint, @Nullable PendingIntent paramPendingIntent) {
    Bundle bundle = new Bundle();
    bundle.putParcelable("android.support.customtabs.extra.EXTRA_REMOTEVIEWS", (Parcelable)paramRemoteViews);
    bundle.putIntArray("android.support.customtabs.extra.EXTRA_REMOTEVIEWS_VIEW_IDS", paramArrayOfint);
    bundle.putParcelable("android.support.customtabs.extra.EXTRA_REMOTEVIEWS_PENDINGINTENT", (Parcelable)paramPendingIntent);
    try {
      return this.mService.updateVisuals(this.mCallback, bundle);
    } catch (RemoteException remoteException) {
      return false;
    } 
  }
  
  @Deprecated
  public boolean setToolbarItem(int paramInt, @NonNull Bitmap paramBitmap, @NonNull String paramString) {
    Bundle bundle2 = new Bundle();
    bundle2.putInt("android.support.customtabs.customaction.ID", paramInt);
    bundle2.putParcelable("android.support.customtabs.customaction.ICON", (Parcelable)paramBitmap);
    bundle2.putString("android.support.customtabs.customaction.DESCRIPTION", paramString);
    Bundle bundle1 = new Bundle();
    bundle1.putBundle("android.support.customtabs.extra.ACTION_BUTTON_BUNDLE", bundle2);
    try {
      return this.mService.updateVisuals(this.mCallback, bundle1);
    } catch (RemoteException remoteException) {
      return false;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\customtabs\CustomTabsSession.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */