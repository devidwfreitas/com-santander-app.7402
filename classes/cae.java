import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.AppInviteContent;

public final class cae implements Parcelable.Creator<AppInviteContent> {
  public AppInviteContent a(Parcel paramParcel) {
    return new AppInviteContent(paramParcel);
  }
  
  public AppInviteContent[] a(int paramInt) {
    return new AppInviteContent[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cae.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */