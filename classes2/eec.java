import android.os.RemoteException;
import com.google.android.gms.maps.model.Tile;
import com.google.android.gms.maps.model.TileOverlayOptions;

public class eec implements eee {
  private final efh c = TileOverlayOptions.a(this.a);
  
  public eec(TileOverlayOptions paramTileOverlayOptions) {}
  
  public Tile a(int paramInt1, int paramInt2, int paramInt3) {
    try {
      return this.c.a(paramInt1, paramInt2, paramInt3);
    } catch (RemoteException remoteException) {
      return null;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eec.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */