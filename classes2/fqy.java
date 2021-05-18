import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.agendamentos.activity.GerarComprovanteAgendamentoActivity;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;

public class fqy implements View.OnClickListener {
  public fqy(GerarComprovanteAgendamentoActivity paramGerarComprovanteAgendamentoActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Outros_Agendamentos_Comprovante_Acao", "Fechar");
    Intent intent = new Intent((Context)this.a, HomeLogadaActivity.class);
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fqy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */