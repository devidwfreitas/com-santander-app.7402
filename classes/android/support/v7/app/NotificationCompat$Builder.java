package android.support.v7.app;

import android.content.Context;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.support.v4.app.NotificationCompat;

public class NotificationCompat$Builder extends NotificationCompat.Builder {
  public NotificationCompat$Builder(Context paramContext) {
    super(paramContext);
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  protected NotificationCompat.BuilderExtender getExtender() {
    return (Build.VERSION.SDK_INT >= 24) ? new NotificationCompat$Api24Extender(null) : ((Build.VERSION.SDK_INT >= 21) ? new NotificationCompat$LollipopExtender() : ((Build.VERSION.SDK_INT >= 16) ? new NotificationCompat$JellybeanExtender() : ((Build.VERSION.SDK_INT >= 14) ? new NotificationCompat$IceCreamSandwichExtender() : super.getExtender())));
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  protected CharSequence resolveText() {
    if (this.mStyle instanceof NotificationCompat.MessagingStyle) {
      NotificationCompat.MessagingStyle messagingStyle = (NotificationCompat.MessagingStyle)this.mStyle;
      NotificationCompat.MessagingStyle.Message message = NotificationCompat.access$000(messagingStyle);
      CharSequence charSequence = messagingStyle.getConversationTitle();
      if (message != null)
        return (charSequence != null) ? NotificationCompat.access$100(this, messagingStyle, message) : message.getText(); 
    } 
    return super.resolveText();
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  protected CharSequence resolveTitle() {
    if (this.mStyle instanceof NotificationCompat.MessagingStyle) {
      NotificationCompat.MessagingStyle messagingStyle = (NotificationCompat.MessagingStyle)this.mStyle;
      NotificationCompat.MessagingStyle.Message message = NotificationCompat.access$000(messagingStyle);
      CharSequence charSequence = messagingStyle.getConversationTitle();
      if (charSequence != null || message != null)
        return (charSequence != null) ? charSequence : message.getSender(); 
    } 
    return super.resolveTitle();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\NotificationCompat$Builder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */