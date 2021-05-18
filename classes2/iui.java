import android.view.View;
import android.widget.Adapter;
import com.santander.app.MinhaConta;
import com.santander.app.homenaologada.presentation.HomeActivity;

public class iui implements guh {
  public iui(HomeActivity paramHomeActivity) {}
  
  public void a(Adapter paramAdapter, View paramView, int paramInt) {
    irz irz = (irz)paramAdapter.getItem(paramInt);
    frq.d("Login_Acao", "SelecionarApp");
    frq.d("Login_APP", MinhaConta.b().getString(irz.c()));
    HomeActivity.a(this.a).a(irz, paramView, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iui.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */