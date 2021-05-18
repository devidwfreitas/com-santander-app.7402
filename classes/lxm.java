import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.santander.app.seguros.ui.sinister.activities.ContestationActivity;
import com.santander.app.seguros.ui.sinister.activities.MySinisterActivity;

public class lxm extends Fragment {
  private ContestationActivity a;
  
  public static lxm a() {
    Bundle bundle = new Bundle();
    lxm lxm1 = new lxm();
    lxm1.setArguments(bundle);
    return lxm1;
  }
  
  private void b() {
    if (this.a.d()) {
      frq.d("Seguros_Sinistro_MeusSinistros_PagamentoAprovado_Contestacao_Acao", "Avancar");
      return;
    } 
    frq.d("Seguros_Sinistro_MeusSinistros_PagamentoRecusado_Contestacao_Acao", "Avancar");
  }
  
  @nfq
  public void a(kxd paramkxd) {
    Intent intent = new Intent((Context)this.a, MySinisterActivity.class);
    intent.setFlags(67108864);
    startActivity(intent);
  }
  
  @nfq
  public void a(kxi paramkxi) {
    if (paramkxi.a) {
      b();
      this.a.close();
      Intent intent = new Intent((Context)this.a, MySinisterActivity.class);
      intent.setFlags(67108864);
      startActivity(intent);
    } 
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
    if (paramContext instanceof ContestationActivity)
      this.a = (ContestationActivity)paramContext; 
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    this.a.a(getResources().getString(2131298242), true);
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    return paramLayoutInflater.inflate(2130969088, paramViewGroup, false);
  }
  
  public void onPause() {
    super.onPause();
    kws.a().b().c(this);
  }
  
  public void onResume() {
    super.onResume();
    kws.a().b().b(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\lxm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */