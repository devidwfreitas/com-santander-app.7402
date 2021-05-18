import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.idsantander.presentation.IdSantanderHabilitacaoActivity;

class iwr implements View.OnClickListener {
  iwr(iwq paramiwq) {}
  
  public void onClick(View paramView) {
    String str = miq.C().f().A();
    if (str.equals(naz.OFERTAR_ID_TELA_OFERTA_ATIVACAO_CSO.getValue()) || str.equals(naz.CONVERSAO_ID_OBRIGATORIA_TELA_41_ATIVACAO_CSO.getValue())) {
      iwq.a(this.a).b();
      return;
    } 
    if (str.equals(naz.OFERTAR_ID_CSO_TRANSACIONAL.getValue()) || str.equals(naz.CONVERSAO_ID_OBRIGATORIA_TELA_41.getValue()) || str.equals(naz.CSO_TRANSACIONAL.getValue())) {
      iwq.a(this.a).c();
      return;
    } 
    iwq.b(this.a).startActivity(new Intent((Context)iwq.b(this.a), IdSantanderHabilitacaoActivity.class));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iwr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */