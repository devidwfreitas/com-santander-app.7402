package android.support.v4.app;

import android.app.PendingIntent;

public abstract class NotificationCompatBase$UnreadConversation {
  abstract long getLatestTimestamp();
  
  abstract String[] getMessages();
  
  abstract String getParticipant();
  
  abstract String[] getParticipants();
  
  abstract PendingIntent getReadPendingIntent();
  
  abstract RemoteInputCompatBase$RemoteInput getRemoteInput();
  
  abstract PendingIntent getReplyPendingIntent();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompatBase$UnreadConversation.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */