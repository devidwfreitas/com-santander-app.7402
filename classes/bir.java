import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.GraphRequest;

public final class bir implements Parcelable.Creator<GraphRequest.ParcelableResourceWithMimeType> {
  public GraphRequest.ParcelableResourceWithMimeType a(Parcel paramParcel) {
    return new GraphRequest.ParcelableResourceWithMimeType(paramParcel, null);
  }
  
  public GraphRequest.ParcelableResourceWithMimeType[] a(int paramInt) {
    return new GraphRequest.ParcelableResourceWithMimeType[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bir.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */