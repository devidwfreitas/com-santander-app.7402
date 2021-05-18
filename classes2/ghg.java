import android.view.View;
import android.widget.AdapterView;
import com.santander.app.cartoes.bloqueio.presentation.BloqueioCartaoActivity;

public class ghg implements AdapterView.OnItemSelectedListener {
  public ghg(BloqueioCartaoActivity paramBloqueioCartaoActivity) {}
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    if (paramAdapterView.getItemIdAtPosition(paramInt) > 0L) {
      BloqueioCartaoActivity.b(this.a).setEnabled(true);
      BloqueioCartaoActivity.a(this.a, (ggx)paramAdapterView.getSelectedItem());
      String str = BloqueioCartaoActivity.e(this.a).a();
      paramInt = -1;
      switch (str.hashCode()) {
        default:
          switch (paramInt) {
            default:
              return;
            case 0:
              frq.d("Cartoes_Bloqueio_OpcoesMotivo_Acao", "Perda");
              return;
            case 1:
              break;
          } 
          break;
        case 77003322:
          if (str.equals("Perda"))
            paramInt = 0; 
        case 79151109:
          if (str.equals("Roubo"))
            paramInt = 1; 
      } 
      frq.d("Cartoes_Bloqueio_OpcoesMotivo_Acao", "Roubo");
      return;
    } 
    BloqueioCartaoActivity.b(this.a).setEnabled(false);
    BloqueioCartaoActivity.a(this.a, null);
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {
    BloqueioCartaoActivity.b(this.a).setEnabled(false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ghg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */