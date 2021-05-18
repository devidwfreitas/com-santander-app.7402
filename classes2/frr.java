import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import com.ca.integration.CaMDOCallback;

final class frr extends CaMDOCallback {
  frr(Handler paramHandler) {
    super(paramHandler);
  }
  
  public void onError(int paramInt, Exception paramException) {
    Log.d("[CA MAA]", "errorCode=" + paramInt + " trace=" + Log.getStackTraceString(paramException));
  }
  
  public void onSuccess(Bundle paramBundle) {
    Log.d("[CA MAA]", "Successfully submitted transaction with Callback");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\frr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */