import android.view.View;
import com.santander.app.agendamentos.activity.AgendamentosActivity;

public class fqn implements View.OnClickListener {
  public fqn(AgendamentosActivity paramAgendamentosActivity) {}
  
  public void onClick(View paramView) {
    if (AgendamentosActivity.i(this.a).getCurrentItem() > 0)
      AgendamentosActivity.i(this.a).setCurrentItem(AgendamentosActivity.i(this.a).getCurrentItem() - 1, true); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fqn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */