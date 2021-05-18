package android.support.v4.app;

import android.graphics.Bitmap;

public class NotificationCompat$BigPictureStyle extends NotificationCompat$Style {
  Bitmap mBigLargeIcon;
  
  boolean mBigLargeIconSet;
  
  Bitmap mPicture;
  
  public NotificationCompat$BigPictureStyle() {}
  
  public NotificationCompat$BigPictureStyle(NotificationCompat$Builder paramNotificationCompat$Builder) {
    setBuilder(paramNotificationCompat$Builder);
  }
  
  public NotificationCompat$BigPictureStyle bigLargeIcon(Bitmap paramBitmap) {
    this.mBigLargeIcon = paramBitmap;
    this.mBigLargeIconSet = true;
    return this;
  }
  
  public NotificationCompat$BigPictureStyle bigPicture(Bitmap paramBitmap) {
    this.mPicture = paramBitmap;
    return this;
  }
  
  public NotificationCompat$BigPictureStyle setBigContentTitle(CharSequence paramCharSequence) {
    this.mBigContentTitle = NotificationCompat$Builder.limitCharSequenceLength(paramCharSequence);
    return this;
  }
  
  public NotificationCompat$BigPictureStyle setSummaryText(CharSequence paramCharSequence) {
    this.mSummaryText = NotificationCompat$Builder.limitCharSequenceLength(paramCharSequence);
    this.mSummaryTextSet = true;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompat$BigPictureStyle.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */