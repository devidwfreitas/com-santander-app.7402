import android.os.Parcel;
import com.facebook.share.model.ShareOpenGraphObject;

public final class cba extends cbb<ShareOpenGraphObject, cba> {
  public cba() {
    a("fbsdk:create_object", true);
  }
  
  cba a(Parcel paramParcel) {
    return a((ShareOpenGraphObject)paramParcel.readParcelable(ShareOpenGraphObject.class.getClassLoader()));
  }
  
  public ShareOpenGraphObject b() {
    return new ShareOpenGraphObject(this, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cba.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */