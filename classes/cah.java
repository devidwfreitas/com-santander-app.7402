import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.GameRequestContent;

public final class cah implements Parcelable.Creator<GameRequestContent> {
  public GameRequestContent a(Parcel paramParcel) {
    return new GameRequestContent(paramParcel);
  }
  
  public GameRequestContent[] a(int paramInt) {
    return new GameRequestContent[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cah.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */