package android.support.customtabs;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.content.ContextCompat;

public final class CustomTabsIntent {
  public static final String EXTRA_ACTION_BUTTON_BUNDLE = "android.support.customtabs.extra.ACTION_BUTTON_BUNDLE";
  
  public static final String EXTRA_CLOSE_BUTTON_ICON = "android.support.customtabs.extra.CLOSE_BUTTON_ICON";
  
  public static final String EXTRA_DEFAULT_SHARE_MENU_ITEM = "android.support.customtabs.extra.SHARE_MENU_ITEM";
  
  public static final String EXTRA_ENABLE_INSTANT_APPS = "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS";
  
  public static final String EXTRA_ENABLE_URLBAR_HIDING = "android.support.customtabs.extra.ENABLE_URLBAR_HIDING";
  
  public static final String EXTRA_EXIT_ANIMATION_BUNDLE = "android.support.customtabs.extra.EXIT_ANIMATION_BUNDLE";
  
  public static final String EXTRA_MENU_ITEMS = "android.support.customtabs.extra.MENU_ITEMS";
  
  public static final String EXTRA_REMOTEVIEWS = "android.support.customtabs.extra.EXTRA_REMOTEVIEWS";
  
  public static final String EXTRA_REMOTEVIEWS_CLICKED_ID = "android.support.customtabs.extra.EXTRA_REMOTEVIEWS_CLICKED_ID";
  
  public static final String EXTRA_REMOTEVIEWS_PENDINGINTENT = "android.support.customtabs.extra.EXTRA_REMOTEVIEWS_PENDINGINTENT";
  
  public static final String EXTRA_REMOTEVIEWS_VIEW_IDS = "android.support.customtabs.extra.EXTRA_REMOTEVIEWS_VIEW_IDS";
  
  public static final String EXTRA_SECONDARY_TOOLBAR_COLOR = "android.support.customtabs.extra.SECONDARY_TOOLBAR_COLOR";
  
  public static final String EXTRA_SESSION = "android.support.customtabs.extra.SESSION";
  
  public static final String EXTRA_TINT_ACTION_BUTTON = "android.support.customtabs.extra.TINT_ACTION_BUTTON";
  
  public static final String EXTRA_TITLE_VISIBILITY_STATE = "android.support.customtabs.extra.TITLE_VISIBILITY";
  
  public static final String EXTRA_TOOLBAR_COLOR = "android.support.customtabs.extra.TOOLBAR_COLOR";
  
  public static final String EXTRA_TOOLBAR_ITEMS = "android.support.customtabs.extra.TOOLBAR_ITEMS";
  
  private static final String EXTRA_USER_OPT_OUT_FROM_CUSTOM_TABS = "android.support.customtabs.extra.user_opt_out";
  
  public static final String KEY_DESCRIPTION = "android.support.customtabs.customaction.DESCRIPTION";
  
  public static final String KEY_ICON = "android.support.customtabs.customaction.ICON";
  
  public static final String KEY_ID = "android.support.customtabs.customaction.ID";
  
  public static final String KEY_MENU_ITEM_TITLE = "android.support.customtabs.customaction.MENU_ITEM_TITLE";
  
  public static final String KEY_PENDING_INTENT = "android.support.customtabs.customaction.PENDING_INTENT";
  
  private static final int MAX_TOOLBAR_ITEMS = 5;
  
  public static final int NO_TITLE = 0;
  
  public static final int SHOW_PAGE_TITLE = 1;
  
  public static final int TOOLBAR_ACTION_BUTTON_ID = 0;
  
  @NonNull
  public final Intent intent;
  
  @Nullable
  public final Bundle startAnimationBundle;
  
  private CustomTabsIntent(Intent paramIntent, Bundle paramBundle) {
    this.intent = paramIntent;
    this.startAnimationBundle = paramBundle;
  }
  
  public static int getMaxToolbarItems() {
    return 5;
  }
  
  public static Intent setAlwaysUseBrowserUI(Intent paramIntent) {
    Intent intent = paramIntent;
    if (paramIntent == null)
      intent = new Intent("android.intent.action.VIEW"); 
    intent.addFlags(268435456);
    intent.putExtra("android.support.customtabs.extra.user_opt_out", true);
    return intent;
  }
  
  public static boolean shouldAlwaysUseBrowserUI(Intent paramIntent) {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramIntent.getBooleanExtra("android.support.customtabs.extra.user_opt_out", false)) {
      bool1 = bool2;
      if ((paramIntent.getFlags() & 0x10000000) != 0)
        bool1 = true; 
    } 
    return bool1;
  }
  
  public void launchUrl(Context paramContext, Uri paramUri) {
    this.intent.setData(paramUri);
    ContextCompat.startActivity(paramContext, this.intent, this.startAnimationBundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\customtabs\CustomTabsIntent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */