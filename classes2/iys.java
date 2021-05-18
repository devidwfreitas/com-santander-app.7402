import android.view.View;
import com.santander.app.idsantander.presentation.IdSantanderEscolhaCelularActivity;

public class iys implements View.OnFocusChangeListener {
  public iys(IdSantanderEscolhaCelularActivity paramIdSantanderEscolhaCelularActivity) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean) {
    if (!paramBoolean)
      IdSantanderEscolhaCelularActivity.a(this.a).a(IdSantanderEscolhaCelularActivity.c(this.a).getText().toString(), IdSantanderEscolhaCelularActivity.d(this.a).getText().toString()); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iys.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */