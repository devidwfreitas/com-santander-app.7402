import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.AppGroupCreationContent;

public final class cab implements Parcelable.Creator<AppGroupCreationContent> {
  public AppGroupCreationContent a(Parcel paramParcel) {
    return new AppGroupCreationContent(paramParcel);
  }
  
  public AppGroupCreationContent[] a(int paramInt) {
    return new AppGroupCreationContent[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */