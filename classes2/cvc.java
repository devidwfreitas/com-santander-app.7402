import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.zzah;

class cvc implements cva {
  private IBinder a;
  
  cvc(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public cwx a(cwx paramcwx, int paramInt1, int paramInt2) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.common.internal.ISignInButtonCreator");
      if (paramcwx != null) {
        IBinder iBinder = paramcwx.asBinder();
        parcel1.writeStrongBinder(iBinder);
        parcel1.writeInt(paramInt1);
        parcel1.writeInt(paramInt2);
        this.a.transact(1, parcel1, parcel2, 0);
        parcel2.readException();
        return cwy.a(parcel2.readStrongBinder());
      } 
      paramcwx = null;
      parcel1.writeStrongBinder((IBinder)paramcwx);
      parcel1.writeInt(paramInt1);
      parcel1.writeInt(paramInt2);
      this.a.transact(1, parcel1, parcel2, 0);
      parcel2.readException();
      paramcwx = cwy.a(parcel2.readStrongBinder());
      return paramcwx;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public cwx a(cwx paramcwx, zzah paramzzah) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.common.internal.ISignInButtonCreator");
      if (paramcwx != null) {
        IBinder iBinder = paramcwx.asBinder();
      } else {
        paramcwx = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramcwx);
      if (paramzzah != null) {
        parcel1.writeInt(1);
        paramzzah.writeToParcel(parcel1, 0);
        this.a.transact(2, parcel1, parcel2, 0);
        parcel2.readException();
        paramcwx = cwy.a(parcel2.readStrongBinder());
        return paramcwx;
      } 
      parcel1.writeInt(0);
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cvc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */