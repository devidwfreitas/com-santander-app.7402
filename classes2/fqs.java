import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import com.santander.app.agendamentos.activity.AgendamentosDetalheActivity;
import com.santander.app.agendamentos.activity.DetalheAgendamentoActivity;
import java.io.Serializable;

public class fqs implements AdapterView.OnItemClickListener {
  public fqs(AgendamentosDetalheActivity paramAgendamentosDetalheActivity) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    if (paramInt != 0) {
      frb frb = (frb)AgendamentosDetalheActivity.a(this.a).getItemAtPosition(paramInt);
      Intent intent = new Intent((Context)this.a, DetalheAgendamentoActivity.class);
      intent.putExtra("EXTRAITEMDETALHEAGENDAMENTO", (Serializable)frb);
      this.a.startActivity(intent);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fqs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */