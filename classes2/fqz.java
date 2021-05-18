import android.app.Activity;
import android.view.View;
import com.santander.app.agendamentos.activity.GerarComprovanteAgendamentoActivity;

public class fqz implements View.OnClickListener {
  public fqz(GerarComprovanteAgendamentoActivity paramGerarComprovanteAgendamentoActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Outros_Agendamentos_Comprovante_Acao", "Compartilhar");
    String str = GerarComprovanteAgendamentoActivity.a(this.a).b();
    myj.a((Activity)GerarComprovanteAgendamentoActivity.a(this.a), "Cancelamento de Agendamento " + GerarComprovanteAgendamentoActivity.b(this.a).l(), "", str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fqz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */