package android.support.v4.app;

import android.app.Notification;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class INotificationSideChannel$Stub extends Binder implements INotificationSideChannel {
  private static final String DESCRIPTOR = "android.support.v4.app.INotificationSideChannel";
  
  static final int TRANSACTION_cancel = 2;
  
  static final int TRANSACTION_cancelAll = 3;
  
  static final int TRANSACTION_notify = 1;
  
  public INotificationSideChannel$Stub() {
    attachInterface(this, "android.support.v4.app.INotificationSideChannel");
  }
  
  public static INotificationSideChannel asInterface(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("android.support.v4.app.INotificationSideChannel");
    return (iInterface != null && iInterface instanceof INotificationSideChannel) ? (INotificationSideChannel)iInterface : new INotificationSideChannel$Stub$Proxy(paramIBinder);
  }
  
  public IBinder asBinder() {
    return (IBinder)this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    String str1;
    String str2;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("android.support.v4.app.INotificationSideChannel");
        return true;
      case 1:
        paramParcel1.enforceInterface("android.support.v4.app.INotificationSideChannel");
        str1 = paramParcel1.readString();
        paramInt1 = paramParcel1.readInt();
        str2 = paramParcel1.readString();
        if (paramParcel1.readInt() != 0) {
          Notification notification = (Notification)Notification.CREATOR.createFromParcel(paramParcel1);
          notify(str1, paramInt1, str2, notification);
          return true;
        } 
        paramParcel1 = null;
        notify(str1, paramInt1, str2, (Notification)paramParcel1);
        return true;
      case 2:
        paramParcel1.enforceInterface("android.support.v4.app.INotificationSideChannel");
        cancel(paramParcel1.readString(), paramParcel1.readInt(), paramParcel1.readString());
        return true;
      case 3:
        break;
    } 
    paramParcel1.enforceInterface("android.support.v4.app.INotificationSideChannel");
    cancelAll(paramParcel1.readString());
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\INotificationSideChannel$Stub.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */