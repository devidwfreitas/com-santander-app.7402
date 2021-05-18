import android.support.annotation.Nullable;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareMedia;
import com.facebook.share.model.ShareMediaContent;
import com.facebook.share.model.ShareModel;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.ShareVideo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class cat extends cal<ShareMediaContent, cat> {
  private final List<ShareMedia> a = new ArrayList<ShareMedia>();
  
  public cat a(@Nullable ShareMedia paramShareMedia) {
    if (paramShareMedia != null) {
      SharePhoto sharePhoto;
      ShareVideo shareVideo;
      if (paramShareMedia instanceof SharePhoto) {
        sharePhoto = (new cbd()).a((SharePhoto)paramShareMedia).d();
      } else if (sharePhoto instanceof ShareVideo) {
        shareVideo = (new cbh()).a((ShareVideo)sharePhoto).b();
      } else {
        throw new IllegalArgumentException("medium must be either a SharePhoto or ShareVideo");
      } 
      this.a.add(shareVideo);
    } 
    return this;
  }
  
  public cat a(ShareMediaContent paramShareMediaContent) {
    return (paramShareMediaContent == null) ? this : ((cat)super.a(paramShareMediaContent)).b(paramShareMediaContent.a());
  }
  
  public cat b(@Nullable List<ShareMedia> paramList) {
    if (paramList != null) {
      Iterator<ShareMedia> iterator = paramList.iterator();
      while (iterator.hasNext())
        a(iterator.next()); 
    } 
    return this;
  }
  
  public ShareMediaContent b() {
    return new ShareMediaContent(this, null);
  }
  
  public cat c(@Nullable List<ShareMedia> paramList) {
    this.a.clear();
    b(paramList);
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */