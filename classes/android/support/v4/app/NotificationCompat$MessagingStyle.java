package android.support.v4.app;

import android.app.Notification;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import java.util.ArrayList;
import java.util.List;

public class NotificationCompat$MessagingStyle extends NotificationCompat$Style {
  public static final int MAXIMUM_RETAINED_MESSAGES = 25;
  
  CharSequence mConversationTitle;
  
  List<NotificationCompat$MessagingStyle$Message> mMessages = new ArrayList<NotificationCompat$MessagingStyle$Message>();
  
  CharSequence mUserDisplayName;
  
  NotificationCompat$MessagingStyle() {}
  
  public NotificationCompat$MessagingStyle(@NonNull CharSequence paramCharSequence) {
    this.mUserDisplayName = paramCharSequence;
  }
  
  public static NotificationCompat$MessagingStyle extractMessagingStyleFromNotification(Notification paramNotification) {
    Bundle bundle = NotificationCompat.IMPL.getExtras(paramNotification);
    if (bundle != null && !bundle.containsKey("android.selfDisplayName"))
      return null; 
    try {
      NotificationCompat$MessagingStyle notificationCompat$MessagingStyle = new NotificationCompat$MessagingStyle();
      notificationCompat$MessagingStyle.restoreFromCompatExtras(bundle);
      return notificationCompat$MessagingStyle;
    } catch (ClassCastException classCastException) {
      return null;
    } 
  }
  
  public void addCompatExtras(Bundle paramBundle) {
    super.addCompatExtras(paramBundle);
    if (this.mUserDisplayName != null)
      paramBundle.putCharSequence("android.selfDisplayName", this.mUserDisplayName); 
    if (this.mConversationTitle != null)
      paramBundle.putCharSequence("android.conversationTitle", this.mConversationTitle); 
    if (!this.mMessages.isEmpty())
      paramBundle.putParcelableArray("android.messages", (Parcelable[])NotificationCompat$MessagingStyle$Message.getBundleArrayForMessages(this.mMessages)); 
  }
  
  public NotificationCompat$MessagingStyle addMessage(NotificationCompat$MessagingStyle$Message paramNotificationCompat$MessagingStyle$Message) {
    this.mMessages.add(paramNotificationCompat$MessagingStyle$Message);
    if (this.mMessages.size() > 25)
      this.mMessages.remove(0); 
    return this;
  }
  
  public NotificationCompat$MessagingStyle addMessage(CharSequence paramCharSequence1, long paramLong, CharSequence paramCharSequence2) {
    this.mMessages.add(new NotificationCompat$MessagingStyle$Message(paramCharSequence1, paramLong, paramCharSequence2));
    if (this.mMessages.size() > 25)
      this.mMessages.remove(0); 
    return this;
  }
  
  public CharSequence getConversationTitle() {
    return this.mConversationTitle;
  }
  
  public List<NotificationCompat$MessagingStyle$Message> getMessages() {
    return this.mMessages;
  }
  
  public CharSequence getUserDisplayName() {
    return this.mUserDisplayName;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  protected void restoreFromCompatExtras(Bundle paramBundle) {
    this.mMessages.clear();
    this.mUserDisplayName = paramBundle.getString("android.selfDisplayName");
    this.mConversationTitle = paramBundle.getString("android.conversationTitle");
    Parcelable[] arrayOfParcelable = paramBundle.getParcelableArray("android.messages");
    if (arrayOfParcelable != null)
      this.mMessages = NotificationCompat$MessagingStyle$Message.getMessagesFromBundleArray(arrayOfParcelable); 
  }
  
  public NotificationCompat$MessagingStyle setConversationTitle(CharSequence paramCharSequence) {
    this.mConversationTitle = paramCharSequence;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompat$MessagingStyle.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */