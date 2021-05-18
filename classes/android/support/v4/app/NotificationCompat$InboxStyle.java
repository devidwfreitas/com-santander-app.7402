package android.support.v4.app;

import java.util.ArrayList;

public class NotificationCompat$InboxStyle extends NotificationCompat$Style {
  ArrayList<CharSequence> mTexts = new ArrayList<CharSequence>();
  
  public NotificationCompat$InboxStyle() {}
  
  public NotificationCompat$InboxStyle(NotificationCompat$Builder paramNotificationCompat$Builder) {
    setBuilder(paramNotificationCompat$Builder);
  }
  
  public NotificationCompat$InboxStyle addLine(CharSequence paramCharSequence) {
    this.mTexts.add(NotificationCompat$Builder.limitCharSequenceLength(paramCharSequence));
    return this;
  }
  
  public NotificationCompat$InboxStyle setBigContentTitle(CharSequence paramCharSequence) {
    this.mBigContentTitle = NotificationCompat$Builder.limitCharSequenceLength(paramCharSequence);
    return this;
  }
  
  public NotificationCompat$InboxStyle setSummaryText(CharSequence paramCharSequence) {
    this.mSummaryText = NotificationCompat$Builder.limitCharSequenceLength(paramCharSequence);
    this.mSummaryTextSet = true;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompat$InboxStyle.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */