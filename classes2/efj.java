import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.maps.model.Tile;

class efj implements efh {
  private IBinder a;
  
  efj(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public Tile a(int paramInt1, int paramInt2, int paramInt3) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
      parcel1.writeInt(paramInt1);
      parcel1.writeInt(paramInt2);
      parcel1.writeInt(paramInt3);
      this.a.transact(1, parcel1, parcel2, 0);
      parcel2.readException();
      if (parcel2.readInt() != 0)
        return (Tile)Tile.CREATOR.createFromParcel(parcel2); 
      return null;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public IBinder asBinder() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\efj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */