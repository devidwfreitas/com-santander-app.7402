import android.os.Parcel;
import com.facebook.share.model.ShareHashtag;
import com.facebook.share.model.ShareModel;

public class can implements cau<ShareHashtag, can> {
  private String a;
  
  public can a(Parcel paramParcel) {
    return a((ShareHashtag)paramParcel.readParcelable(ShareHashtag.class.getClassLoader()));
  }
  
  public can a(ShareHashtag paramShareHashtag) {
    return (paramShareHashtag == null) ? this : a(paramShareHashtag.a());
  }
  
  public can a(String paramString) {
    this.a = paramString;
    return this;
  }
  
  public String b() {
    return this.a;
  }
  
  public ShareHashtag c() {
    return new ShareHashtag(this, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\can.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */