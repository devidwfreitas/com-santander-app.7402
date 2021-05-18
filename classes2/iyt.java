import android.view.KeyEvent;
import android.view.View;
import com.santander.app.idsantander.presentation.IdSantanderEscolhaCelularActivity;

public class iyt implements View.OnKeyListener {
  public iyt(IdSantanderEscolhaCelularActivity paramIdSantanderEscolhaCelularActivity) {}
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent) {
    if ((paramKeyEvent.getAction() == 0 && paramInt == 66) || (paramKeyEvent.getAction() == 1 && paramInt == 4)) {
      IdSantanderEscolhaCelularActivity.a(this.a).a(IdSantanderEscolhaCelularActivity.c(this.a).getText().toString(), IdSantanderEscolhaCelularActivity.d(this.a).getText().toString());
      return true;
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iyt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */