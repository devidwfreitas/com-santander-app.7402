import android.view.View;
import com.santander.app.idsantander.presentation.IdSantanderEscolhaCelularActivity;

public class iyq implements View.OnFocusChangeListener {
  public iyq(IdSantanderEscolhaCelularActivity paramIdSantanderEscolhaCelularActivity) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean) {
    if (!paramBoolean)
      IdSantanderEscolhaCelularActivity.a(this.a).a(IdSantanderEscolhaCelularActivity.c(this.a)); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iyq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */