import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.Parcel;

public abstract class czz extends Binder implements czy {
  public czz() {
    attachInterface(this, "com.google.android.gms.iid.IMessengerCompat");
  }
  
  public static czy a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.iid.IMessengerCompat");
    return (iInterface != null && iInterface instanceof czy) ? (czy)iInterface : new daa(paramIBinder);
  }
  
  public IBinder asBinder() {
    return (IBinder)this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.iid.IMessengerCompat");
        return true;
      case 1:
        break;
    } 
    paramParcel1.enforceInterface("com.google.android.gms.iid.IMessengerCompat");
    if (paramParcel1.readInt() != 0) {
      Message message = (Message)Message.CREATOR.createFromParcel(paramParcel1);
      a(message);
      return true;
    } 
    paramParcel1 = null;
    a((Message)paramParcel1);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\czz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */