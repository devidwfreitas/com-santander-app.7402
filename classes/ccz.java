import android.content.Context;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;

class ccz extends bny<ShareContent, bwo>.bnz {
  private ccz(ccv paramccv) {
    super(paramccv);
  }
  
  public bmr a(ShareContent paramShareContent) {
    ccv.a(this.b, (Context)ccv.a(this.b), paramShareContent, ccy.NATIVE);
    byw.b(paramShareContent);
    bmr bmr = this.b.d();
    bnw.a(bmr, new cda(this, bmr, paramShareContent, this.b.d_()), ccv.c(paramShareContent.getClass()));
    return bmr;
  }
  
  public Object a() {
    return ccy.NATIVE;
  }
  
  public boolean a(ShareContent paramShareContent, boolean paramBoolean) {
    boolean bool1;
    boolean bool2 = true;
    if (paramShareContent == null)
      return false; 
    if (!paramBoolean) {
      if (paramShareContent.l() != null) {
        paramBoolean = bnw.a(bzb.HASHTAG);
      } else {
        paramBoolean = true;
      } 
      bool1 = paramBoolean;
      if (paramShareContent instanceof ShareLinkContent) {
        bool1 = paramBoolean;
        if (!bqq.a(((ShareLinkContent)paramShareContent).d()))
          bool1 = paramBoolean & bnw.a(bzb.LINK_SHARE_QUOTES); 
      } 
    } else {
      bool1 = true;
    } 
    return (bool1 && ccv.b(paramShareContent.getClass())) ? bool2 : false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ccz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */