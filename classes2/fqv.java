import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import com.santander.app.agendamentos.activity.CancelarAgendamentoActivity;
import com.santander.app.agendamentos.activity.DetalheAgendamentoActivity;
import java.io.Serializable;

class fqv implements DialogInterface.OnClickListener {
  fqv(fqu paramfqu) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {
    frq.d("Outros_Agendamentos_DetalhesDoAgendamento_ConfirmaOCancelamento_Acao", "Sim");
    Intent intent = new Intent((Context)this.a.a.i, CancelarAgendamentoActivity.class);
    DetalheAgendamentoActivity.a(this.a.a).O("1");
    intent.putExtra("EXTRADADOS", (Serializable)DetalheAgendamentoActivity.a(this.a.a));
    this.a.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fqv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */