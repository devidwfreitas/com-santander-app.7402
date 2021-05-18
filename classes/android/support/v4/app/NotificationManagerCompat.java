package android.support.v4.app;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.os.BuildCompat;
import java.util.HashSet;
import java.util.Set;

public final class NotificationManagerCompat {
  public static final String ACTION_BIND_SIDE_CHANNEL = "android.support.BIND_NOTIFICATION_SIDE_CHANNEL";
  
  public static final String EXTRA_USE_SIDE_CHANNEL = "android.support.useSideChannel";
  
  private static final NotificationManagerCompat$Impl IMPL;
  
  public static final int IMPORTANCE_DEFAULT = 3;
  
  public static final int IMPORTANCE_HIGH = 4;
  
  public static final int IMPORTANCE_LOW = 2;
  
  public static final int IMPORTANCE_MAX = 5;
  
  public static final int IMPORTANCE_MIN = 1;
  
  public static final int IMPORTANCE_NONE = 0;
  
  public static final int IMPORTANCE_UNSPECIFIED = -1000;
  
  static final int MAX_SIDE_CHANNEL_SDK_VERSION = 19;
  
  private static final String SETTING_ENABLED_NOTIFICATION_LISTENERS = "enabled_notification_listeners";
  
  static final int SIDE_CHANNEL_BIND_FLAGS;
  
  private static final int SIDE_CHANNEL_RETRY_BASE_INTERVAL_MS = 1000;
  
  private static final int SIDE_CHANNEL_RETRY_MAX_COUNT = 6;
  
  private static final String TAG = "NotifManCompat";
  
  private static Set<String> sEnabledNotificationListenerPackages;
  
  private static String sEnabledNotificationListeners;
  
  private static final Object sEnabledNotificationListenersLock = new Object();
  
  private static final Object sLock;
  
  private static NotificationManagerCompat$SideChannelManager sSideChannelManager;
  
  private final Context mContext;
  
  private final NotificationManager mNotificationManager;
  
  static {
    sEnabledNotificationListenerPackages = new HashSet<String>();
    sLock = new Object();
    if (BuildCompat.isAtLeastN()) {
      IMPL = new NotificationManagerCompat$ImplApi24();
    } else if (Build.VERSION.SDK_INT >= 19) {
      IMPL = new NotificationManagerCompat$ImplKitKat();
    } else if (Build.VERSION.SDK_INT >= 14) {
      IMPL = new NotificationManagerCompat$ImplIceCreamSandwich();
    } else {
      IMPL = new NotificationManagerCompat$ImplBase();
    } 
    SIDE_CHANNEL_BIND_FLAGS = IMPL.getSideChannelBindFlags();
  }
  
  private NotificationManagerCompat(Context paramContext) {
    this.mContext = paramContext;
    this.mNotificationManager = (NotificationManager)this.mContext.getSystemService("notification");
  }
  
  public static NotificationManagerCompat from(Context paramContext) {
    return new NotificationManagerCompat(paramContext);
  }
  
  public static Set<String> getEnabledListenerPackages(Context paramContext) {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual getContentResolver : ()Landroid/content/ContentResolver;
    //   4: ldc 'enabled_notification_listeners'
    //   6: invokestatic getString : (Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    //   9: astore_3
    //   10: getstatic android/support/v4/app/NotificationManagerCompat.sEnabledNotificationListenersLock : Ljava/lang/Object;
    //   13: astore_0
    //   14: aload_0
    //   15: monitorenter
    //   16: aload_3
    //   17: ifnull -> 100
    //   20: aload_3
    //   21: getstatic android/support/v4/app/NotificationManagerCompat.sEnabledNotificationListeners : Ljava/lang/String;
    //   24: invokevirtual equals : (Ljava/lang/Object;)Z
    //   27: ifne -> 100
    //   30: aload_3
    //   31: ldc ':'
    //   33: invokevirtual split : (Ljava/lang/String;)[Ljava/lang/String;
    //   36: astore #4
    //   38: new java/util/HashSet
    //   41: dup
    //   42: aload #4
    //   44: arraylength
    //   45: invokespecial <init> : (I)V
    //   48: astore #5
    //   50: aload #4
    //   52: arraylength
    //   53: istore_2
    //   54: iconst_0
    //   55: istore_1
    //   56: iload_1
    //   57: iload_2
    //   58: if_icmpge -> 91
    //   61: aload #4
    //   63: iload_1
    //   64: aaload
    //   65: invokestatic unflattenFromString : (Ljava/lang/String;)Landroid/content/ComponentName;
    //   68: astore #6
    //   70: aload #6
    //   72: ifnull -> 113
    //   75: aload #5
    //   77: aload #6
    //   79: invokevirtual getPackageName : ()Ljava/lang/String;
    //   82: invokeinterface add : (Ljava/lang/Object;)Z
    //   87: pop
    //   88: goto -> 113
    //   91: aload #5
    //   93: putstatic android/support/v4/app/NotificationManagerCompat.sEnabledNotificationListenerPackages : Ljava/util/Set;
    //   96: aload_3
    //   97: putstatic android/support/v4/app/NotificationManagerCompat.sEnabledNotificationListeners : Ljava/lang/String;
    //   100: getstatic android/support/v4/app/NotificationManagerCompat.sEnabledNotificationListenerPackages : Ljava/util/Set;
    //   103: astore_3
    //   104: aload_0
    //   105: monitorexit
    //   106: aload_3
    //   107: areturn
    //   108: astore_3
    //   109: aload_0
    //   110: monitorexit
    //   111: aload_3
    //   112: athrow
    //   113: iload_1
    //   114: iconst_1
    //   115: iadd
    //   116: istore_1
    //   117: goto -> 56
    // Exception table:
    //   from	to	target	type
    //   20	54	108	finally
    //   61	70	108	finally
    //   75	88	108	finally
    //   91	100	108	finally
    //   100	106	108	finally
    //   109	111	108	finally
  }
  
  private void pushSideChannelQueue(NotificationManagerCompat$Task paramNotificationManagerCompat$Task) {
    synchronized (sLock) {
      if (sSideChannelManager == null)
        sSideChannelManager = new NotificationManagerCompat$SideChannelManager(this.mContext.getApplicationContext()); 
      sSideChannelManager.queueTask(paramNotificationManagerCompat$Task);
      return;
    } 
  }
  
  private static boolean useSideChannelForNotification(Notification paramNotification) {
    Bundle bundle = NotificationCompat.getExtras(paramNotification);
    return (bundle != null && bundle.getBoolean("android.support.useSideChannel"));
  }
  
  public boolean areNotificationsEnabled() {
    return IMPL.areNotificationsEnabled(this.mContext, this.mNotificationManager);
  }
  
  public void cancel(int paramInt) {
    cancel(null, paramInt);
  }
  
  public void cancel(String paramString, int paramInt) {
    IMPL.cancelNotification(this.mNotificationManager, paramString, paramInt);
    if (Build.VERSION.SDK_INT <= 19)
      pushSideChannelQueue(new NotificationManagerCompat$CancelTask(this.mContext.getPackageName(), paramInt, paramString)); 
  }
  
  public void cancelAll() {
    this.mNotificationManager.cancelAll();
    if (Build.VERSION.SDK_INT <= 19)
      pushSideChannelQueue(new NotificationManagerCompat$CancelTask(this.mContext.getPackageName())); 
  }
  
  public int getImportance() {
    return IMPL.getImportance(this.mNotificationManager);
  }
  
  public void notify(int paramInt, Notification paramNotification) {
    notify(null, paramInt, paramNotification);
  }
  
  public void notify(String paramString, int paramInt, Notification paramNotification) {
    if (useSideChannelForNotification(paramNotification)) {
      pushSideChannelQueue(new NotificationManagerCompat$NotifyTask(this.mContext.getPackageName(), paramInt, paramString, paramNotification));
      IMPL.cancelNotification(this.mNotificationManager, paramString, paramInt);
      return;
    } 
    IMPL.postNotification(this.mNotificationManager, paramString, paramInt, paramNotification);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationManagerCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */