import com.facebook.share.model.GameRequestContent;

class ccb extends bny<GameRequestContent, cca>.bnz {
  private ccb(cbx paramcbx) {
    super(paramcbx);
  }
  
  public bmr a(GameRequestContent paramGameRequestContent) {
    bwu.a(paramGameRequestContent);
    bmr bmr = this.b.d();
    bnw.a(bmr, "apprequests", bzz.a(paramGameRequestContent));
    return bmr;
  }
  
  public boolean a(GameRequestContent paramGameRequestContent, boolean paramBoolean) {
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ccb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */