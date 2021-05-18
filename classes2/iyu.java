import android.view.View;
import com.santander.app.idsantander.presentation.IdSantanderEscolhaCelularActivity;

public class iyu implements View.OnClickListener {
  public iyu(IdSantanderEscolhaCelularActivity paramIdSantanderEscolhaCelularActivity) {}
  
  public void onClick(View paramView) {
    IdSantanderEscolhaCelularActivity.a(this.a, Boolean.valueOf(true));
    IdSantanderEscolhaCelularActivity.a(this.a).b(IdSantanderEscolhaCelularActivity.c(this.a).getText().toString());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iyu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */