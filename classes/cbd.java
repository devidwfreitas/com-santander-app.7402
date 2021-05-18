import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.facebook.share.model.ShareMedia;
import com.facebook.share.model.ShareModel;
import com.facebook.share.model.SharePhoto;
import java.util.ArrayList;
import java.util.List;

public final class cbd extends caq<SharePhoto, cbd> {
  private Bitmap a;
  
  private Uri b;
  
  private boolean c;
  
  private String d;
  
  public static void b(Parcel paramParcel, int paramInt, List<SharePhoto> paramList) {
    ShareMedia[] arrayOfShareMedia = new ShareMedia[paramList.size()];
    for (int i = 0; i < paramList.size(); i++)
      arrayOfShareMedia[i] = (ShareMedia)paramList.get(i); 
    paramParcel.writeParcelableArray((Parcelable[])arrayOfShareMedia, paramInt);
  }
  
  public static List<SharePhoto> c(Parcel paramParcel) {
    List<ShareMedia> list = a(paramParcel);
    ArrayList<SharePhoto> arrayList = new ArrayList();
    for (ShareMedia shareMedia : list) {
      if (shareMedia instanceof SharePhoto)
        arrayList.add((SharePhoto)shareMedia); 
    } 
    return arrayList;
  }
  
  public cbd a(@Nullable Bitmap paramBitmap) {
    this.a = paramBitmap;
    return this;
  }
  
  public cbd a(@Nullable Uri paramUri) {
    this.b = paramUri;
    return this;
  }
  
  public cbd a(SharePhoto paramSharePhoto) {
    return (paramSharePhoto == null) ? this : ((cbd)super.a(paramSharePhoto)).a(paramSharePhoto.c()).a(paramSharePhoto.d()).a(paramSharePhoto.e()).a(paramSharePhoto.f());
  }
  
  public cbd a(@Nullable String paramString) {
    this.d = paramString;
    return this;
  }
  
  public cbd a(boolean paramBoolean) {
    this.c = paramBoolean;
    return this;
  }
  
  public Uri b() {
    return this.b;
  }
  
  public cbd b(Parcel paramParcel) {
    return a((SharePhoto)paramParcel.readParcelable(SharePhoto.class.getClassLoader()));
  }
  
  public Bitmap c() {
    return this.a;
  }
  
  public SharePhoto d() {
    return new SharePhoto(this, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cbd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */