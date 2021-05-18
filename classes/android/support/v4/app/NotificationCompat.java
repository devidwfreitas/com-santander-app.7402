package android.support.v4.app;

import android.app.Notification;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.ColorInt;
import android.support.v4.os.BuildCompat;
import java.util.ArrayList;
import java.util.Iterator;

public class NotificationCompat {
  public static final String CATEGORY_ALARM = "alarm";
  
  public static final String CATEGORY_CALL = "call";
  
  public static final String CATEGORY_EMAIL = "email";
  
  public static final String CATEGORY_ERROR = "err";
  
  public static final String CATEGORY_EVENT = "event";
  
  public static final String CATEGORY_MESSAGE = "msg";
  
  public static final String CATEGORY_PROGRESS = "progress";
  
  public static final String CATEGORY_PROMO = "promo";
  
  public static final String CATEGORY_RECOMMENDATION = "recommendation";
  
  public static final String CATEGORY_REMINDER = "reminder";
  
  public static final String CATEGORY_SERVICE = "service";
  
  public static final String CATEGORY_SOCIAL = "social";
  
  public static final String CATEGORY_STATUS = "status";
  
  public static final String CATEGORY_SYSTEM = "sys";
  
  public static final String CATEGORY_TRANSPORT = "transport";
  
  @ColorInt
  public static final int COLOR_DEFAULT = 0;
  
  public static final int DEFAULT_ALL = -1;
  
  public static final int DEFAULT_LIGHTS = 4;
  
  public static final int DEFAULT_SOUND = 1;
  
  public static final int DEFAULT_VIBRATE = 2;
  
  public static final String EXTRA_BACKGROUND_IMAGE_URI = "android.backgroundImageUri";
  
  public static final String EXTRA_BIG_TEXT = "android.bigText";
  
  public static final String EXTRA_COMPACT_ACTIONS = "android.compactActions";
  
  public static final String EXTRA_CONVERSATION_TITLE = "android.conversationTitle";
  
  public static final String EXTRA_INFO_TEXT = "android.infoText";
  
  public static final String EXTRA_LARGE_ICON = "android.largeIcon";
  
  public static final String EXTRA_LARGE_ICON_BIG = "android.largeIcon.big";
  
  public static final String EXTRA_MEDIA_SESSION = "android.mediaSession";
  
  public static final String EXTRA_MESSAGES = "android.messages";
  
  public static final String EXTRA_PEOPLE = "android.people";
  
  public static final String EXTRA_PICTURE = "android.picture";
  
  public static final String EXTRA_PROGRESS = "android.progress";
  
  public static final String EXTRA_PROGRESS_INDETERMINATE = "android.progressIndeterminate";
  
  public static final String EXTRA_PROGRESS_MAX = "android.progressMax";
  
  public static final String EXTRA_REMOTE_INPUT_HISTORY = "android.remoteInputHistory";
  
  public static final String EXTRA_SELF_DISPLAY_NAME = "android.selfDisplayName";
  
  public static final String EXTRA_SHOW_CHRONOMETER = "android.showChronometer";
  
  public static final String EXTRA_SHOW_WHEN = "android.showWhen";
  
  public static final String EXTRA_SMALL_ICON = "android.icon";
  
  public static final String EXTRA_SUB_TEXT = "android.subText";
  
  public static final String EXTRA_SUMMARY_TEXT = "android.summaryText";
  
  public static final String EXTRA_TEMPLATE = "android.template";
  
  public static final String EXTRA_TEXT = "android.text";
  
  public static final String EXTRA_TEXT_LINES = "android.textLines";
  
  public static final String EXTRA_TITLE = "android.title";
  
  public static final String EXTRA_TITLE_BIG = "android.title.big";
  
  public static final int FLAG_AUTO_CANCEL = 16;
  
  public static final int FLAG_FOREGROUND_SERVICE = 64;
  
  public static final int FLAG_GROUP_SUMMARY = 512;
  
  @Deprecated
  public static final int FLAG_HIGH_PRIORITY = 128;
  
  public static final int FLAG_INSISTENT = 4;
  
  public static final int FLAG_LOCAL_ONLY = 256;
  
  public static final int FLAG_NO_CLEAR = 32;
  
  public static final int FLAG_ONGOING_EVENT = 2;
  
  public static final int FLAG_ONLY_ALERT_ONCE = 8;
  
  public static final int FLAG_SHOW_LIGHTS = 1;
  
  static final NotificationCompat$NotificationCompatImpl IMPL = new NotificationCompat$NotificationCompatImplBase();
  
  public static final int PRIORITY_DEFAULT = 0;
  
  public static final int PRIORITY_HIGH = 1;
  
  public static final int PRIORITY_LOW = -1;
  
  public static final int PRIORITY_MAX = 2;
  
  public static final int PRIORITY_MIN = -2;
  
  public static final int STREAM_DEFAULT = -1;
  
  public static final int VISIBILITY_PRIVATE = 0;
  
  public static final int VISIBILITY_PUBLIC = 1;
  
  public static final int VISIBILITY_SECRET = -1;
  
  static void addActionsToBuilder(NotificationBuilderWithActions paramNotificationBuilderWithActions, ArrayList<NotificationCompat$Action> paramArrayList) {
    Iterator<NotificationCompat$Action> iterator = paramArrayList.iterator();
    while (iterator.hasNext())
      paramNotificationBuilderWithActions.addAction(iterator.next()); 
  }
  
  static void addStyleToBuilderApi24(NotificationBuilderWithBuilderAccessor paramNotificationBuilderWithBuilderAccessor, NotificationCompat$Style paramNotificationCompat$Style) {
    if (paramNotificationCompat$Style != null) {
      if (paramNotificationCompat$Style instanceof NotificationCompat$MessagingStyle) {
        paramNotificationCompat$Style = paramNotificationCompat$Style;
        ArrayList<CharSequence> arrayList1 = new ArrayList();
        ArrayList<Long> arrayList = new ArrayList();
        ArrayList<CharSequence> arrayList2 = new ArrayList();
        ArrayList<String> arrayList3 = new ArrayList();
        ArrayList<Uri> arrayList4 = new ArrayList();
        for (NotificationCompat$MessagingStyle$Message notificationCompat$MessagingStyle$Message : ((NotificationCompat$MessagingStyle)paramNotificationCompat$Style).mMessages) {
          arrayList1.add(notificationCompat$MessagingStyle$Message.getText());
          arrayList.add(Long.valueOf(notificationCompat$MessagingStyle$Message.getTimestamp()));
          arrayList2.add(notificationCompat$MessagingStyle$Message.getSender());
          arrayList3.add(notificationCompat$MessagingStyle$Message.getDataMimeType());
          arrayList4.add(notificationCompat$MessagingStyle$Message.getDataUri());
        } 
        NotificationCompatApi24.addMessagingStyle(paramNotificationBuilderWithBuilderAccessor, ((NotificationCompat$MessagingStyle)paramNotificationCompat$Style).mUserDisplayName, ((NotificationCompat$MessagingStyle)paramNotificationCompat$Style).mConversationTitle, arrayList1, arrayList, arrayList2, arrayList3, arrayList4);
        return;
      } 
    } else {
      return;
    } 
    addStyleToBuilderJellybean(paramNotificationBuilderWithBuilderAccessor, paramNotificationCompat$Style);
  }
  
  static void addStyleToBuilderJellybean(NotificationBuilderWithBuilderAccessor paramNotificationBuilderWithBuilderAccessor, NotificationCompat$Style paramNotificationCompat$Style) {
    if (paramNotificationCompat$Style != null) {
      if (paramNotificationCompat$Style instanceof NotificationCompat$BigTextStyle) {
        paramNotificationCompat$Style = paramNotificationCompat$Style;
        NotificationCompatJellybean.addBigTextStyle(paramNotificationBuilderWithBuilderAccessor, ((NotificationCompat$BigTextStyle)paramNotificationCompat$Style).mBigContentTitle, ((NotificationCompat$BigTextStyle)paramNotificationCompat$Style).mSummaryTextSet, ((NotificationCompat$BigTextStyle)paramNotificationCompat$Style).mSummaryText, ((NotificationCompat$BigTextStyle)paramNotificationCompat$Style).mBigText);
        return;
      } 
    } else {
      return;
    } 
    if (paramNotificationCompat$Style instanceof NotificationCompat$InboxStyle) {
      paramNotificationCompat$Style = paramNotificationCompat$Style;
      NotificationCompatJellybean.addInboxStyle(paramNotificationBuilderWithBuilderAccessor, ((NotificationCompat$InboxStyle)paramNotificationCompat$Style).mBigContentTitle, ((NotificationCompat$InboxStyle)paramNotificationCompat$Style).mSummaryTextSet, ((NotificationCompat$InboxStyle)paramNotificationCompat$Style).mSummaryText, ((NotificationCompat$InboxStyle)paramNotificationCompat$Style).mTexts);
      return;
    } 
    if (paramNotificationCompat$Style instanceof NotificationCompat$BigPictureStyle) {
      paramNotificationCompat$Style = paramNotificationCompat$Style;
      NotificationCompatJellybean.addBigPictureStyle(paramNotificationBuilderWithBuilderAccessor, ((NotificationCompat$BigPictureStyle)paramNotificationCompat$Style).mBigContentTitle, ((NotificationCompat$BigPictureStyle)paramNotificationCompat$Style).mSummaryTextSet, ((NotificationCompat$BigPictureStyle)paramNotificationCompat$Style).mSummaryText, ((NotificationCompat$BigPictureStyle)paramNotificationCompat$Style).mPicture, ((NotificationCompat$BigPictureStyle)paramNotificationCompat$Style).mBigLargeIcon, ((NotificationCompat$BigPictureStyle)paramNotificationCompat$Style).mBigLargeIconSet);
      return;
    } 
  }
  
  public static NotificationCompat$Action getAction(Notification paramNotification, int paramInt) {
    return IMPL.getAction(paramNotification, paramInt);
  }
  
  public static int getActionCount(Notification paramNotification) {
    return IMPL.getActionCount(paramNotification);
  }
  
  public static String getCategory(Notification paramNotification) {
    return IMPL.getCategory(paramNotification);
  }
  
  public static Bundle getExtras(Notification paramNotification) {
    return IMPL.getExtras(paramNotification);
  }
  
  public static String getGroup(Notification paramNotification) {
    return IMPL.getGroup(paramNotification);
  }
  
  public static boolean getLocalOnly(Notification paramNotification) {
    return IMPL.getLocalOnly(paramNotification);
  }
  
  static Notification[] getNotificationArrayFromBundle(Bundle paramBundle, String paramString) {
    Parcelable[] arrayOfParcelable = paramBundle.getParcelableArray(paramString);
    if (arrayOfParcelable instanceof Notification[] || arrayOfParcelable == null)
      return (Notification[])arrayOfParcelable; 
    Notification[] arrayOfNotification = new Notification[arrayOfParcelable.length];
    for (int i = 0; i < arrayOfParcelable.length; i++)
      arrayOfNotification[i] = (Notification)arrayOfParcelable[i]; 
    paramBundle.putParcelableArray(paramString, (Parcelable[])arrayOfNotification);
    return arrayOfNotification;
  }
  
  public static String getSortKey(Notification paramNotification) {
    return IMPL.getSortKey(paramNotification);
  }
  
  public static boolean isGroupSummary(Notification paramNotification) {
    return IMPL.isGroupSummary(paramNotification);
  }
  
  static {
    if (BuildCompat.isAtLeastN()) {
      IMPL = new NotificationCompat$NotificationCompatImplApi24();
      return;
    } 
    if (Build.VERSION.SDK_INT >= 21) {
      IMPL = new NotificationCompat$NotificationCompatImplApi21();
      return;
    } 
    if (Build.VERSION.SDK_INT >= 20) {
      IMPL = new NotificationCompat$NotificationCompatImplApi20();
      return;
    } 
    if (Build.VERSION.SDK_INT >= 19) {
      IMPL = new NotificationCompat$NotificationCompatImplKitKat();
      return;
    } 
    if (Build.VERSION.SDK_INT >= 16) {
      IMPL = new NotificationCompat$NotificationCompatImplJellybean();
      return;
    } 
    if (Build.VERSION.SDK_INT >= 14) {
      IMPL = new NotificationCompat$NotificationCompatImplIceCreamSandwich();
      return;
    } 
    if (Build.VERSION.SDK_INT >= 11) {
      IMPL = new NotificationCompat$NotificationCompatImplHoneycomb();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */