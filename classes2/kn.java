import br.com.santander.dynamicauth.enums.DynamicAuthEnum;
import br.com.santander.dynamicauth.features.idsantander.a.a;
import br.com.santander.dynamicauth.models.DynamicAuthParameters;
import br.com.santander.dynamicauth.models.DynamicAuthResponse;

public class kn implements Runnable {
  public kn(a parama, String paramString) {}
  
  public void run() {
    a.a(this.b).finish();
    DynamicAuthParameters.getInstance().getCallBack().onSuccess(new DynamicAuthResponse(DynamicAuthEnum.ID_SANTANDER, this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */