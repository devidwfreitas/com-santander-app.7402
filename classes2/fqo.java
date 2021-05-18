import android.view.View;
import com.santander.app.agendamentos.activity.AgendamentosActivity;

public class fqo implements View.OnClickListener {
  public fqo(AgendamentosActivity paramAgendamentosActivity) {}
  
  public void onClick(View paramView) {
    if (AgendamentosActivity.i(this.a).getCurrentItem() < AgendamentosActivity.i(this.a).getAdapter().getCount() - 1)
      AgendamentosActivity.i(this.a).setCurrentItem(AgendamentosActivity.i(this.a).getCurrentItem() + 1, true); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fqo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */