package android.support.v4.app;

import android.app.PendingIntent;

public class NotificationCompat$CarExtender$UnreadConversation extends NotificationCompatBase$UnreadConversation {
  static final NotificationCompatBase$UnreadConversation$Factory FACTORY = new NotificationCompat$CarExtender$UnreadConversation$1();
  
  private final long mLatestTimestamp;
  
  private final String[] mMessages;
  
  private final String[] mParticipants;
  
  private final PendingIntent mReadPendingIntent;
  
  private final RemoteInput mRemoteInput;
  
  private final PendingIntent mReplyPendingIntent;
  
  NotificationCompat$CarExtender$UnreadConversation(String[] paramArrayOfString1, RemoteInput paramRemoteInput, PendingIntent paramPendingIntent1, PendingIntent paramPendingIntent2, String[] paramArrayOfString2, long paramLong) {
    this.mMessages = paramArrayOfString1;
    this.mRemoteInput = paramRemoteInput;
    this.mReadPendingIntent = paramPendingIntent2;
    this.mReplyPendingIntent = paramPendingIntent1;
    this.mParticipants = paramArrayOfString2;
    this.mLatestTimestamp = paramLong;
  }
  
  public long getLatestTimestamp() {
    return this.mLatestTimestamp;
  }
  
  public String[] getMessages() {
    return this.mMessages;
  }
  
  public String getParticipant() {
    return (this.mParticipants.length > 0) ? this.mParticipants[0] : null;
  }
  
  public String[] getParticipants() {
    return this.mParticipants;
  }
  
  public PendingIntent getReadPendingIntent() {
    return this.mReadPendingIntent;
  }
  
  public RemoteInput getRemoteInput() {
    return this.mRemoteInput;
  }
  
  public PendingIntent getReplyPendingIntent() {
    return this.mReplyPendingIntent;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompat$CarExtender$UnreadConversation.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */