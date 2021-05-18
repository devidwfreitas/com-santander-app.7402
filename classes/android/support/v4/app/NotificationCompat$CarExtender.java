package android.support.v4.app;

import android.app.Notification;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.ColorInt;

public final class NotificationCompat$CarExtender implements NotificationCompat$Extender {
  private static final String EXTRA_CAR_EXTENDER = "android.car.EXTENSIONS";
  
  private static final String EXTRA_COLOR = "app_color";
  
  private static final String EXTRA_CONVERSATION = "car_conversation";
  
  private static final String EXTRA_LARGE_ICON = "large_icon";
  
  private static final String TAG = "CarExtender";
  
  private int mColor = 0;
  
  private Bitmap mLargeIcon;
  
  private NotificationCompat$CarExtender$UnreadConversation mUnreadConversation;
  
  public NotificationCompat$CarExtender() {}
  
  public NotificationCompat$CarExtender(Notification paramNotification) {
    if (Build.VERSION.SDK_INT >= 21) {
      Bundle bundle;
      if (NotificationCompat.getExtras(paramNotification) == null) {
        paramNotification = null;
      } else {
        bundle = NotificationCompat.getExtras(paramNotification).getBundle("android.car.EXTENSIONS");
      } 
      if (bundle != null) {
        this.mLargeIcon = (Bitmap)bundle.getParcelable("large_icon");
        this.mColor = bundle.getInt("app_color", 0);
        bundle = bundle.getBundle("car_conversation");
        this.mUnreadConversation = (NotificationCompat$CarExtender$UnreadConversation)NotificationCompat.IMPL.getUnreadConversationFromBundle(bundle, NotificationCompat$CarExtender$UnreadConversation.FACTORY, RemoteInput.FACTORY);
        return;
      } 
    } 
  }
  
  public NotificationCompat$Builder extend(NotificationCompat$Builder paramNotificationCompat$Builder) {
    if (Build.VERSION.SDK_INT < 21)
      return paramNotificationCompat$Builder; 
    Bundle bundle = new Bundle();
    if (this.mLargeIcon != null)
      bundle.putParcelable("large_icon", (Parcelable)this.mLargeIcon); 
    if (this.mColor != 0)
      bundle.putInt("app_color", this.mColor); 
    if (this.mUnreadConversation != null)
      bundle.putBundle("car_conversation", NotificationCompat.IMPL.getBundleForUnreadConversation(this.mUnreadConversation)); 
    paramNotificationCompat$Builder.getExtras().putBundle("android.car.EXTENSIONS", bundle);
    return paramNotificationCompat$Builder;
  }
  
  @ColorInt
  public int getColor() {
    return this.mColor;
  }
  
  public Bitmap getLargeIcon() {
    return this.mLargeIcon;
  }
  
  public NotificationCompat$CarExtender$UnreadConversation getUnreadConversation() {
    return this.mUnreadConversation;
  }
  
  public NotificationCompat$CarExtender setColor(@ColorInt int paramInt) {
    this.mColor = paramInt;
    return this;
  }
  
  public NotificationCompat$CarExtender setLargeIcon(Bitmap paramBitmap) {
    this.mLargeIcon = paramBitmap;
    return this;
  }
  
  public NotificationCompat$CarExtender setUnreadConversation(NotificationCompat$CarExtender$UnreadConversation paramNotificationCompat$CarExtender$UnreadConversation) {
    this.mUnreadConversation = paramNotificationCompat$CarExtender$UnreadConversation;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompat$CarExtender.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */