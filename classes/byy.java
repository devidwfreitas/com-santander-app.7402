import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareMediaContent;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.ShareVideoContent;

class byy extends byz {
  private byy() {
    super(null);
  }
  
  public void a(ShareLinkContent paramShareLinkContent) {
    if (!bqq.a(paramShareLinkContent.d()))
      throw new bhp("Cannot share link content with quote using the share api"); 
  }
  
  public void a(ShareMediaContent paramShareMediaContent) {
    throw new bhp("Cannot share ShareMediaContent using the share api");
  }
  
  public void a(SharePhoto paramSharePhoto) {
    byw.b(paramSharePhoto, this);
  }
  
  public void a(ShareVideoContent paramShareVideoContent) {
    if (!bqq.a(paramShareVideoContent.j()))
      throw new bhp("Cannot share video content with place IDs using the share api"); 
    if (!bqq.a(paramShareVideoContent.i()))
      throw new bhp("Cannot share video content with people IDs using the share api"); 
    if (!bqq.a(paramShareVideoContent.k()))
      throw new bhp("Cannot share video content with referrer URL using the share api"); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\byy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */