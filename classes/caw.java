import android.os.Parcel;
import com.facebook.share.model.ShareModel;
import com.facebook.share.model.ShareOpenGraphAction;
import com.facebook.share.model.ShareOpenGraphValueContainer;

public final class caw extends cbb<ShareOpenGraphAction, caw> {
  private static final String a = "og:type";
  
  public caw a(Parcel paramParcel) {
    return a((ShareOpenGraphAction)paramParcel.readParcelable(ShareOpenGraphAction.class.getClassLoader()));
  }
  
  public caw a(ShareOpenGraphAction paramShareOpenGraphAction) {
    return (paramShareOpenGraphAction == null) ? this : ((caw)super.a(paramShareOpenGraphAction)).a(paramShareOpenGraphAction.a());
  }
  
  public caw a(String paramString) {
    a("og:type", paramString);
    return this;
  }
  
  public ShareOpenGraphAction b() {
    return new ShareOpenGraphAction(this, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\caw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */