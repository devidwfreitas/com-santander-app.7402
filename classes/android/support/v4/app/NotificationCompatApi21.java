package android.support.v4.app;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.RemoteInput;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.RequiresApi;

@TargetApi(21)
@RequiresApi(21)
class NotificationCompatApi21 {
  public static final String CATEGORY_ALARM = "alarm";
  
  public static final String CATEGORY_CALL = "call";
  
  public static final String CATEGORY_EMAIL = "email";
  
  public static final String CATEGORY_ERROR = "err";
  
  public static final String CATEGORY_EVENT = "event";
  
  public static final String CATEGORY_MESSAGE = "msg";
  
  public static final String CATEGORY_PROGRESS = "progress";
  
  public static final String CATEGORY_PROMO = "promo";
  
  public static final String CATEGORY_RECOMMENDATION = "recommendation";
  
  public static final String CATEGORY_SERVICE = "service";
  
  public static final String CATEGORY_SOCIAL = "social";
  
  public static final String CATEGORY_STATUS = "status";
  
  public static final String CATEGORY_SYSTEM = "sys";
  
  public static final String CATEGORY_TRANSPORT = "transport";
  
  private static final String KEY_AUTHOR = "author";
  
  private static final String KEY_MESSAGES = "messages";
  
  private static final String KEY_ON_READ = "on_read";
  
  private static final String KEY_ON_REPLY = "on_reply";
  
  private static final String KEY_PARTICIPANTS = "participants";
  
  private static final String KEY_REMOTE_INPUT = "remote_input";
  
  private static final String KEY_TEXT = "text";
  
  private static final String KEY_TIMESTAMP = "timestamp";
  
  private static RemoteInput fromCompatRemoteInput(RemoteInputCompatBase$RemoteInput paramRemoteInputCompatBase$RemoteInput) {
    return (new RemoteInput.Builder(paramRemoteInputCompatBase$RemoteInput.getResultKey())).setLabel(paramRemoteInputCompatBase$RemoteInput.getLabel()).setChoices(paramRemoteInputCompatBase$RemoteInput.getChoices()).setAllowFreeFormInput(paramRemoteInputCompatBase$RemoteInput.getAllowFreeFormInput()).addExtras(paramRemoteInputCompatBase$RemoteInput.getExtras()).build();
  }
  
  static Bundle getBundleForUnreadConversation(NotificationCompatBase$UnreadConversation paramNotificationCompatBase$UnreadConversation) {
    String str2 = null;
    int i = 0;
    if (paramNotificationCompatBase$UnreadConversation == null)
      return null; 
    Bundle bundle = new Bundle();
    String str1 = str2;
    if (paramNotificationCompatBase$UnreadConversation.getParticipants() != null) {
      str1 = str2;
      if ((paramNotificationCompatBase$UnreadConversation.getParticipants()).length > 1)
        str1 = paramNotificationCompatBase$UnreadConversation.getParticipants()[0]; 
    } 
    Parcelable[] arrayOfParcelable = new Parcelable[(paramNotificationCompatBase$UnreadConversation.getMessages()).length];
    while (i < arrayOfParcelable.length) {
      Bundle bundle1 = new Bundle();
      bundle1.putString("text", paramNotificationCompatBase$UnreadConversation.getMessages()[i]);
      bundle1.putString("author", str1);
      arrayOfParcelable[i] = (Parcelable)bundle1;
      i++;
    } 
    bundle.putParcelableArray("messages", arrayOfParcelable);
    RemoteInputCompatBase$RemoteInput remoteInputCompatBase$RemoteInput = paramNotificationCompatBase$UnreadConversation.getRemoteInput();
    if (remoteInputCompatBase$RemoteInput != null)
      bundle.putParcelable("remote_input", (Parcelable)fromCompatRemoteInput(remoteInputCompatBase$RemoteInput)); 
    bundle.putParcelable("on_reply", (Parcelable)paramNotificationCompatBase$UnreadConversation.getReplyPendingIntent());
    bundle.putParcelable("on_read", (Parcelable)paramNotificationCompatBase$UnreadConversation.getReadPendingIntent());
    bundle.putStringArray("participants", paramNotificationCompatBase$UnreadConversation.getParticipants());
    bundle.putLong("timestamp", paramNotificationCompatBase$UnreadConversation.getLatestTimestamp());
    return bundle;
  }
  
  public static String getCategory(Notification paramNotification) {
    return paramNotification.category;
  }
  
  static NotificationCompatBase$UnreadConversation getUnreadConversationFromBundle(Bundle paramBundle, NotificationCompatBase$UnreadConversation$Factory paramNotificationCompatBase$UnreadConversation$Factory, RemoteInputCompatBase$RemoteInput$Factory paramRemoteInputCompatBase$RemoteInput$Factory) {
    // Byte code:
    //   0: iconst_0
    //   1: istore #5
    //   3: aload_0
    //   4: ifnonnull -> 9
    //   7: aconst_null
    //   8: areturn
    //   9: aload_0
    //   10: ldc 'messages'
    //   12: invokevirtual getParcelableArray : (Ljava/lang/String;)[Landroid/os/Parcelable;
    //   15: astore #7
    //   17: aload #7
    //   19: ifnull -> 190
    //   22: aload #7
    //   24: arraylength
    //   25: anewarray java/lang/String
    //   28: astore #6
    //   30: iconst_0
    //   31: istore_3
    //   32: iload_3
    //   33: aload #6
    //   35: arraylength
    //   36: if_icmpge -> 184
    //   39: aload #7
    //   41: iload_3
    //   42: aaload
    //   43: instanceof android/os/Bundle
    //   46: ifne -> 145
    //   49: iload #5
    //   51: istore #4
    //   53: iload #4
    //   55: ifeq -> 7
    //   58: aload_0
    //   59: ldc 'on_read'
    //   61: invokevirtual getParcelable : (Ljava/lang/String;)Landroid/os/Parcelable;
    //   64: checkcast android/app/PendingIntent
    //   67: astore #7
    //   69: aload_0
    //   70: ldc 'on_reply'
    //   72: invokevirtual getParcelable : (Ljava/lang/String;)Landroid/os/Parcelable;
    //   75: checkcast android/app/PendingIntent
    //   78: astore #8
    //   80: aload_0
    //   81: ldc 'remote_input'
    //   83: invokevirtual getParcelable : (Ljava/lang/String;)Landroid/os/Parcelable;
    //   86: checkcast android/app/RemoteInput
    //   89: astore #10
    //   91: aload_0
    //   92: ldc 'participants'
    //   94: invokevirtual getStringArray : (Ljava/lang/String;)[Ljava/lang/String;
    //   97: astore #9
    //   99: aload #9
    //   101: ifnull -> 7
    //   104: aload #9
    //   106: arraylength
    //   107: iconst_1
    //   108: if_icmpne -> 7
    //   111: aload #10
    //   113: ifnull -> 179
    //   116: aload #10
    //   118: aload_2
    //   119: invokestatic toCompatRemoteInput : (Landroid/app/RemoteInput;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    //   122: astore_2
    //   123: aload_1
    //   124: aload #6
    //   126: aload_2
    //   127: aload #8
    //   129: aload #7
    //   131: aload #9
    //   133: aload_0
    //   134: ldc 'timestamp'
    //   136: invokevirtual getLong : (Ljava/lang/String;)J
    //   139: invokeinterface build : ([Ljava/lang/String;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;
    //   144: areturn
    //   145: aload #6
    //   147: iload_3
    //   148: aload #7
    //   150: iload_3
    //   151: aaload
    //   152: checkcast android/os/Bundle
    //   155: ldc 'text'
    //   157: invokevirtual getString : (Ljava/lang/String;)Ljava/lang/String;
    //   160: aastore
    //   161: iload #5
    //   163: istore #4
    //   165: aload #6
    //   167: iload_3
    //   168: aaload
    //   169: ifnull -> 53
    //   172: iload_3
    //   173: iconst_1
    //   174: iadd
    //   175: istore_3
    //   176: goto -> 32
    //   179: aconst_null
    //   180: astore_2
    //   181: goto -> 123
    //   184: iconst_1
    //   185: istore #4
    //   187: goto -> 53
    //   190: aconst_null
    //   191: astore #6
    //   193: goto -> 58
  }
  
  private static RemoteInputCompatBase$RemoteInput toCompatRemoteInput(RemoteInput paramRemoteInput, RemoteInputCompatBase$RemoteInput$Factory paramRemoteInputCompatBase$RemoteInput$Factory) {
    return paramRemoteInputCompatBase$RemoteInput$Factory.build(paramRemoteInput.getResultKey(), paramRemoteInput.getLabel(), paramRemoteInput.getChoices(), paramRemoteInput.getAllowFreeFormInput(), paramRemoteInput.getExtras());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompatApi21.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */