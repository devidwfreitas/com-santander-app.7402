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

public class NotificationCompatKitKat$Builder implements NotificationBuilderWithActions, NotificationBuilderWithBuilderAccessor {
  private Notification.Builder b;
  
  private List<Bundle> mActionExtrasList = new ArrayList<Bundle>();
  
  private RemoteViews mBigContentView;
  
  private RemoteViews mContentView;
  
  private Bundle mExtras;
  
  public NotificationCompatKitKat$Builder(Context paramContext, Notification paramNotification, CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, RemoteViews paramRemoteViews1, int paramInt1, PendingIntent paramPendingIntent1, PendingIntent paramPendingIntent2, Bitmap paramBitmap, int paramInt2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, int paramInt4, CharSequence paramCharSequence4, boolean paramBoolean4, ArrayList<String> paramArrayList, Bundle paramBundle, String paramString1, boolean paramBoolean5, String paramString2, RemoteViews paramRemoteViews2, RemoteViews paramRemoteViews3) {
    Notification.Builder builder = (new Notification.Builder(paramContext)).setWhen(paramNotification.when).setShowWhen(paramBoolean2).setSmallIcon(paramNotification.icon, paramNotification.iconLevel).setContent(paramNotification.contentView).setTicker(paramNotification.tickerText, paramRemoteViews1).setSound(paramNotification.sound, paramNotification.audioStreamType).setVibrate(paramNotification.vibrate).setLights(paramNotification.ledARGB, paramNotification.ledOnMS, paramNotification.ledOffMS);
    if ((paramNotification.flags & 0x2) != 0) {
      paramBoolean2 = true;
    } else {
      paramBoolean2 = false;
    } 
    builder = builder.setOngoing(paramBoolean2);
    if ((paramNotification.flags & 0x8) != 0) {
      paramBoolean2 = true;
    } else {
      paramBoolean2 = false;
    } 
    builder = builder.setOnlyAlertOnce(paramBoolean2);
    if ((paramNotification.flags & 0x10) != 0) {
      paramBoolean2 = true;
    } else {
      paramBoolean2 = false;
    } 
    builder = builder.setAutoCancel(paramBoolean2).setDefaults(paramNotification.defaults).setContentTitle(paramCharSequence1).setContentText(paramCharSequence2).setSubText(paramCharSequence4).setContentInfo(paramCharSequence3).setContentIntent(paramPendingIntent1).setDeleteIntent(paramNotification.deleteIntent);
    if ((paramNotification.flags & 0x80) != 0) {
      paramBoolean2 = true;
    } else {
      paramBoolean2 = false;
    } 
    this.b = builder.setFullScreenIntent(paramPendingIntent2, paramBoolean2).setLargeIcon(paramBitmap).setNumber(paramInt1).setUsesChronometer(paramBoolean3).setPriority(paramInt4).setProgress(paramInt2, paramInt3, paramBoolean1);
    this.mExtras = new Bundle();
    if (paramBundle != null)
      this.mExtras.putAll(paramBundle); 
    if (paramArrayList != null && !paramArrayList.isEmpty())
      this.mExtras.putStringArray("android.people", paramArrayList.<String>toArray(new String[paramArrayList.size()])); 
    if (paramBoolean4)
      this.mExtras.putBoolean("android.support.localOnly", true); 
    if (paramString1 != null) {
      this.mExtras.putString("android.support.groupKey", paramString1);
      if (paramBoolean5) {
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
    SparseArray<Bundle> sparseArray = NotificationCompatJellybean.buildActionExtrasMap(this.mActionExtrasList);
    if (sparseArray != null)
      this.mExtras.putSparseParcelableArray("android.support.actionExtras", sparseArray); 
    this.b.setExtras(this.mExtras);
    Notification notification = this.b.build();
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompatKitKat$Builder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */