import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.StreetViewPanoramaOptions;

class eau implements eas {
  private IBinder a;
  
  eau(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public dyl a() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
      this.a.transact(4, parcel1, parcel2, 0);
      parcel2.readException();
      return dym.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public dyx a(cwx paramcwx, GoogleMapOptions paramGoogleMapOptions) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
      if (paramcwx != null) {
        IBinder iBinder = paramcwx.asBinder();
      } else {
        paramcwx = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramcwx);
      if (paramGoogleMapOptions != null) {
        parcel1.writeInt(1);
        paramGoogleMapOptions.writeToParcel(parcel1, 0);
        this.a.transact(3, parcel1, parcel2, 0);
        parcel2.readException();
        return dyy.a(parcel2.readStrongBinder());
      } 
      parcel1.writeInt(0);
      this.a.transact(3, parcel1, parcel2, 0);
      parcel2.readException();
      return dyy.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public dzj a(cwx paramcwx, StreetViewPanoramaOptions paramStreetViewPanoramaOptions) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
      if (paramcwx != null) {
        IBinder iBinder = paramcwx.asBinder();
      } else {
        paramcwx = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramcwx);
      if (paramStreetViewPanoramaOptions != null) {
        parcel1.writeInt(1);
        paramStreetViewPanoramaOptions.writeToParcel(parcel1, 0);
        this.a.transact(7, parcel1, parcel2, 0);
        parcel2.readException();
        return dzk.a(parcel2.readStrongBinder());
      } 
      parcel1.writeInt(0);
      this.a.transact(7, parcel1, parcel2, 0);
      parcel2.readException();
      return dzk.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(cwx paramcwx) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
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
  
  public void a(cwx paramcwx, int paramInt) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
      if (paramcwx != null) {
        IBinder iBinder = paramcwx.asBinder();
      } else {
        paramcwx = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramcwx);
      parcel1.writeInt(paramInt);
      this.a.transact(6, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public IBinder asBinder() {
    return this.a;
  }
  
  public dyu b(cwx paramcwx) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
      if (paramcwx != null) {
        IBinder iBinder = paramcwx.asBinder();
        parcel1.writeStrongBinder(iBinder);
        this.a.transact(2, parcel1, parcel2, 0);
        parcel2.readException();
        return dyv.a(parcel2.readStrongBinder());
      } 
      paramcwx = null;
      parcel1.writeStrongBinder((IBinder)paramcwx);
      this.a.transact(2, parcel1, parcel2, 0);
      parcel2.readException();
      return dyv.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public eej b() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
      this.a.transact(5, parcel1, parcel2, 0);
      parcel2.readException();
      return eek.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public dzg c(cwx paramcwx) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
      if (paramcwx != null) {
        IBinder iBinder = paramcwx.asBinder();
        parcel1.writeStrongBinder(iBinder);
        this.a.transact(8, parcel1, parcel2, 0);
        parcel2.readException();
        return dzh.a(parcel2.readStrongBinder());
      } 
      paramcwx = null;
      parcel1.writeStrongBinder((IBinder)paramcwx);
      this.a.transact(8, parcel1, parcel2, 0);
      parcel2.readException();
      return dzh.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eau.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */