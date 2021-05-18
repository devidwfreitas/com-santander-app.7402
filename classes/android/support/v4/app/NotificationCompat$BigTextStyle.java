package android.support.v4.app;

public class NotificationCompat$BigTextStyle extends NotificationCompat$Style {
  CharSequence mBigText;
  
  public NotificationCompat$BigTextStyle() {}
  
  public NotificationCompat$BigTextStyle(NotificationCompat$Builder paramNotificationCompat$Builder) {
    setBuilder(paramNotificationCompat$Builder);
  }
  
  public NotificationCompat$BigTextStyle bigText(CharSequence paramCharSequence) {
    this.mBigText = NotificationCompat$Builder.limitCharSequenceLength(paramCharSequence);
    return this;
  }
  
  public NotificationCompat$BigTextStyle setBigContentTitle(CharSequence paramCharSequence) {
    this.mBigContentTitle = NotificationCompat$Builder.limitCharSequenceLength(paramCharSequence);
    return this;
  }
  
  public NotificationCompat$BigTextStyle setSummaryText(CharSequence paramCharSequence) {
    this.mSummaryText = NotificationCompat$Builder.limitCharSequenceLength(paramCharSequence);
    this.mSummaryTextSet = true;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompat$BigTextStyle.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */