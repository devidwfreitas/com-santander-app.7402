import android.content.Intent;
import android.view.View;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import com.santander.app.idsantander.presentation.IdSantanderEscolhaCelularActivity;

public class iym implements View.OnClickListener {
  public iym(IdSantanderEscolhaCelularActivity paramIdSantanderEscolhaCelularActivity) {}
  
  public void onClick(View paramView) {
    miq.C().f().y().a(false);
    this.a.getSharedPreferences(nat.VER_MAIS_TARDE.name(), 0).edit().putBoolean(mzr.n(), true).commit();
    gyy.a = false;
    this.a.startActivity(new Intent(paramView.getContext(), HomeLogadaActivity.class));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iym.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */