import android.content.DialogInterface;
import com.santander.app.agendamentos.activity.DetalheAgendamentoActivity;

class fqw implements DialogInterface.OnClickListener {
  fqw(fqu paramfqu) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {
    frq.d("Outros_Agendamentos_DetalhesDoAgendamento_ConfirmaOCancelamento_Acao", "Nao");
    DetalheAgendamentoActivity.b(this.a.a).dismiss();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fqw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */