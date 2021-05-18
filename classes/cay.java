import android.support.annotation.Nullable;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareModel;
import com.facebook.share.model.ShareOpenGraphAction;
import com.facebook.share.model.ShareOpenGraphContent;

public final class cay extends cal<ShareOpenGraphContent, cay> {
  private ShareOpenGraphAction a;
  
  private String b;
  
  public cay a(@Nullable ShareOpenGraphAction paramShareOpenGraphAction) {
    if (paramShareOpenGraphAction == null) {
      paramShareOpenGraphAction = null;
      this.a = paramShareOpenGraphAction;
      return this;
    } 
    paramShareOpenGraphAction = (new caw()).a(paramShareOpenGraphAction).b();
    this.a = paramShareOpenGraphAction;
    return this;
  }
  
  public cay a(ShareOpenGraphContent paramShareOpenGraphContent) {
    return (paramShareOpenGraphContent == null) ? this : ((cay)super.a(paramShareOpenGraphContent)).a(paramShareOpenGraphContent.a()).a(paramShareOpenGraphContent.b());
  }
  
  public cay a(@Nullable String paramString) {
    this.b = paramString;
    return this;
  }
  
  public ShareOpenGraphContent b() {
    return new ShareOpenGraphContent(this, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cay.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */