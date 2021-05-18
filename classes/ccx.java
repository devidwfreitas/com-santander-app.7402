import android.content.Context;
import android.os.Bundle;
import com.facebook.share.internal.ShareFeedContent;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;

class ccx extends bny<ShareContent, bwo>.bnz {
  private ccx(ccv paramccv) {
    super(paramccv);
  }
  
  public bmr a(ShareContent paramShareContent) {
    ccv.a(this.b, (Context)ccv.c(this.b), paramShareContent, ccy.FEED);
    bmr bmr = this.b.d();
    if (paramShareContent instanceof ShareLinkContent) {
      ShareLinkContent shareLinkContent = (ShareLinkContent)paramShareContent;
      byw.c((ShareContent)shareLinkContent);
      bundle = bzz.b(shareLinkContent);
      bnw.a(bmr, "feed", bundle);
      return bmr;
    } 
    Bundle bundle = bzz.a((ShareFeedContent)bundle);
    bnw.a(bmr, "feed", bundle);
    return bmr;
  }
  
  public Object a() {
    return ccy.FEED;
  }
  
  public boolean a(ShareContent paramShareContent, boolean paramBoolean) {
    return (paramShareContent instanceof ShareLinkContent || paramShareContent instanceof ShareFeedContent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ccx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */