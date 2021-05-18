import android.content.Context;
import br.com.santander.dynamicauth.DynamicAuth;
import br.com.santander.dynamicauth.exception.DynamicAuthException;
import br.com.santander.dynamicauth.interfaces.DynamicAuthCallBack;
import br.com.santander.dynamicauth.models.OSGParametersModel;

public class mzz {
  public static void a(Context paramContext, OSGParametersModel paramOSGParametersModel, DynamicAuthCallBack paramDynamicAuthCallBack) {
    try {
      DynamicAuth.challenge(paramContext, paramOSGParametersModel, paramDynamicAuthCallBack);
      return;
    } catch (DynamicAuthException dynamicAuthException) {
      dynamicAuthException.printStackTrace();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mzz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */