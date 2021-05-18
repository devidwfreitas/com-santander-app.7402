import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import android.view.View;
import android.widget.Toast;

final class gqo implements View.OnClickListener {
  gqo(String paramString) {}
  
  public void onClick(View paramView) {
    String str;
    paramView = null;
    if (this.a.equals("VG")) {
      str = "https://www.soliciteseucartao.com.br/cartao/123?utm_source=ib&utm_medium=Mobile&utm_campaing=vg&utm_term=&utm_content=123";
      frq.d("Cartoes_MenuLateral_Cartoes_Submenu_SoliciteSeuCartao_Segmento_VG_PopUp_Acao", "Continuar");
    } else if (this.a.equals("CL")) {
      str = "https://www.soliciteseucartao.com.br/cartao/free?utm_source=ib&utm_medium=Mobile&utm_campaing=pf&utm_term=&utm_content=free";
      frq.d("Cartoes_MenuLateral_Cartoes_Submenu_SoliciteSeuCartao_Segmento_CL_PopUp_Acao", "Continuar");
    } 
    try {
      Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
      gpu.m().startActivity(intent);
    } catch (ActivityNotFoundException activityNotFoundException) {
      Toast.makeText((Context)gpu.m(), "", 1).show();
      Log.e("Error", activityNotFoundException.toString());
    } 
    gpu.o().dismiss();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gqo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */