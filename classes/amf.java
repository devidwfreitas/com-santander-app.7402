import android.os.Parcel;
import android.os.Parcelable;
import br.com.santander.uisdk.comprovante.SantanderComprovante;

public final class amf implements Parcelable.Creator<SantanderComprovante> {
  public SantanderComprovante a(Parcel paramParcel) {
    return new SantanderComprovante(paramParcel);
  }
  
  public SantanderComprovante[] a(int paramInt) {
    return new SantanderComprovante[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\amf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */