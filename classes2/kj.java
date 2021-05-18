import android.view.View;
import br.com.santander.dynamicauth.enums.DynamicAuthEnum;
import br.com.santander.dynamicauth.features.cso.a.a;
import br.com.santander.dynamicauth.models.DynamicAuthParameters;
import br.com.santander.dynamicauth.models.DynamicAuthResponse;

public class kj implements View.OnClickListener {
  public kj(a parama) {}
  
  public void onClick(View paramView) {
    a.b(this.a).finish();
    DynamicAuthParameters.getInstance().getCallBack().onSuccess(new DynamicAuthResponse(DynamicAuthEnum.CSO_SEQUENCIA, a.a(this.a)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */