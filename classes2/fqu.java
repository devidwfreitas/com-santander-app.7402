import android.app.AlertDialog;
import android.content.Context;
import android.view.View;
import com.santander.app.agendamentos.activity.DetalheAgendamentoActivity;

public class fqu implements View.OnClickListener {
  public fqu(DetalheAgendamentoActivity paramDetalheAgendamentoActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Outros_Agendamentos_DetalhesDoAgendamento_Acao", "Cancelar");
    AlertDialog.Builder builder = new AlertDialog.Builder((Context)this.a);
    builder.setView(this.a.getLayoutInflater().inflate(2130968957, null)).setCancelable(false).setNegativeButton(this.a.getResources().getString(2131296676), new fqw(this)).setPositiveButton(this.a.getResources().getString(2131296682), new fqv(this));
    DetalheAgendamentoActivity.a(this.a, builder.create());
    DetalheAgendamentoActivity.b(this.a).show();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fqu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */