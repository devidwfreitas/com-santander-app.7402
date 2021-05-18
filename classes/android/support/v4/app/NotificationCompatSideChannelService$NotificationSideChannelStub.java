package android.support.v4.app;

import android.app.Notification;

class NotificationCompatSideChannelService$NotificationSideChannelStub extends INotificationSideChannel$Stub {
  public void cancel(String paramString1, int paramInt, String paramString2) {
    NotificationCompatSideChannelService.this.checkPermission(getCallingUid(), paramString1);
    long l = clearCallingIdentity();
    try {
      NotificationCompatSideChannelService.this.cancel(paramString1, paramInt, paramString2);
      return;
    } finally {
      restoreCallingIdentity(l);
    } 
  }
  
  public void cancelAll(String paramString) {
    NotificationCompatSideChannelService.this.checkPermission(getCallingUid(), paramString);
    long l = clearCallingIdentity();
    try {
      NotificationCompatSideChannelService.this.cancelAll(paramString);
      return;
    } finally {
      restoreCallingIdentity(l);
    } 
  }
  
  public void notify(String paramString1, int paramInt, String paramString2, Notification paramNotification) {
    NotificationCompatSideChannelService.this.checkPermission(getCallingUid(), paramString1);
    long l = clearCallingIdentity();
    try {
      NotificationCompatSideChannelService.this.notify(paramString1, paramInt, paramString2, paramNotification);
      return;
    } finally {
      restoreCallingIdentity(l);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompatSideChannelService$NotificationSideChannelStub.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */