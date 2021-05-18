import android.view.View;
import com.santander.app.idsantander.presentation.IdSantanderComprovanteActivity;

public class ixu implements View.OnClickListener {
  public ixu(IdSantanderComprovanteActivity paramIdSantanderComprovanteActivity) {}
  
  public void onClick(View paramView) {
    this.a.getSharedPreferences(nat.VER_MAIS_TARDE.name(), 0).edit().putBoolean(mzr.n(), true).commit();
    IdSantanderComprovanteActivity.a(this.a, true, IdSantanderComprovanteActivity.a(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ixu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */