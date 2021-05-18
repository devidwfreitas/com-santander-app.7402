import android.os.IBinder;
import android.os.Parcel;

class cyk implements cyi {
  private IBinder a;
  
  cyk(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public cwx a(cwx paramcwx, String paramString, byte[] paramArrayOfbyte) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.dynamite.IDynamiteLoaderV2");
      if (paramcwx != null) {
        IBinder iBinder = paramcwx.asBinder();
        parcel1.writeStrongBinder(iBinder);
        parcel1.writeString(paramString);
        parcel1.writeByteArray(paramArrayOfbyte);
        this.a.transact(1, parcel1, parcel2, 0);
        parcel2.readException();
        return cwy.a(parcel2.readStrongBinder());
      } 
      paramcwx = null;
      parcel1.writeStrongBinder((IBinder)paramcwx);
      parcel1.writeString(paramString);
      parcel1.writeByteArray(paramArrayOfbyte);
      this.a.transact(1, parcel1, parcel2, 0);
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cyk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */