import android.content.Context;
import android.os.AsyncTask;
import com.adjust.sdk.AdjustFactory;
import com.adjust.sdk.ILogger;
import com.adjust.sdk.OnDeviceIdsRead;
import com.adjust.sdk.Util;

public final class awh extends AsyncTask<Context, Void, String> {
  public awh(OnDeviceIdsRead paramOnDeviceIdsRead) {}
  
  protected String a(Context... paramVarArgs) {
    ILogger iLogger = AdjustFactory.getLogger();
    String str = Util.getPlayAdId(paramVarArgs[0]);
    iLogger.debug("GoogleAdId read " + str, new Object[0]);
    return str;
  }
  
  protected void a(String paramString) {
    AdjustFactory.getLogger();
    this.a.onGoogleAdIdRead(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\awh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */