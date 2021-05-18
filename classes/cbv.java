import com.facebook.share.model.AppGroupCreationContent;

class cbv extends bny<AppGroupCreationContent, cbu>.bnz {
  private cbv(cbr paramcbr) {
    super(paramcbr);
  }
  
  public bmr a(AppGroupCreationContent paramAppGroupCreationContent) {
    bmr bmr = this.b.d();
    bnw.a(bmr, "game_group_create", bzz.a(paramAppGroupCreationContent));
    return bmr;
  }
  
  public boolean a(AppGroupCreationContent paramAppGroupCreationContent, boolean paramBoolean) {
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cbv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */