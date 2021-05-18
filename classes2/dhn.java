import android.os.IBinder;
import android.os.Parcel;

class dhn implements dhl {
  private IBinder a;
  
  dhn(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public IBinder asBinder() {
    return this.a;
  }
  
  public boolean getBooleanFlagValue(String paramString, boolean paramBoolean, int paramInt) {
    boolean bool = true;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      boolean bool1;
      parcel1.writeInterfaceToken("com.google.android.gms.flags.IFlagProvider");
      parcel1.writeString(paramString);
      if (paramBoolean) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
      parcel1.writeInt(bool1);
      parcel1.writeInt(paramInt);
      this.a.transact(2, parcel1, parcel2, 0);
      parcel2.readException();
      paramInt = parcel2.readInt();
      if (paramInt != 0) {
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
  
  public int getIntFlagValue(String paramString, int paramInt1, int paramInt2) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.flags.IFlagProvider");
      parcel1.writeString(paramString);
      parcel1.writeInt(paramInt1);
      parcel1.writeInt(paramInt2);
      this.a.transact(3, parcel1, parcel2, 0);
      parcel2.readException();
      paramInt1 = parcel2.readInt();
      return paramInt1;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public long getLongFlagValue(String paramString, long paramLong, int paramInt) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.flags.IFlagProvider");
      parcel1.writeString(paramString);
      parcel1.writeLong(paramLong);
      parcel1.writeInt(paramInt);
      this.a.transact(4, parcel1, parcel2, 0);
      parcel2.readException();
      paramLong = parcel2.readLong();
      return paramLong;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public String getStringFlagValue(String paramString1, String paramString2, int paramInt) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.flags.IFlagProvider");
      parcel1.writeString(paramString1);
      parcel1.writeString(paramString2);
      parcel1.writeInt(paramInt);
      this.a.transact(5, parcel1, parcel2, 0);
      parcel2.readException();
      paramString1 = parcel2.readString();
      return paramString1;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void init(cwx paramcwx) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.flags.IFlagProvider");
      if (paramcwx != null) {
        IBinder iBinder = paramcwx.asBinder();
      } else {
        paramcwx = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramcwx);
      this.a.transact(1, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dhn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */