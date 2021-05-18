import android.net.Uri;
import android.support.annotation.Nullable;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareModel;

public final class cap extends cal<ShareLinkContent, cap> {
  @Deprecated
  private String a;
  
  @Deprecated
  private String b;
  
  @Deprecated
  private Uri c;
  
  private String d;
  
  public cap a(ShareLinkContent paramShareLinkContent) {
    return (paramShareLinkContent == null) ? this : ((cap)super.a(paramShareLinkContent)).a(paramShareLinkContent.a()).b(paramShareLinkContent.c()).b(paramShareLinkContent.b()).c(paramShareLinkContent.d());
  }
  
  @Deprecated
  public cap a(@Nullable String paramString) {
    this.a = paramString;
    return this;
  }
  
  @Deprecated
  public cap b(@Nullable Uri paramUri) {
    this.c = paramUri;
    return this;
  }
  
  @Deprecated
  public cap b(@Nullable String paramString) {
    this.b = paramString;
    return this;
  }
  
  public ShareLinkContent b() {
    return new ShareLinkContent(this, null);
  }
  
  public cap c(@Nullable String paramString) {
    this.d = paramString;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */