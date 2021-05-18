import android.graphics.Bitmap;
import android.os.IBinder;
import android.os.Parcel;

class eel implements eej {
  private IBinder a;
  
  eel(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public cwx a() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
      this.a.transact(4, parcel1, parcel2, 0);
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
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
      parcel1.writeFloat(paramFloat);
      this.a.transact(5, parcel1, parcel2, 0);
      parcel2.readException();
      return cwy.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public cwx a(int paramInt) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
      parcel1.writeInt(paramInt);
      this.a.transact(1, parcel1, parcel2, 0);
      parcel2.readException();
      return cwy.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public cwx a(Bitmap paramBitmap) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
      if (paramBitmap != null) {
        parcel1.writeInt(1);
        paramBitmap.writeToParcel(parcel1, 0);
        this.a.transact(6, parcel1, parcel2, 0);
        parcel2.readException();
        return cwy.a(parcel2.readStrongBinder());
      } 
      parcel1.writeInt(0);
      this.a.transact(6, parcel1, parcel2, 0);
      parcel2.readException();
      return cwy.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public cwx a(String paramString) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
      parcel1.writeString(paramString);
      this.a.transact(2, parcel1, parcel2, 0);
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
  
  public cwx b(String paramString) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
      parcel1.writeString(paramString);
      this.a.transact(3, parcel1, parcel2, 0);
      parcel2.readException();
      return cwy.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public cwx c(String paramString) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
      parcel1.writeString(paramString);
      this.a.transact(7, parcel1, parcel2, 0);
      parcel2.readException();
      return cwy.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */