import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;

class dyn implements dyl {
  private IBinder a;
  
  dyn(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public cwx a() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      this.a.transact(1, parcel1, parcel2, 0);
      parcel2.readException();
      return cwy.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public cwx a(float paramFloat) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      parcel1.writeFloat(paramFloat);
      this.a.transact(4, parcel1, parcel2, 0);
      parcel2.readException();
      return cwy.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public cwx a(float paramFloat1, float paramFloat2) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      parcel1.writeFloat(paramFloat1);
      parcel1.writeFloat(paramFloat2);
      this.a.transact(3, parcel1, parcel2, 0);
      parcel2.readException();
      return cwy.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public cwx a(float paramFloat, int paramInt1, int paramInt2) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      parcel1.writeFloat(paramFloat);
      parcel1.writeInt(paramInt1);
      parcel1.writeInt(paramInt2);
      this.a.transact(6, parcel1, parcel2, 0);
      parcel2.readException();
      return cwy.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public cwx a(CameraPosition paramCameraPosition) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      if (paramCameraPosition != null) {
        parcel1.writeInt(1);
        paramCameraPosition.writeToParcel(parcel1, 0);
        this.a.transact(7, parcel1, parcel2, 0);
        parcel2.readException();
        return cwy.a(parcel2.readStrongBinder());
      } 
      parcel1.writeInt(0);
      this.a.transact(7, parcel1, parcel2, 0);
      parcel2.readException();
      return cwy.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public cwx a(LatLng paramLatLng) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      if (paramLatLng != null) {
        parcel1.writeInt(1);
        paramLatLng.writeToParcel(parcel1, 0);
        this.a.transact(8, parcel1, parcel2, 0);
        parcel2.readException();
        return cwy.a(parcel2.readStrongBinder());
      } 
      parcel1.writeInt(0);
      this.a.transact(8, parcel1, parcel2, 0);
      parcel2.readException();
      return cwy.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public cwx a(LatLng paramLatLng, float paramFloat) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      if (paramLatLng != null) {
        parcel1.writeInt(1);
        paramLatLng.writeToParcel(parcel1, 0);
        parcel1.writeFloat(paramFloat);
        this.a.transact(9, parcel1, parcel2, 0);
        parcel2.readException();
        return cwy.a(parcel2.readStrongBinder());
      } 
      parcel1.writeInt(0);
      parcel1.writeFloat(paramFloat);
      this.a.transact(9, parcel1, parcel2, 0);
      parcel2.readException();
      return cwy.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public cwx a(LatLngBounds paramLatLngBounds, int paramInt) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      if (paramLatLngBounds != null) {
        parcel1.writeInt(1);
        paramLatLngBounds.writeToParcel(parcel1, 0);
        parcel1.writeInt(paramInt);
        this.a.transact(10, parcel1, parcel2, 0);
        parcel2.readException();
        return cwy.a(parcel2.readStrongBinder());
      } 
      parcel1.writeInt(0);
      parcel1.writeInt(paramInt);
      this.a.transact(10, parcel1, parcel2, 0);
      parcel2.readException();
      return cwy.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public cwx a(LatLngBounds paramLatLngBounds, int paramInt1, int paramInt2, int paramInt3) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      if (paramLatLngBounds != null) {
        parcel1.writeInt(1);
        paramLatLngBounds.writeToParcel(parcel1, 0);
        parcel1.writeInt(paramInt1);
        parcel1.writeInt(paramInt2);
        parcel1.writeInt(paramInt3);
        this.a.transact(11, parcel1, parcel2, 0);
        parcel2.readException();
        return cwy.a(parcel2.readStrongBinder());
      } 
      parcel1.writeInt(0);
      parcel1.writeInt(paramInt1);
      parcel1.writeInt(paramInt2);
      parcel1.writeInt(paramInt3);
      this.a.transact(11, parcel1, parcel2, 0);
      parcel2.readException();
      return cwy.a(parcel2.readStrongBinder());
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
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      this.a.transact(2, parcel1, parcel2, 0);
      parcel2.readException();
      return cwy.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public cwx b(float paramFloat) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      parcel1.writeFloat(paramFloat);
      this.a.transact(5, parcel1, parcel2, 0);
      parcel2.readException();
      return cwy.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dyn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */