public enum bnl {
  AppGroupCreate,
  AppGroupJoin,
  AppInvite,
  DeviceShare,
  GameRequest,
  Like,
  Login(0),
  Message(0),
  Share(1);
  
  private final int offset;
  
  static {
    Message = new bnl("Message", 2, 2);
    Like = new bnl("Like", 3, 3);
    GameRequest = new bnl("GameRequest", 4, 4);
    AppGroupCreate = new bnl("AppGroupCreate", 5, 5);
    AppGroupJoin = new bnl("AppGroupJoin", 6, 6);
    AppInvite = new bnl("AppInvite", 7, 7);
    DeviceShare = new bnl("DeviceShare", 8, 8);
    $VALUES = new bnl[] { Login, Share, Message, Like, GameRequest, AppGroupCreate, AppGroupJoin, AppInvite, DeviceShare };
  }
  
  bnl(int paramInt1) {
    this.offset = paramInt1;
  }
  
  public int toRequestCode() {
    return bhv.r() + this.offset;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bnl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */