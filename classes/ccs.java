import com.facebook.share.model.ShareContent;

class ccs extends bny<ShareContent, bwo>.bnz {
  private ccs(ccq paramccq) {
    super(paramccq);
  }
  
  public bmr a(ShareContent paramShareContent) {
    byw.a(paramShareContent);
    bmr bmr = this.b.d();
    bnw.a(bmr, new cct(this, bmr, paramShareContent, this.b.d_()), ccq.b(paramShareContent.getClass()));
    return bmr;
  }
  
  public boolean a(ShareContent paramShareContent, boolean paramBoolean) {
    return (paramShareContent != null && ccq.a((Class)paramShareContent.getClass()));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ccs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */