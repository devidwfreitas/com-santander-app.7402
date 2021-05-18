package android.support.v4.app;

import android.annotation.TargetApi;
import android.app.Notification;
import android.net.Uri;
import android.support.annotation.RequiresApi;
import java.util.List;

@TargetApi(24)
@RequiresApi(24)
class NotificationCompatApi24 {
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
  
  public static void addMessagingStyle(NotificationBuilderWithBuilderAccessor paramNotificationBuilderWithBuilderAccessor, CharSequence paramCharSequence1, CharSequence paramCharSequence2, List<CharSequence> paramList1, List<Long> paramList, List<CharSequence> paramList2, List<String> paramList3, List<Uri> paramList4) {
    Notification.MessagingStyle messagingStyle = (new Notification.MessagingStyle(paramCharSequence1)).setConversationTitle(paramCharSequence2);
    int i;
    for (i = 0; i < paramList1.size(); i++) {
      Notification.MessagingStyle.Message message = new Notification.MessagingStyle.Message(paramList1.get(i), ((Long)paramList.get(i)).longValue(), paramList2.get(i));
      if (paramList3.get(i) != null)
        message.setData(paramList3.get(i), paramList4.get(i)); 
      messagingStyle.addMessage(message);
    } 
    messagingStyle.setBuilder(paramNotificationBuilderWithBuilderAccessor.getBuilder());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompatApi24.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */