import android.os.IBinder;
import android.os.Parcel;

class cyh implements cyf {
  private IBinder a;
  
  cyh(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public int a(cwx paramcwx, String paramString) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.dynamite.IDynamiteLoader");
      if (paramcwx != null) {
        IBinder iBinder = paramcwx.asBinder();
        parcel1.writeStrongBinder(iBinder);
        parcel1.writeString(paramString);
        this.a.transact(1, parcel1, parcel2, 0);
        parcel2.readException();
        return parcel2.readInt();
      } 
      paramcwx = null;
      parcel1.writeStrongBinder((IBinder)paramcwx);
      parcel1.writeString(paramString);
      this.a.transact(1, parcel1, parcel2, 0);
      parcel2.readException();
      return parcel2.readInt();
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public int a(cwx paramcwx, String paramString, boolean paramBoolean) {
    int i = 0;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.dynamite.IDynamiteLoader");
      if (paramcwx != null) {
        IBinder iBinder = paramcwx.asBinder();
      } else {
        paramcwx = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramcwx);
      parcel1.writeString(paramString);
      if (paramBoolean)
        i = 1; 
      parcel1.writeInt(i);
      this.a.transact(3, parcel1, parcel2, 0);
      parcel2.readException();
      i = parcel2.readInt();
      return i;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public cwx a(cwx paramcwx, String paramString, int paramInt) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.dynamite.IDynamiteLoader");
      if (paramcwx != null) {
        IBinder iBinder = paramcwx.asBinder();
        parcel1.writeStrongBinder(iBinder);
        parcel1.writeString(paramString);
        parcel1.writeInt(paramInt);
        this.a.transact(2, parcel1, parcel2, 0);
        parcel2.readException();
        return cwy.a(parcel2.readStrongBinder());
      } 
      paramcwx = null;
      parcel1.writeStrongBinder((IBinder)paramcwx);
      parcel1.writeString(paramString);
      parcel1.writeInt(paramInt);
      this.a.transact(2, parcel1, parcel2, 0);
      parcel2.readException();
      paramcwx = cwy.a(parcel2.readStrongBinder());
      return paramcwx;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public IBinder asBinder() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cyh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */