import android.os.IBinder;
import android.os.Parcel;
import java.util.List;

class eeu implements ees {
  private IBinder a;
  
  eeu(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public int a() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
      this.a.transact(1, parcel1, parcel2, 0);
      parcel2.readException();
      return parcel2.readInt();
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public boolean a(ees paramees) {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
      if (paramees != null) {
        IBinder iBinder = paramees.asBinder();
      } else {
        paramees = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramees);
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
  
  public int b() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
      this.a.transact(2, parcel1, parcel2, 0);
      parcel2.readException();
      return parcel2.readInt();
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public List<IBinder> c() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
      this.a.transact(3, parcel1, parcel2, 0);
      parcel2.readException();
      return parcel2.createBinderArrayList();
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
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
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
  
  public int e() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
      this.a.transact(6, parcel1, parcel2, 0);
      parcel2.readException();
      return parcel2.readInt();
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eeu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */