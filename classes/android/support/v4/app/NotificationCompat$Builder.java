package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.ColorInt;
import android.support.annotation.RestrictTo;
import android.widget.RemoteViews;
import java.util.ArrayList;

public class NotificationCompat$Builder {
  private static final int MAX_CHARSEQUENCE_LENGTH = 5120;
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public ArrayList<NotificationCompat$Action> mActions = new ArrayList<NotificationCompat$Action>();
  
  RemoteViews mBigContentView;
  
  String mCategory;
  
  int mColor = 0;
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public CharSequence mContentInfo;
  
  PendingIntent mContentIntent;
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public CharSequence mContentText;
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public CharSequence mContentTitle;
  
  RemoteViews mContentView;
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public Context mContext;
  
  Bundle mExtras;
  
  PendingIntent mFullScreenIntent;
  
  String mGroupKey;
  
  boolean mGroupSummary;
  
  RemoteViews mHeadsUpContentView;
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public Bitmap mLargeIcon;
  
  boolean mLocalOnly = false;
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public Notification mNotification = new Notification();
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public int mNumber;
  
  public ArrayList<String> mPeople;
  
  int mPriority;
  
  int mProgress;
  
  boolean mProgressIndeterminate;
  
  int mProgressMax;
  
  Notification mPublicVersion;
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public CharSequence[] mRemoteInputHistory;
  
  boolean mShowWhen = true;
  
  String mSortKey;
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public NotificationCompat$Style mStyle;
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public CharSequence mSubText;
  
  RemoteViews mTickerView;
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public boolean mUseChronometer;
  
  int mVisibility = 0;
  
  public NotificationCompat$Builder(Context paramContext) {
    this.mContext = paramContext;
    this.mNotification.when = System.currentTimeMillis();
    this.mNotification.audioStreamType = -1;
    this.mPriority = 0;
    this.mPeople = new ArrayList<String>();
  }
  
  protected static CharSequence limitCharSequenceLength(CharSequence paramCharSequence) {
    return (paramCharSequence != null && paramCharSequence.length() > 5120) ? paramCharSequence.subSequence(0, 5120) : paramCharSequence;
  }
  
  private void setFlag(int paramInt, boolean paramBoolean) {
    if (paramBoolean) {
      Notification notification1 = this.mNotification;
      notification1.flags |= paramInt;
      return;
    } 
    Notification notification = this.mNotification;
    notification.flags &= paramInt ^ 0xFFFFFFFF;
  }
  
  public NotificationCompat$Builder addAction(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent) {
    this.mActions.add(new NotificationCompat$Action(paramInt, paramCharSequence, paramPendingIntent));
    return this;
  }
  
  public NotificationCompat$Builder addAction(NotificationCompat$Action paramNotificationCompat$Action) {
    this.mActions.add(paramNotificationCompat$Action);
    return this;
  }
  
  public NotificationCompat$Builder addExtras(Bundle paramBundle) {
    if (paramBundle != null) {
      if (this.mExtras == null) {
        this.mExtras = new Bundle(paramBundle);
        return this;
      } 
    } else {
      return this;
    } 
    this.mExtras.putAll(paramBundle);
    return this;
  }
  
  public NotificationCompat$Builder addPerson(String paramString) {
    this.mPeople.add(paramString);
    return this;
  }
  
  public Notification build() {
    return NotificationCompat.IMPL.build(this, getExtender());
  }
  
  public NotificationCompat$Builder extend(NotificationCompat$Extender paramNotificationCompat$Extender) {
    paramNotificationCompat$Extender.extend(this);
    return this;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public RemoteViews getBigContentView() {
    return this.mBigContentView;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public int getColor() {
    return this.mColor;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public RemoteViews getContentView() {
    return this.mContentView;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public NotificationCompat$BuilderExtender getExtender() {
    return new NotificationCompat$BuilderExtender();
  }
  
  public Bundle getExtras() {
    if (this.mExtras == null)
      this.mExtras = new Bundle(); 
    return this.mExtras;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public RemoteViews getHeadsUpContentView() {
    return this.mHeadsUpContentView;
  }
  
  @Deprecated
  public Notification getNotification() {
    return build();
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public int getPriority() {
    return this.mPriority;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public long getWhenIfShowing() {
    return this.mShowWhen ? this.mNotification.when : 0L;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public CharSequence resolveText() {
    return this.mContentText;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public CharSequence resolveTitle() {
    return this.mContentTitle;
  }
  
  public NotificationCompat$Builder setAutoCancel(boolean paramBoolean) {
    setFlag(16, paramBoolean);
    return this;
  }
  
  public NotificationCompat$Builder setCategory(String paramString) {
    this.mCategory = paramString;
    return this;
  }
  
  public NotificationCompat$Builder setColor(@ColorInt int paramInt) {
    this.mColor = paramInt;
    return this;
  }
  
  public NotificationCompat$Builder setContent(RemoteViews paramRemoteViews) {
    this.mNotification.contentView = paramRemoteViews;
    return this;
  }
  
  public NotificationCompat$Builder setContentInfo(CharSequence paramCharSequence) {
    this.mContentInfo = limitCharSequenceLength(paramCharSequence);
    return this;
  }
  
  public NotificationCompat$Builder setContentIntent(PendingIntent paramPendingIntent) {
    this.mContentIntent = paramPendingIntent;
    return this;
  }
  
  public NotificationCompat$Builder setContentText(CharSequence paramCharSequence) {
    this.mContentText = limitCharSequenceLength(paramCharSequence);
    return this;
  }
  
  public NotificationCompat$Builder setContentTitle(CharSequence paramCharSequence) {
    this.mContentTitle = limitCharSequenceLength(paramCharSequence);
    return this;
  }
  
  public NotificationCompat$Builder setCustomBigContentView(RemoteViews paramRemoteViews) {
    this.mBigContentView = paramRemoteViews;
    return this;
  }
  
  public NotificationCompat$Builder setCustomContentView(RemoteViews paramRemoteViews) {
    this.mContentView = paramRemoteViews;
    return this;
  }
  
  public NotificationCompat$Builder setCustomHeadsUpContentView(RemoteViews paramRemoteViews) {
    this.mHeadsUpContentView = paramRemoteViews;
    return this;
  }
  
  public NotificationCompat$Builder setDefaults(int paramInt) {
    this.mNotification.defaults = paramInt;
    if ((paramInt & 0x4) != 0) {
      Notification notification = this.mNotification;
      notification.flags |= 0x1;
    } 
    return this;
  }
  
  public NotificationCompat$Builder setDeleteIntent(PendingIntent paramPendingIntent) {
    this.mNotification.deleteIntent = paramPendingIntent;
    return this;
  }
  
  public NotificationCompat$Builder setExtras(Bundle paramBundle) {
    this.mExtras = paramBundle;
    return this;
  }
  
  public NotificationCompat$Builder setFullScreenIntent(PendingIntent paramPendingIntent, boolean paramBoolean) {
    this.mFullScreenIntent = paramPendingIntent;
    setFlag(128, paramBoolean);
    return this;
  }
  
  public NotificationCompat$Builder setGroup(String paramString) {
    this.mGroupKey = paramString;
    return this;
  }
  
  public NotificationCompat$Builder setGroupSummary(boolean paramBoolean) {
    this.mGroupSummary = paramBoolean;
    return this;
  }
  
  public NotificationCompat$Builder setLargeIcon(Bitmap paramBitmap) {
    this.mLargeIcon = paramBitmap;
    return this;
  }
  
  public NotificationCompat$Builder setLights(@ColorInt int paramInt1, int paramInt2, int paramInt3) {
    boolean bool = true;
    this.mNotification.ledARGB = paramInt1;
    this.mNotification.ledOnMS = paramInt2;
    this.mNotification.ledOffMS = paramInt3;
    if (this.mNotification.ledOnMS != 0 && this.mNotification.ledOffMS != 0) {
      paramInt1 = 1;
    } else {
      paramInt1 = 0;
    } 
    Notification notification = this.mNotification;
    paramInt2 = this.mNotification.flags;
    if (paramInt1 != 0) {
      paramInt1 = bool;
      notification.flags = paramInt2 & 0xFFFFFFFE | paramInt1;
      return this;
    } 
    paramInt1 = 0;
    notification.flags = paramInt2 & 0xFFFFFFFE | paramInt1;
    return this;
  }
  
  public NotificationCompat$Builder setLocalOnly(boolean paramBoolean) {
    this.mLocalOnly = paramBoolean;
    return this;
  }
  
  public NotificationCompat$Builder setNumber(int paramInt) {
    this.mNumber = paramInt;
    return this;
  }
  
  public NotificationCompat$Builder setOngoing(boolean paramBoolean) {
    setFlag(2, paramBoolean);
    return this;
  }
  
  public NotificationCompat$Builder setOnlyAlertOnce(boolean paramBoolean) {
    setFlag(8, paramBoolean);
    return this;
  }
  
  public NotificationCompat$Builder setPriority(int paramInt) {
    this.mPriority = paramInt;
    return this;
  }
  
  public NotificationCompat$Builder setProgress(int paramInt1, int paramInt2, boolean paramBoolean) {
    this.mProgressMax = paramInt1;
    this.mProgress = paramInt2;
    this.mProgressIndeterminate = paramBoolean;
    return this;
  }
  
  public NotificationCompat$Builder setPublicVersion(Notification paramNotification) {
    this.mPublicVersion = paramNotification;
    return this;
  }
  
  public NotificationCompat$Builder setRemoteInputHistory(CharSequence[] paramArrayOfCharSequence) {
    this.mRemoteInputHistory = paramArrayOfCharSequence;
    return this;
  }
  
  public NotificationCompat$Builder setShowWhen(boolean paramBoolean) {
    this.mShowWhen = paramBoolean;
    return this;
  }
  
  public NotificationCompat$Builder setSmallIcon(int paramInt) {
    this.mNotification.icon = paramInt;
    return this;
  }
  
  public NotificationCompat$Builder setSmallIcon(int paramInt1, int paramInt2) {
    this.mNotification.icon = paramInt1;
    this.mNotification.iconLevel = paramInt2;
    return this;
  }
  
  public NotificationCompat$Builder setSortKey(String paramString) {
    this.mSortKey = paramString;
    return this;
  }
  
  public NotificationCompat$Builder setSound(Uri paramUri) {
    this.mNotification.sound = paramUri;
    this.mNotification.audioStreamType = -1;
    return this;
  }
  
  public NotificationCompat$Builder setSound(Uri paramUri, int paramInt) {
    this.mNotification.sound = paramUri;
    this.mNotification.audioStreamType = paramInt;
    return this;
  }
  
  public NotificationCompat$Builder setStyle(NotificationCompat$Style paramNotificationCompat$Style) {
    if (this.mStyle != paramNotificationCompat$Style) {
      this.mStyle = paramNotificationCompat$Style;
      if (this.mStyle != null)
        this.mStyle.setBuilder(this); 
    } 
    return this;
  }
  
  public NotificationCompat$Builder setSubText(CharSequence paramCharSequence) {
    this.mSubText = limitCharSequenceLength(paramCharSequence);
    return this;
  }
  
  public NotificationCompat$Builder setTicker(CharSequence paramCharSequence) {
    this.mNotification.tickerText = limitCharSequenceLength(paramCharSequence);
    return this;
  }
  
  public NotificationCompat$Builder setTicker(CharSequence paramCharSequence, RemoteViews paramRemoteViews) {
    this.mNotification.tickerText = limitCharSequenceLength(paramCharSequence);
    this.mTickerView = paramRemoteViews;
    return this;
  }
  
  public NotificationCompat$Builder setUsesChronometer(boolean paramBoolean) {
    this.mUseChronometer = paramBoolean;
    return this;
  }
  
  public NotificationCompat$Builder setVibrate(long[] paramArrayOflong) {
    this.mNotification.vibrate = paramArrayOflong;
    return this;
  }
  
  public NotificationCompat$Builder setVisibility(int paramInt) {
    this.mVisibility = paramInt;
    return this;
  }
  
  public NotificationCompat$Builder setWhen(long paramLong) {
    this.mNotification.when = paramLong;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompat$Builder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */