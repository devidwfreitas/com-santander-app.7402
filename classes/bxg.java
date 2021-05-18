import android.os.Bundle;

class bxg implements bxy {
  bxg(bww parambww, Bundle paramBundle) {}
  
  public void a() {
    if (bqq.a(bww.h(this.b))) {
      Bundle bundle = new Bundle();
      bundle.putString("com.facebook.platform.status.ERROR_DESCRIPTION", "Invalid Object Id");
      bww.b(this.b, "com.facebook.sdk.LikeActionController.DID_ERROR", bundle);
      return;
    } 
    biu biu = new biu();
    bxw bxw = new bxw(this.b, bww.h(this.b), bww.i(this.b));
    bxw.a(biu);
    biu.a(new bxh(this, bxw));
    biu.h();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bxg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */