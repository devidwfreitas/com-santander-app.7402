import android.view.View;
import com.santander.app.idsantander.presentation.IdSantanderEscolhaCelularActivity;

public class iyp implements View.OnClickListener {
  public iyp(IdSantanderEscolhaCelularActivity paramIdSantanderEscolhaCelularActivity) {}
  
  public void onClick(View paramView) {
    IdSantanderEscolhaCelularActivity.a(this.a, Boolean.valueOf(true));
    IdSantanderEscolhaCelularActivity.a(this.a).a(IdSantanderEscolhaCelularActivity.b(this.a).getSelectedItem());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iyp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */