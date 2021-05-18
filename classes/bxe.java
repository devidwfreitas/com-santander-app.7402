import android.content.Context;
import com.facebook.AccessToken;

final class bxe extends bgz {
  protected void a(AccessToken paramAccessToken1, AccessToken paramAccessToken2) {
    Context context = bhv.h();
    if (paramAccessToken2 == null) {
      bww.a((bww.g() + 1) % 1000);
      context.getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).edit().putInt("OBJECT_SUFFIX", bww.g()).apply();
      bww.h().clear();
      bww.i().b();
    } 
    bww.a((bww)null, "com.facebook.sdk.LikeActionController.DID_RESET");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bxe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */