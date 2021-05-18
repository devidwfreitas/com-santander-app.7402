import android.support.annotation.Nullable;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareModel;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class cbf extends cal<SharePhotoContent, cbf> {
  private final List<SharePhoto> a = new ArrayList<SharePhoto>();
  
  public cbf a(@Nullable SharePhoto paramSharePhoto) {
    if (paramSharePhoto != null)
      this.a.add((new cbd()).a(paramSharePhoto).d()); 
    return this;
  }
  
  public cbf a(SharePhotoContent paramSharePhotoContent) {
    return (paramSharePhotoContent == null) ? this : ((cbf)super.a(paramSharePhotoContent)).b(paramSharePhotoContent.a());
  }
  
  public cbf b(@Nullable List<SharePhoto> paramList) {
    if (paramList != null) {
      Iterator<SharePhoto> iterator = paramList.iterator();
      while (iterator.hasNext())
        a(iterator.next()); 
    } 
    return this;
  }
  
  public SharePhotoContent b() {
    return new SharePhotoContent(this, null);
  }
  
  public cbf c(@Nullable List<SharePhoto> paramList) {
    this.a.clear();
    b(paramList);
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cbf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */