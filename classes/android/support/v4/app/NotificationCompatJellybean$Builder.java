package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.SparseArray;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.List;

public class NotificationCompatJellybean$Builder implements NotificationBuilderWithActions, NotificationBuilderWithBuilderAccessor {
  private Notification.Builder b;
  
  private List<Bundle> mActionExtrasList;
  
  private RemoteViews mBigContentView;
  
  private RemoteViews mContentView;
  
  private final Bundle mExtras;
  
  public NotificationCompatJellybean$Builder(Context paramContext, Notification paramNotification, CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, RemoteViews paramRemoteViews1, int paramInt1, PendingIntent paramPendingIntent1, PendingIntent paramPendingIntent2, Bitmap paramBitmap, int paramInt2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2, int paramInt4, CharSequence paramCharSequence4, boolean paramBoolean3, Bundle paramBundle, String paramString1, boolean paramBoolean4, String paramString2, RemoteViews paramRemoteViews2, RemoteViews paramRemoteViews3) {
    boolean bool;
    this.mActionExtrasList = new ArrayList<Bundle>();
    Notification.Builder builder = (new Notification.Builder(paramContext)).setWhen(paramNotification.when).setSmallIcon(paramNotification.icon, paramNotification.iconLevel).setContent(paramNotification.contentView).setTicker(paramNotification.tickerText, paramRemoteViews1).setSound(paramNotification.sound, paramNotification.audioStreamType).setVibrate(paramNotification.vibrate).setLights(paramNotification.ledARGB, paramNotification.ledOnMS, paramNotification.ledOffMS);
    if ((paramNotification.flags & 0x2) != 0) {
      bool = true;
    } else {
      bool = false;
    } 
    builder = builder.setOngoing(bool);
    if ((paramNotification.flags & 0x8) != 0) {
      bool = true;
    } else {
      bool = false;
    } 
    builder = builder.setOnlyAlertOnce(bool);
    if ((paramNotification.flags & 0x10) != 0) {
      bool = true;
    } else {
      bool = false;
    } 
    builder = builder.setAutoCancel(bool).setDefaults(paramNotification.defaults).setContentTitle(paramCharSequence1).setContentText(paramCharSequence2).setSubText(paramCharSequence4).setContentInfo(paramCharSequence3).setContentIntent(paramPendingIntent1).setDeleteIntent(paramNotification.deleteIntent);
    if ((paramNotification.flags & 0x80) != 0) {
      bool = true;
    } else {
      bool = false;
    } 
    this.b = builder.setFullScreenIntent(paramPendingIntent2, bool).setLargeIcon(paramBitmap).setNumber(paramInt1).setUsesChronometer(paramBoolean2).setPriority(paramInt4).setProgress(paramInt2, paramInt3, paramBoolean1);
    this.mExtras = new Bundle();
    if (paramBundle != null)
      this.mExtras.putAll(paramBundle); 
    if (paramBoolean3)
      this.mExtras.putBoolean("android.support.localOnly", true); 
    if (paramString1 != null) {
      this.mExtras.putString("android.support.groupKey", paramString1);
      if (paramBoolean4) {
        this.mExtras.putBoolean("android.support.isGroupSummary", true);
      } else {
        this.mExtras.putBoolean("android.support.useSideChannel", true);
      } 
    } 
    if (paramString2 != null)
      this.mExtras.putString("android.support.sortKey", paramString2); 
    this.mContentView = paramRemoteViews2;
    this.mBigContentView = paramRemoteViews3;
  }
  
  public void addAction(NotificationCompatBase$Action paramNotificationCompatBase$Action) {
    this.mActionExtrasList.add(NotificationCompatJellybean.writeActionAndGetExtras(this.b, paramNotificationCompatBase$Action));
  }
  
  public Notification build() {
    Notification notification = this.b.build();
    Bundle bundle1 = NotificationCompatJellybean.getExtras(notification);
    Bundle bundle2 = new Bundle(this.mExtras);
    for (String str : this.mExtras.keySet()) {
      if (bundle1.containsKey(str))
        bundle2.remove(str); 
    } 
    bundle1.putAll(bundle2);
    SparseArray<Bundle> sparseArray = NotificationCompatJellybean.buildActionExtrasMap(this.mActionExtrasList);
    if (sparseArray != null)
      NotificationCompatJellybean.getExtras(notification).putSparseParcelableArray("android.support.actionExtras", sparseArray); 
    if (this.mContentView != null)
      notification.contentView = this.mContentView; 
    if (this.mBigContentView != null)
      notification.bigContentView = this.mBigContentView; 
    return notification;
  }
  
  public Notification.Builder getBuilder() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompatJellybean$Builder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */