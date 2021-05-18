package android.support.v4.app;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@TargetApi(9)
@RequiresApi(9)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class NotificationCompatBase {
  private static Method sSetLatestEventInfo;
  
  public static Notification add(Notification paramNotification, Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2, PendingIntent paramPendingIntent1, PendingIntent paramPendingIntent2) {
    if (sSetLatestEventInfo == null)
      try {
        sSetLatestEventInfo = Notification.class.getMethod("setLatestEventInfo", new Class[] { Context.class, CharSequence.class, CharSequence.class, PendingIntent.class });
        try {
          sSetLatestEventInfo.invoke(paramNotification, new Object[] { paramContext, paramCharSequence1, paramCharSequence2, paramPendingIntent1 });
          paramNotification.fullScreenIntent = paramPendingIntent2;
          return paramNotification;
        } catch (IllegalAccessException illegalAccessException) {
        
        } catch (InvocationTargetException invocationTargetException) {}
      } catch (NoSuchMethodException noSuchMethodException) {
        throw new RuntimeException(noSuchMethodException);
      }  
    try {
      sSetLatestEventInfo.invoke(noSuchMethodException, new Object[] { paramContext, paramCharSequence1, paramCharSequence2, paramPendingIntent1 });
      ((Notification)noSuchMethodException).fullScreenIntent = paramPendingIntent2;
      return (Notification)noSuchMethodException;
    } catch (IllegalAccessException illegalAccessException) {
    
    } catch (InvocationTargetException invocationTargetException) {}
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompatBase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */