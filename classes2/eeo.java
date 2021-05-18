import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.PatternItem;
import java.util.List;

class eeo implements eem {
  private IBinder a;
  
  eeo(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public void a() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      this.a.transact(1, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(double paramDouble) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      parcel1.writeDouble(paramDouble);
      this.a.transact(5, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(float paramFloat) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      parcel1.writeFloat(paramFloat);
      this.a.transact(7, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(int paramInt) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      parcel1.writeInt(paramInt);
      this.a.transact(9, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(LatLng paramLatLng) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      if (paramLatLng != null) {
        parcel1.writeInt(1);
        paramLatLng.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.a.transact(3, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(cwx paramcwx) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      if (paramcwx != null) {
        IBinder iBinder = paramcwx.asBinder();
      } else {
        paramcwx = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramcwx);
      this.a.transact(23, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(List<PatternItem> paramList) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      parcel1.writeTypedList(paramList);
      this.a.transact(21, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(boolean paramBoolean) {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      if (paramBoolean)
        bool = true; 
      parcel1.writeInt(bool);
      this.a.transact(15, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public boolean a(eem parameem) {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      if (parameem != null) {
        IBinder iBinder = parameem.asBinder();
      } else {
        parameem = null;
      } 
      parcel1.writeStrongBinder((IBinder)parameem);
      this.a.transact(17, parcel1, parcel2, 0);
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
  
  public String b() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      this.a.transact(2, parcel1, parcel2, 0);
      parcel2.readException();
      return parcel2.readString();
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void b(float paramFloat) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      parcel1.writeFloat(paramFloat);
      this.a.transact(13, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void b(int paramInt) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      parcel1.writeInt(paramInt);
      this.a.transact(11, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void b(boolean paramBoolean) {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      if (paramBoolean)
        bool = true; 
      parcel1.writeInt(bool);
      this.a.transact(19, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public LatLng c() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      this.a.transact(4, parcel1, parcel2, 0);
      parcel2.readException();
      if (parcel2.readInt() != 0)
        return (LatLng)LatLng.CREATOR.createFromParcel(parcel2); 
      return null;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public double d() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      this.a.transact(6, parcel1, parcel2, 0);
      parcel2.readException();
      return parcel2.readDouble();
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public float e() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      this.a.transact(8, parcel1, parcel2, 0);
      parcel2.readException();
      return parcel2.readFloat();
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public int f() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      this.a.transact(10, parcel1, parcel2, 0);
      parcel2.readException();
      return parcel2.readInt();
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public int g() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      this.a.transact(12, parcel1, parcel2, 0);
      parcel2.readException();
      return parcel2.readInt();
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public float h() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      this.a.transact(14, parcel1, parcel2, 0);
      parcel2.readException();
      return parcel2.readFloat();
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public boolean i() {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      this.a.transact(16, parcel1, parcel2, 0);
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
  
  public int j() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      this.a.transact(18, parcel1, parcel2, 0);
      parcel2.readException();
      return parcel2.readInt();
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public boolean k() {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      this.a.transact(20, parcel1, parcel2, 0);
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
  
  public List<PatternItem> l() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      this.a.transact(22, parcel1, parcel2, 0);
      parcel2.readException();
      return parcel2.createTypedArrayList(PatternItem.CREATOR);
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public cwx m() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      this.a.transact(24, parcel1, parcel2, 0);
      parcel2.readException();
      return cwy.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eeo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */