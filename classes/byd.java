import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.internal.LikeContent;

public final class byd implements Parcelable.Creator<LikeContent> {
  public LikeContent a(Parcel paramParcel) {
    return new LikeContent(paramParcel);
  }
  
  public LikeContent[] a(int paramInt) {
    return new LikeContent[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\byd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */