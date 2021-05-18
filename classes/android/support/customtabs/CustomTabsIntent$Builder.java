package android.support.customtabs;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.support.annotation.AnimRes;
import android.support.annotation.ColorInt;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.ActivityOptionsCompat;
import android.support.v4.app.BundleCompat;
import android.widget.RemoteViews;
import java.util.ArrayList;

public final class CustomTabsIntent$Builder {
  private ArrayList<Bundle> mActionButtons;
  
  private boolean mInstantAppsEnabled;
  
  private final Intent mIntent;
  
  private ArrayList<Bundle> mMenuItems;
  
  private Bundle mStartAnimationBundle;
  
  public CustomTabsIntent$Builder() {
    this(null);
  }
  
  public CustomTabsIntent$Builder(@Nullable CustomTabsSession paramCustomTabsSession) {
    IBinder iBinder;
    this.mIntent = new Intent("android.intent.action.VIEW");
    this.mMenuItems = null;
    this.mStartAnimationBundle = null;
    this.mActionButtons = null;
    this.mInstantAppsEnabled = true;
    if (paramCustomTabsSession != null)
      this.mIntent.setPackage(paramCustomTabsSession.getComponentName().getPackageName()); 
    Bundle bundle = new Bundle();
    if (paramCustomTabsSession == null) {
      paramCustomTabsSession = customTabsSession;
    } else {
      iBinder = paramCustomTabsSession.getBinder();
    } 
    BundleCompat.putBinder(bundle, "android.support.customtabs.extra.SESSION", iBinder);
    this.mIntent.putExtras(bundle);
  }
  
  public CustomTabsIntent$Builder addDefaultShareMenuItem() {
    this.mIntent.putExtra("android.support.customtabs.extra.SHARE_MENU_ITEM", true);
    return this;
  }
  
  public CustomTabsIntent$Builder addMenuItem(@NonNull String paramString, @NonNull PendingIntent paramPendingIntent) {
    if (this.mMenuItems == null)
      this.mMenuItems = new ArrayList<Bundle>(); 
    Bundle bundle = new Bundle();
    bundle.putString("android.support.customtabs.customaction.MENU_ITEM_TITLE", paramString);
    bundle.putParcelable("android.support.customtabs.customaction.PENDING_INTENT", (Parcelable)paramPendingIntent);
    this.mMenuItems.add(bundle);
    return this;
  }
  
  @Deprecated
  public CustomTabsIntent$Builder addToolbarItem(int paramInt, @NonNull Bitmap paramBitmap, @NonNull String paramString, PendingIntent paramPendingIntent) {
    if (this.mActionButtons == null)
      this.mActionButtons = new ArrayList<Bundle>(); 
    if (this.mActionButtons.size() >= 5)
      throw new IllegalStateException("Exceeded maximum toolbar item count of 5"); 
    Bundle bundle = new Bundle();
    bundle.putInt("android.support.customtabs.customaction.ID", paramInt);
    bundle.putParcelable("android.support.customtabs.customaction.ICON", (Parcelable)paramBitmap);
    bundle.putString("android.support.customtabs.customaction.DESCRIPTION", paramString);
    bundle.putParcelable("android.support.customtabs.customaction.PENDING_INTENT", (Parcelable)paramPendingIntent);
    this.mActionButtons.add(bundle);
    return this;
  }
  
  public CustomTabsIntent build() {
    if (this.mMenuItems != null)
      this.mIntent.putParcelableArrayListExtra("android.support.customtabs.extra.MENU_ITEMS", this.mMenuItems); 
    if (this.mActionButtons != null)
      this.mIntent.putParcelableArrayListExtra("android.support.customtabs.extra.TOOLBAR_ITEMS", this.mActionButtons); 
    this.mIntent.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", this.mInstantAppsEnabled);
    return new CustomTabsIntent(this.mIntent, this.mStartAnimationBundle, null);
  }
  
  public CustomTabsIntent$Builder enableUrlBarHiding() {
    this.mIntent.putExtra("android.support.customtabs.extra.ENABLE_URLBAR_HIDING", true);
    return this;
  }
  
  public CustomTabsIntent$Builder setActionButton(@NonNull Bitmap paramBitmap, @NonNull String paramString, @NonNull PendingIntent paramPendingIntent) {
    return setActionButton(paramBitmap, paramString, paramPendingIntent, false);
  }
  
  public CustomTabsIntent$Builder setActionButton(@NonNull Bitmap paramBitmap, @NonNull String paramString, @NonNull PendingIntent paramPendingIntent, boolean paramBoolean) {
    Bundle bundle = new Bundle();
    bundle.putInt("android.support.customtabs.customaction.ID", 0);
    bundle.putParcelable("android.support.customtabs.customaction.ICON", (Parcelable)paramBitmap);
    bundle.putString("android.support.customtabs.customaction.DESCRIPTION", paramString);
    bundle.putParcelable("android.support.customtabs.customaction.PENDING_INTENT", (Parcelable)paramPendingIntent);
    this.mIntent.putExtra("android.support.customtabs.extra.ACTION_BUTTON_BUNDLE", bundle);
    this.mIntent.putExtra("android.support.customtabs.extra.TINT_ACTION_BUTTON", paramBoolean);
    return this;
  }
  
  public CustomTabsIntent$Builder setCloseButtonIcon(@NonNull Bitmap paramBitmap) {
    this.mIntent.putExtra("android.support.customtabs.extra.CLOSE_BUTTON_ICON", (Parcelable)paramBitmap);
    return this;
  }
  
  public CustomTabsIntent$Builder setExitAnimations(@NonNull Context paramContext, @AnimRes int paramInt1, @AnimRes int paramInt2) {
    Bundle bundle = ActivityOptionsCompat.makeCustomAnimation(paramContext, paramInt1, paramInt2).toBundle();
    this.mIntent.putExtra("android.support.customtabs.extra.EXIT_ANIMATION_BUNDLE", bundle);
    return this;
  }
  
  public CustomTabsIntent$Builder setInstantAppsEnabled(boolean paramBoolean) {
    this.mInstantAppsEnabled = paramBoolean;
    return this;
  }
  
  public CustomTabsIntent$Builder setSecondaryToolbarColor(@ColorInt int paramInt) {
    this.mIntent.putExtra("android.support.customtabs.extra.SECONDARY_TOOLBAR_COLOR", paramInt);
    return this;
  }
  
  public CustomTabsIntent$Builder setSecondaryToolbarViews(@NonNull RemoteViews paramRemoteViews, @Nullable int[] paramArrayOfint, @Nullable PendingIntent paramPendingIntent) {
    this.mIntent.putExtra("android.support.customtabs.extra.EXTRA_REMOTEVIEWS", (Parcelable)paramRemoteViews);
    this.mIntent.putExtra("android.support.customtabs.extra.EXTRA_REMOTEVIEWS_VIEW_IDS", paramArrayOfint);
    this.mIntent.putExtra("android.support.customtabs.extra.EXTRA_REMOTEVIEWS_PENDINGINTENT", (Parcelable)paramPendingIntent);
    return this;
  }
  
  public CustomTabsIntent$Builder setShowTitle(boolean paramBoolean) {
    Intent intent = this.mIntent;
    if (paramBoolean) {
      boolean bool1 = true;
      intent.putExtra("android.support.customtabs.extra.TITLE_VISIBILITY", bool1);
      return this;
    } 
    boolean bool = false;
    intent.putExtra("android.support.customtabs.extra.TITLE_VISIBILITY", bool);
    return this;
  }
  
  public CustomTabsIntent$Builder setStartAnimations(@NonNull Context paramContext, @AnimRes int paramInt1, @AnimRes int paramInt2) {
    this.mStartAnimationBundle = ActivityOptionsCompat.makeCustomAnimation(paramContext, paramInt1, paramInt2).toBundle();
    return this;
  }
  
  public CustomTabsIntent$Builder setToolbarColor(@ColorInt int paramInt) {
    this.mIntent.putExtra("android.support.customtabs.extra.TOOLBAR_COLOR", paramInt);
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\customtabs\CustomTabsIntent$Builder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */