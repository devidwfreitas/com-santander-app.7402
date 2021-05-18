import android.view.View;
import com.santander.app.formalizacaodigital.presentation.ListagemPropostasActivity;

public class ihm implements View.OnClickListener {
  public ihm(ListagemPropostasActivity paramListagemPropostasActivity) {}
  
  public void onClick(View paramView) {
    igl igl = (igl)paramView.getTag();
    frq.d("Outros_PropostasEmAberto_Acao", igl.b());
    this.a.a(igl);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ihm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */