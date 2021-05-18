package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class NotificationCompat$WearableExtender implements NotificationCompat$Extender {
  private static final int DEFAULT_CONTENT_ICON_GRAVITY = 8388613;
  
  private static final int DEFAULT_FLAGS = 1;
  
  private static final int DEFAULT_GRAVITY = 80;
  
  private static final String EXTRA_WEARABLE_EXTENSIONS = "android.wearable.EXTENSIONS";
  
  private static final int FLAG_BIG_PICTURE_AMBIENT = 32;
  
  private static final int FLAG_CONTENT_INTENT_AVAILABLE_OFFLINE = 1;
  
  private static final int FLAG_HINT_AVOID_BACKGROUND_CLIPPING = 16;
  
  private static final int FLAG_HINT_CONTENT_INTENT_LAUNCHES_ACTIVITY = 64;
  
  private static final int FLAG_HINT_HIDE_ICON = 2;
  
  private static final int FLAG_HINT_SHOW_BACKGROUND_ONLY = 4;
  
  private static final int FLAG_START_SCROLL_BOTTOM = 8;
  
  private static final String KEY_ACTIONS = "actions";
  
  private static final String KEY_BACKGROUND = "background";
  
  private static final String KEY_BRIDGE_TAG = "bridgeTag";
  
  private static final String KEY_CONTENT_ACTION_INDEX = "contentActionIndex";
  
  private static final String KEY_CONTENT_ICON = "contentIcon";
  
  private static final String KEY_CONTENT_ICON_GRAVITY = "contentIconGravity";
  
  private static final String KEY_CUSTOM_CONTENT_HEIGHT = "customContentHeight";
  
  private static final String KEY_CUSTOM_SIZE_PRESET = "customSizePreset";
  
  private static final String KEY_DISMISSAL_ID = "dismissalId";
  
  private static final String KEY_DISPLAY_INTENT = "displayIntent";
  
  private static final String KEY_FLAGS = "flags";
  
  private static final String KEY_GRAVITY = "gravity";
  
  private static final String KEY_HINT_SCREEN_TIMEOUT = "hintScreenTimeout";
  
  private static final String KEY_PAGES = "pages";
  
  public static final int SCREEN_TIMEOUT_LONG = -1;
  
  public static final int SCREEN_TIMEOUT_SHORT = 0;
  
  public static final int SIZE_DEFAULT = 0;
  
  public static final int SIZE_FULL_SCREEN = 5;
  
  public static final int SIZE_LARGE = 4;
  
  public static final int SIZE_MEDIUM = 3;
  
  public static final int SIZE_SMALL = 2;
  
  public static final int SIZE_XSMALL = 1;
  
  public static final int UNSET_ACTION_INDEX = -1;
  
  private ArrayList<NotificationCompat$Action> mActions = new ArrayList<NotificationCompat$Action>();
  
  private Bitmap mBackground;
  
  private String mBridgeTag;
  
  private int mContentActionIndex = -1;
  
  private int mContentIcon;
  
  private int mContentIconGravity = 8388613;
  
  private int mCustomContentHeight;
  
  private int mCustomSizePreset = 0;
  
  private String mDismissalId;
  
  private PendingIntent mDisplayIntent;
  
  private int mFlags = 1;
  
  private int mGravity = 80;
  
  private int mHintScreenTimeout;
  
  private ArrayList<Notification> mPages = new ArrayList<Notification>();
  
  public NotificationCompat$WearableExtender() {}
  
  public NotificationCompat$WearableExtender(Notification paramNotification) {
    Bundle bundle = NotificationCompat.getExtras(paramNotification);
    if (bundle != null) {
      bundle = bundle.getBundle("android.wearable.EXTENSIONS");
    } else {
      bundle = null;
    } 
    if (bundle != null) {
      NotificationCompat$Action[] arrayOfNotificationCompat$Action = NotificationCompat.IMPL.getActionsFromParcelableArrayList(bundle.getParcelableArrayList("actions"));
      if (arrayOfNotificationCompat$Action != null)
        Collections.addAll(this.mActions, arrayOfNotificationCompat$Action); 
      this.mFlags = bundle.getInt("flags", 1);
      this.mDisplayIntent = (PendingIntent)bundle.getParcelable("displayIntent");
      Notification[] arrayOfNotification = NotificationCompat.getNotificationArrayFromBundle(bundle, "pages");
      if (arrayOfNotification != null)
        Collections.addAll(this.mPages, arrayOfNotification); 
      this.mBackground = (Bitmap)bundle.getParcelable("background");
      this.mContentIcon = bundle.getInt("contentIcon");
      this.mContentIconGravity = bundle.getInt("contentIconGravity", 8388613);
      this.mContentActionIndex = bundle.getInt("contentActionIndex", -1);
      this.mCustomSizePreset = bundle.getInt("customSizePreset", 0);
      this.mCustomContentHeight = bundle.getInt("customContentHeight");
      this.mGravity = bundle.getInt("gravity", 80);
      this.mHintScreenTimeout = bundle.getInt("hintScreenTimeout");
      this.mDismissalId = bundle.getString("dismissalId");
      this.mBridgeTag = bundle.getString("bridgeTag");
    } 
  }
  
  private void setFlag(int paramInt, boolean paramBoolean) {
    if (paramBoolean) {
      this.mFlags |= paramInt;
      return;
    } 
    this.mFlags &= paramInt ^ 0xFFFFFFFF;
  }
  
  public NotificationCompat$WearableExtender addAction(NotificationCompat$Action paramNotificationCompat$Action) {
    this.mActions.add(paramNotificationCompat$Action);
    return this;
  }
  
  public NotificationCompat$WearableExtender addActions(List<NotificationCompat$Action> paramList) {
    this.mActions.addAll(paramList);
    return this;
  }
  
  public NotificationCompat$WearableExtender addPage(Notification paramNotification) {
    this.mPages.add(paramNotification);
    return this;
  }
  
  public NotificationCompat$WearableExtender addPages(List<Notification> paramList) {
    this.mPages.addAll(paramList);
    return this;
  }
  
  public NotificationCompat$WearableExtender clearActions() {
    this.mActions.clear();
    return this;
  }
  
  public NotificationCompat$WearableExtender clearPages() {
    this.mPages.clear();
    return this;
  }
  
  public NotificationCompat$WearableExtender clone() {
    NotificationCompat$WearableExtender notificationCompat$WearableExtender = new NotificationCompat$WearableExtender();
    notificationCompat$WearableExtender.mActions = new ArrayList<NotificationCompat$Action>(this.mActions);
    notificationCompat$WearableExtender.mFlags = this.mFlags;
    notificationCompat$WearableExtender.mDisplayIntent = this.mDisplayIntent;
    notificationCompat$WearableExtender.mPages = new ArrayList<Notification>(this.mPages);
    notificationCompat$WearableExtender.mBackground = this.mBackground;
    notificationCompat$WearableExtender.mContentIcon = this.mContentIcon;
    notificationCompat$WearableExtender.mContentIconGravity = this.mContentIconGravity;
    notificationCompat$WearableExtender.mContentActionIndex = this.mContentActionIndex;
    notificationCompat$WearableExtender.mCustomSizePreset = this.mCustomSizePreset;
    notificationCompat$WearableExtender.mCustomContentHeight = this.mCustomContentHeight;
    notificationCompat$WearableExtender.mGravity = this.mGravity;
    notificationCompat$WearableExtender.mHintScreenTimeout = this.mHintScreenTimeout;
    notificationCompat$WearableExtender.mDismissalId = this.mDismissalId;
    notificationCompat$WearableExtender.mBridgeTag = this.mBridgeTag;
    return notificationCompat$WearableExtender;
  }
  
  public NotificationCompat$Builder extend(NotificationCompat$Builder paramNotificationCompat$Builder) {
    Bundle bundle = new Bundle();
    if (!this.mActions.isEmpty())
      bundle.putParcelableArrayList("actions", NotificationCompat.IMPL.getParcelableArrayListForActions(this.mActions.<NotificationCompat$Action>toArray(new NotificationCompat$Action[this.mActions.size()]))); 
    if (this.mFlags != 1)
      bundle.putInt("flags", this.mFlags); 
    if (this.mDisplayIntent != null)
      bundle.putParcelable("displayIntent", (Parcelable)this.mDisplayIntent); 
    if (!this.mPages.isEmpty())
      bundle.putParcelableArray("pages", (Parcelable[])this.mPages.toArray((Object[])new Notification[this.mPages.size()])); 
    if (this.mBackground != null)
      bundle.putParcelable("background", (Parcelable)this.mBackground); 
    if (this.mContentIcon != 0)
      bundle.putInt("contentIcon", this.mContentIcon); 
    if (this.mContentIconGravity != 8388613)
      bundle.putInt("contentIconGravity", this.mContentIconGravity); 
    if (this.mContentActionIndex != -1)
      bundle.putInt("contentActionIndex", this.mContentActionIndex); 
    if (this.mCustomSizePreset != 0)
      bundle.putInt("customSizePreset", this.mCustomSizePreset); 
    if (this.mCustomContentHeight != 0)
      bundle.putInt("customContentHeight", this.mCustomContentHeight); 
    if (this.mGravity != 80)
      bundle.putInt("gravity", this.mGravity); 
    if (this.mHintScreenTimeout != 0)
      bundle.putInt("hintScreenTimeout", this.mHintScreenTimeout); 
    if (this.mDismissalId != null)
      bundle.putString("dismissalId", this.mDismissalId); 
    if (this.mBridgeTag != null)
      bundle.putString("bridgeTag", this.mBridgeTag); 
    paramNotificationCompat$Builder.getExtras().putBundle("android.wearable.EXTENSIONS", bundle);
    return paramNotificationCompat$Builder;
  }
  
  public List<NotificationCompat$Action> getActions() {
    return this.mActions;
  }
  
  public Bitmap getBackground() {
    return this.mBackground;
  }
  
  public String getBridgeTag() {
    return this.mBridgeTag;
  }
  
  public int getContentAction() {
    return this.mContentActionIndex;
  }
  
  public int getContentIcon() {
    return this.mContentIcon;
  }
  
  public int getContentIconGravity() {
    return this.mContentIconGravity;
  }
  
  public boolean getContentIntentAvailableOffline() {
    return ((this.mFlags & 0x1) != 0);
  }
  
  public int getCustomContentHeight() {
    return this.mCustomContentHeight;
  }
  
  public int getCustomSizePreset() {
    return this.mCustomSizePreset;
  }
  
  public String getDismissalId() {
    return this.mDismissalId;
  }
  
  public PendingIntent getDisplayIntent() {
    return this.mDisplayIntent;
  }
  
  public int getGravity() {
    return this.mGravity;
  }
  
  public boolean getHintAmbientBigPicture() {
    return ((this.mFlags & 0x20) != 0);
  }
  
  public boolean getHintAvoidBackgroundClipping() {
    return ((this.mFlags & 0x10) != 0);
  }
  
  public boolean getHintContentIntentLaunchesActivity() {
    return ((this.mFlags & 0x40) != 0);
  }
  
  public boolean getHintHideIcon() {
    return ((this.mFlags & 0x2) != 0);
  }
  
  public int getHintScreenTimeout() {
    return this.mHintScreenTimeout;
  }
  
  public boolean getHintShowBackgroundOnly() {
    return ((this.mFlags & 0x4) != 0);
  }
  
  public List<Notification> getPages() {
    return this.mPages;
  }
  
  public boolean getStartScrollBottom() {
    return ((this.mFlags & 0x8) != 0);
  }
  
  public NotificationCompat$WearableExtender setBackground(Bitmap paramBitmap) {
    this.mBackground = paramBitmap;
    return this;
  }
  
  public NotificationCompat$WearableExtender setBridgeTag(String paramString) {
    this.mBridgeTag = paramString;
    return this;
  }
  
  public NotificationCompat$WearableExtender setContentAction(int paramInt) {
    this.mContentActionIndex = paramInt;
    return this;
  }
  
  public NotificationCompat$WearableExtender setContentIcon(int paramInt) {
    this.mContentIcon = paramInt;
    return this;
  }
  
  public NotificationCompat$WearableExtender setContentIconGravity(int paramInt) {
    this.mContentIconGravity = paramInt;
    return this;
  }
  
  public NotificationCompat$WearableExtender setContentIntentAvailableOffline(boolean paramBoolean) {
    setFlag(1, paramBoolean);
    return this;
  }
  
  public NotificationCompat$WearableExtender setCustomContentHeight(int paramInt) {
    this.mCustomContentHeight = paramInt;
    return this;
  }
  
  public NotificationCompat$WearableExtender setCustomSizePreset(int paramInt) {
    this.mCustomSizePreset = paramInt;
    return this;
  }
  
  public NotificationCompat$WearableExtender setDismissalId(String paramString) {
    this.mDismissalId = paramString;
    return this;
  }
  
  public NotificationCompat$WearableExtender setDisplayIntent(PendingIntent paramPendingIntent) {
    this.mDisplayIntent = paramPendingIntent;
    return this;
  }
  
  public NotificationCompat$WearableExtender setGravity(int paramInt) {
    this.mGravity = paramInt;
    return this;
  }
  
  public NotificationCompat$WearableExtender setHintAmbientBigPicture(boolean paramBoolean) {
    setFlag(32, paramBoolean);
    return this;
  }
  
  public NotificationCompat$WearableExtender setHintAvoidBackgroundClipping(boolean paramBoolean) {
    setFlag(16, paramBoolean);
    return this;
  }
  
  public NotificationCompat$WearableExtender setHintContentIntentLaunchesActivity(boolean paramBoolean) {
    setFlag(64, paramBoolean);
    return this;
  }
  
  public NotificationCompat$WearableExtender setHintHideIcon(boolean paramBoolean) {
    setFlag(2, paramBoolean);
    return this;
  }
  
  public NotificationCompat$WearableExtender setHintScreenTimeout(int paramInt) {
    this.mHintScreenTimeout = paramInt;
    return this;
  }
  
  public NotificationCompat$WearableExtender setHintShowBackgroundOnly(boolean paramBoolean) {
    setFlag(4, paramBoolean);
    return this;
  }
  
  public NotificationCompat$WearableExtender setStartScrollBottom(boolean paramBoolean) {
    setFlag(8, paramBoolean);
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompat$WearableExtender.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */