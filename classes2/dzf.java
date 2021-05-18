import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.google.android.gms.maps.model.StreetViewPanoramaLocation;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;

class dzf implements dzd {
  private IBinder a;
  
  dzf(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public StreetViewPanoramaOrientation a(cwx paramcwx) {
    cwx cwx1 = null;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      StreetViewPanoramaOrientation streetViewPanoramaOrientation;
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      if (paramcwx != null) {
        IBinder iBinder = paramcwx.asBinder();
      } else {
        paramcwx = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramcwx);
      this.a.transact(18, parcel1, parcel2, 0);
      parcel2.readException();
      paramcwx = cwx1;
      if (parcel2.readInt() != 0)
        streetViewPanoramaOrientation = (StreetViewPanoramaOrientation)StreetViewPanoramaOrientation.CREATOR.createFromParcel(parcel2); 
      return streetViewPanoramaOrientation;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public cwx a(StreetViewPanoramaOrientation paramStreetViewPanoramaOrientation) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      if (paramStreetViewPanoramaOrientation != null) {
        parcel1.writeInt(1);
        paramStreetViewPanoramaOrientation.writeToParcel(parcel1, 0);
        this.a.transact(19, parcel1, parcel2, 0);
        parcel2.readException();
        return cwy.a(parcel2.readStrongBinder());
      } 
      parcel1.writeInt(0);
      this.a.transact(19, parcel1, parcel2, 0);
      parcel2.readException();
      return cwy.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(LatLng paramLatLng) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      if (paramLatLng != null) {
        parcel1.writeInt(1);
        paramLatLng.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.a.transact(12, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(LatLng paramLatLng, int paramInt) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      if (paramLatLng != null) {
        parcel1.writeInt(1);
        paramLatLng.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      parcel1.writeInt(paramInt);
      this.a.transact(13, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(StreetViewPanoramaCamera paramStreetViewPanoramaCamera, long paramLong) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      if (paramStreetViewPanoramaCamera != null) {
        parcel1.writeInt(1);
        paramStreetViewPanoramaCamera.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      parcel1.writeLong(paramLong);
      this.a.transact(9, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(dzv paramdzv) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      if (paramdzv != null) {
        IBinder iBinder = paramdzv.asBinder();
      } else {
        paramdzv = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramdzv);
      this.a.transact(16, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(dzy paramdzy) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      if (paramdzy != null) {
        IBinder iBinder = paramdzy.asBinder();
      } else {
        paramdzy = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramdzy);
      this.a.transact(15, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(eab parameab) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      if (parameab != null) {
        IBinder iBinder = parameab.asBinder();
      } else {
        parameab = null;
      } 
      parcel1.writeStrongBinder((IBinder)parameab);
      this.a.transact(17, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(eae parameae) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      if (parameae != null) {
        IBinder iBinder = parameae.asBinder();
      } else {
        parameae = null;
      } 
      parcel1.writeStrongBinder((IBinder)parameae);
      this.a.transact(20, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(String paramString) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      parcel1.writeString(paramString);
      this.a.transact(11, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(boolean paramBoolean) {
    boolean bool = true;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      if (!paramBoolean)
        bool = false; 
      parcel1.writeInt(bool);
      this.a.transact(1, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public boolean a() {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      this.a.transact(5, parcel1, parcel2, 0);
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
  
  public void b(boolean paramBoolean) {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      if (paramBoolean)
        bool = true; 
      parcel1.writeInt(bool);
      this.a.transact(2, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public boolean b() {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      this.a.transact(6, parcel1, parcel2, 0);
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
  
  public void c(boolean paramBoolean) {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      if (paramBoolean)
        bool = true; 
      parcel1.writeInt(bool);
      this.a.transact(3, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public boolean c() {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      this.a.transact(7, parcel1, parcel2, 0);
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
  
  public void d(boolean paramBoolean) {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
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
  
  public boolean d() {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      this.a.transact(8, parcel1, parcel2, 0);
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
  
  public StreetViewPanoramaCamera e() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      this.a.transact(10, parcel1, parcel2, 0);
      parcel2.readException();
      if (parcel2.readInt() != 0)
        return (StreetViewPanoramaCamera)StreetViewPanoramaCamera.CREATOR.createFromParcel(parcel2); 
      return null;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public StreetViewPanoramaLocation f() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      this.a.transact(14, parcel1, parcel2, 0);
      parcel2.readException();
      if (parcel2.readInt() != 0)
        return (StreetViewPanoramaLocation)StreetViewPanoramaLocation.CREATOR.createFromParcel(parcel2); 
      return null;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dzf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */