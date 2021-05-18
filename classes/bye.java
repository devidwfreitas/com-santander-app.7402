import com.facebook.share.internal.LikeContent;
import com.facebook.share.model.ShareModel;

public class bye implements cau<LikeContent, bye> {
  private String a;
  
  private String b;
  
  public bye a(LikeContent paramLikeContent) {
    return (paramLikeContent == null) ? this : a(paramLikeContent.a()).b(paramLikeContent.b());
  }
  
  public bye a(String paramString) {
    this.a = paramString;
    return this;
  }
  
  public bye b(String paramString) {
    this.b = paramString;
    return this;
  }
  
  public LikeContent b() {
    return new LikeContent(this, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bye.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */