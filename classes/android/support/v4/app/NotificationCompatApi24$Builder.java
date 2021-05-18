package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.RemoteInput;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.util.ArrayList;

public class NotificationCompatApi24$Builder implements NotificationBuilderWithActions, NotificationBuilderWithBuilderAccessor {
  private Notification.Builder b;
  
  public NotificationCompatApi24$Builder(Context paramContext, Notification paramNotification1, CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, RemoteViews paramRemoteViews1, int paramInt1, PendingIntent paramPendingIntent1, PendingIntent paramPendingIntent2, Bitmap paramBitmap, int paramInt2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, int paramInt4, CharSequence paramCharSequence4, boolean paramBoolean4, String paramString1, ArrayList<String> paramArrayList, Bundle paramBundle, int paramInt5, int paramInt6, Notification paramNotification2, String paramString2, boolean paramBoolean5, String paramString3, CharSequence[] paramArrayOfCharSequence, RemoteViews paramRemoteViews2, RemoteViews paramRemoteViews3, RemoteViews paramRemoteViews4) {
    Notification.Builder builder = (new Notification.Builder(paramContext)).setWhen(paramNotification1.when).setShowWhen(paramBoolean2).setSmallIcon(paramNotification1.icon, paramNotification1.iconLevel).setContent(paramNotification1.contentView).setTicker(paramNotification1.tickerText, paramRemoteViews1).setSound(paramNotification1.sound, paramNotification1.audioStreamType).setVibrate(paramNotification1.vibrate).setLights(paramNotification1.ledARGB, paramNotification1.ledOnMS, paramNotification1.ledOffMS);
    if ((paramNotification1.flags & 0x2) != 0) {
      paramBoolean2 = true;
    } else {
      paramBoolean2 = false;
    } 
    builder = builder.setOngoing(paramBoolean2);
    if ((paramNotification1.flags & 0x8) != 0) {
      paramBoolean2 = true;
    } else {
      paramBoolean2 = false;
    } 
    builder = builder.setOnlyAlertOnce(paramBoolean2);
    if ((paramNotification1.flags & 0x10) != 0) {
      paramBoolean2 = true;
    } else {
      paramBoolean2 = false;
    } 
    builder = builder.setAutoCancel(paramBoolean2).setDefaults(paramNotification1.defaults).setContentTitle(paramCharSequence1).setContentText(paramCharSequence2).setSubText(paramCharSequence4).setContentInfo(paramCharSequence3).setContentIntent(paramPendingIntent1).setDeleteIntent(paramNotification1.deleteIntent);
    if ((paramNotification1.flags & 0x80) != 0) {
      paramBoolean2 = true;
    } else {
      paramBoolean2 = false;
    } 
    this.b = builder.setFullScreenIntent(paramPendingIntent2, paramBoolean2).setLargeIcon(paramBitmap).setNumber(paramInt1).setUsesChronometer(paramBoolean3).setPriority(paramInt4).setProgress(paramInt2, paramInt3, paramBoolean1).setLocalOnly(paramBoolean4).setExtras(paramBundle).setGroup(paramString2).setGroupSummary(paramBoolean5).setSortKey(paramString3).setCategory(paramString1).setColor(paramInt5).setVisibility(paramInt6).setPublicVersion(paramNotification2).setRemoteInputHistory(paramArrayOfCharSequence);
    if (paramRemoteViews2 != null)
      this.b.setCustomContentView(paramRemoteViews2); 
    if (paramRemoteViews3 != null)
      this.b.setCustomBigContentView(paramRemoteViews3); 
    if (paramRemoteViews4 != null)
      this.b.setCustomHeadsUpContentView(paramRemoteViews4); 
    for (String str : paramArrayList)
      this.b.addPerson(str); 
  }
  
  public void addAction(NotificationCompatBase$Action paramNotificationCompatBase$Action) {
    Bundle bundle;
    Notification.Action.Builder builder = new Notification.Action.Builder(paramNotificationCompatBase$Action.getIcon(), paramNotificationCompatBase$Action.getTitle(), paramNotificationCompatBase$Action.getActionIntent());
    if (paramNotificationCompatBase$Action.getRemoteInputs() != null) {
      RemoteInput[] arrayOfRemoteInput = RemoteInputCompatApi20.fromCompat(paramNotificationCompatBase$Action.getRemoteInputs());
      int j = arrayOfRemoteInput.length;
      for (int i = 0; i < j; i++)
        builder.addRemoteInput(arrayOfRemoteInput[i]); 
    } 
    if (paramNotificationCompatBase$Action.getExtras() != null) {
      bundle = new Bundle(paramNotificationCompatBase$Action.getExtras());
    } else {
      bundle = new Bundle();
    } 
    bundle.putBoolean("android.support.allowGeneratedReplies", paramNotificationCompatBase$Action.getAllowGeneratedReplies());
    builder.addExtras(bundle);
    builder.setAllowGeneratedReplies(paramNotificationCompatBase$Action.getAllowGeneratedReplies());
    this.b.addAction(builder.build());
  }
  
  public Notification build() {
    return this.b.build();
  }
  
  public Notification.Builder getBuilder() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompatApi24$Builder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */