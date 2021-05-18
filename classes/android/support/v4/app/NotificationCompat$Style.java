package android.support.v4.app;

import android.app.Notification;
import android.os.Bundle;
import android.support.annotation.RestrictTo;

public abstract class NotificationCompat$Style {
  CharSequence mBigContentTitle;
  
  NotificationCompat$Builder mBuilder;
  
  CharSequence mSummaryText;
  
  boolean mSummaryTextSet = false;
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public void addCompatExtras(Bundle paramBundle) {}
  
  public Notification build() {
    Notification notification = null;
    if (this.mBuilder != null)
      notification = this.mBuilder.build(); 
    return notification;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  protected void restoreFromCompatExtras(Bundle paramBundle) {}
  
  public void setBuilder(NotificationCompat$Builder paramNotificationCompat$Builder) {
    if (this.mBuilder != paramNotificationCompat$Builder) {
      this.mBuilder = paramNotificationCompat$Builder;
      if (this.mBuilder != null)
        this.mBuilder.setStyle(this); 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompat$Style.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */