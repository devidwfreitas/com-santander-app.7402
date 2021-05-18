import android.os.Parcel;

public class csc extends RuntimeException {
  public csc(String paramString, Parcel paramParcel) {
    super((new StringBuilder(String.valueOf(paramString).length() + 41)).append(paramString).append(" Parcel: pos=").append(i).append(" size=").append(j).toString());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\csc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */