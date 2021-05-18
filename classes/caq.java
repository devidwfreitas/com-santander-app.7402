import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareMedia;
import com.facebook.share.model.ShareModel;
import java.util.ArrayList;
import java.util.List;

public abstract class caq<M extends ShareMedia, B extends caq> implements cau<M, B> {
  private Bundle a = new Bundle();
  
  static List<ShareMedia> a(Parcel paramParcel) {
    Parcelable[] arrayOfParcelable = paramParcel.readParcelableArray(ShareMedia.class.getClassLoader());
    ArrayList<ShareMedia> arrayList = new ArrayList(arrayOfParcelable.length);
    int j = arrayOfParcelable.length;
    for (int i = 0; i < j; i++)
      arrayList.add((ShareMedia)arrayOfParcelable[i]); 
    return arrayList;
  }
  
  static void a(Parcel paramParcel, int paramInt, List<ShareMedia> paramList) {
    paramParcel.writeParcelableArray((Parcelable[])paramList.toArray(), paramInt);
  }
  
  @Deprecated
  public B a(Bundle paramBundle) {
    this.a.putAll(paramBundle);
    return (B)this;
  }
  
  public B a(M paramM) {
    return (B)((paramM == null) ? this : (Object)a(paramM.a()));
  }
  
  @Deprecated
  public B a(String paramString1, String paramString2) {
    this.a.putString(paramString1, paramString2);
    return (B)this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\caq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */