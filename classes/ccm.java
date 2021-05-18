import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.facebook.share.widget.LikeView;

public class ccm extends BroadcastReceiver {
  private ccm(LikeView paramLikeView) {}
  
  public void onReceive(Context paramContext, Intent paramIntent) {
    boolean bool2 = true;
    String str = paramIntent.getAction();
    Bundle bundle = paramIntent.getExtras();
    boolean bool1 = bool2;
    if (bundle != null) {
      String str1 = bundle.getString("com.facebook.sdk.LikeActionController.OBJECT_ID");
      bool1 = bool2;
      if (!bqq.a(str1))
        if (bqq.a(LikeView.b(this.a), str1)) {
          bool1 = bool2;
        } else {
          bool1 = false;
        }  
    } 
    if (bool1) {
      if ("com.facebook.sdk.LikeActionController.UPDATED".equals(str)) {
        LikeView.c(this.a);
        return;
      } 
      if ("com.facebook.sdk.LikeActionController.DID_ERROR".equals(str)) {
        if (LikeView.d(this.a) != null) {
          LikeView.d(this.a).a(bqa.a(bundle));
          return;
        } 
        return;
      } 
      if ("com.facebook.sdk.LikeActionController.DID_RESET".equals(str)) {
        LikeView.a(this.a, LikeView.b(this.a), LikeView.e(this.a));
        LikeView.c(this.a);
        return;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ccm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */