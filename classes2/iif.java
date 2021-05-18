import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;

class iif implements View.OnClickListener {
  iif(iid paramiid) {}
  
  public void onClick(View paramView) {
    frq.d("Investimentos_RendaFixa_Aplicar_Comprovante_Acao", "Fechar");
    Intent intent = new Intent((Context)this.a.getActivity(), HomeLogadaActivity.class);
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iif.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */