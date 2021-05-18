import android.support.annotation.Nullable;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareModel;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.ShareVideo;
import com.facebook.share.model.ShareVideoContent;

public final class cbj extends cal<ShareVideoContent, cbj> {
  private String a;
  
  private String b;
  
  private SharePhoto c;
  
  private ShareVideo d;
  
  public cbj a(@Nullable SharePhoto paramSharePhoto) {
    if (paramSharePhoto == null) {
      paramSharePhoto = null;
      this.c = paramSharePhoto;
      return this;
    } 
    paramSharePhoto = (new cbd()).a(paramSharePhoto).d();
    this.c = paramSharePhoto;
    return this;
  }
  
  public cbj a(@Nullable ShareVideo paramShareVideo) {
    if (paramShareVideo == null)
      return this; 
    this.d = (new cbh()).a(paramShareVideo).b();
    return this;
  }
  
  public cbj a(ShareVideoContent paramShareVideoContent) {
    return (paramShareVideoContent == null) ? this : ((cbj)super.a(paramShareVideoContent)).a(paramShareVideoContent.a()).b(paramShareVideoContent.b()).a(paramShareVideoContent.c()).a(paramShareVideoContent.d());
  }
  
  public cbj a(@Nullable String paramString) {
    this.a = paramString;
    return this;
  }
  
  public cbj b(@Nullable String paramString) {
    this.b = paramString;
    return this;
  }
  
  public ShareVideoContent b() {
    return new ShareVideoContent(this, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cbj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */