package android.support.v4.app;

import android.app.PendingIntent;
import java.util.ArrayList;
import java.util.List;

public class NotificationCompat$CarExtender$UnreadConversation$Builder {
  private long mLatestTimestamp;
  
  private final List<String> mMessages = new ArrayList<String>();
  
  private final String mParticipant;
  
  private PendingIntent mReadPendingIntent;
  
  private RemoteInput mRemoteInput;
  
  private PendingIntent mReplyPendingIntent;
  
  public NotificationCompat$CarExtender$UnreadConversation$Builder(String paramString) {
    this.mParticipant = paramString;
  }
  
  public NotificationCompat$CarExtender$UnreadConversation$Builder addMessage(String paramString) {
    this.mMessages.add(paramString);
    return this;
  }
  
  public NotificationCompat$CarExtender$UnreadConversation build() {
    String[] arrayOfString = this.mMessages.<String>toArray(new String[this.mMessages.size()]);
    String str = this.mParticipant;
    RemoteInput remoteInput = this.mRemoteInput;
    PendingIntent pendingIntent1 = this.mReplyPendingIntent;
    PendingIntent pendingIntent2 = this.mReadPendingIntent;
    long l = this.mLatestTimestamp;
    return new NotificationCompat$CarExtender$UnreadConversation(arrayOfString, remoteInput, pendingIntent1, pendingIntent2, new String[] { str }, l);
  }
  
  public NotificationCompat$CarExtender$UnreadConversation$Builder setLatestTimestamp(long paramLong) {
    this.mLatestTimestamp = paramLong;
    return this;
  }
  
  public NotificationCompat$CarExtender$UnreadConversation$Builder setReadPendingIntent(PendingIntent paramPendingIntent) {
    this.mReadPendingIntent = paramPendingIntent;
    return this;
  }
  
  public NotificationCompat$CarExtender$UnreadConversation$Builder setReplyAction(PendingIntent paramPendingIntent, RemoteInput paramRemoteInput) {
    this.mRemoteInput = paramRemoteInput;
    this.mReplyPendingIntent = paramPendingIntent;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompat$CarExtender$UnreadConversation$Builder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */