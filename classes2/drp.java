import android.os.IBinder;
import android.os.Parcel;

class drp implements drn {
  private IBinder a;
  
  drp(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public String a() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
      this.a.transact(1, parcel1, parcel2, 0);
      parcel2.readException();
      return parcel2.readString();
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public String a(String paramString) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
      parcel1.writeString(paramString);
      this.a.transact(3, parcel1, parcel2, 0);
      parcel2.readException();
      paramString = parcel2.readString();
      return paramString;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(String paramString, boolean paramBoolean) {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
      parcel1.writeString(paramString);
      if (paramBoolean)
        bool = true; 
      parcel1.writeInt(bool);
      this.a.transact(4, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public boolean a(boolean paramBoolean) {
    boolean bool = true;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
      if (paramBoolean) {
        i = 1;
      } else {
        i = 0;
      } 
      parcel1.writeInt(i);
      this.a.transact(2, parcel1, parcel2, 0);
      parcel2.readException();
      int i = parcel2.readInt();
      if (i != 0) {
        paramBoolean = bool;
        return paramBoolean;
      } 
      paramBoolean = false;
      return paramBoolean;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public IBinder asBinder() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\drp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */