import android.os.IBinder;
import android.os.Parcel;

class cuw implements cuu {
  private IBinder a;
  
  cuw(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public cwx a() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGoogleCertificatesApi");
      this.a.transact(1, parcel1, parcel2, 0);
      parcel2.readException();
      return cwy.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public boolean a(String paramString, cwx paramcwx) {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGoogleCertificatesApi");
      parcel1.writeString(paramString);
      if (paramcwx != null) {
        IBinder iBinder = paramcwx.asBinder();
      } else {
        paramString = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramString);
      this.a.transact(3, parcel1, parcel2, 0);
      parcel2.readException();
      int i = parcel2.readInt();
      if (i != 0)
        bool = true; 
      return bool;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public IBinder asBinder() {
    return this.a;
  }
  
  public cwx b() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGoogleCertificatesApi");
      this.a.transact(2, parcel1, parcel2, 0);
      parcel2.readException();
      return cwy.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public boolean b(String paramString, cwx paramcwx) {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGoogleCertificatesApi");
      parcel1.writeString(paramString);
      if (paramcwx != null) {
        IBinder iBinder = paramcwx.asBinder();
      } else {
        paramString = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramString);
      this.a.transact(4, parcel1, parcel2, 0);
      parcel2.readException();
      int i = parcel2.readInt();
      if (i != 0)
        bool = true; 
      return bool;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cuw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */