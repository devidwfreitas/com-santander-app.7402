import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;

class iwo implements View.OnClickListener {
  iwo(iwm paramiwm) {}
  
  public void onClick(View paramView) {
    miq.C().f().y().a(false);
    iwm.a(this.a).getSharedPreferences(nat.VER_MAIS_TARDE.name(), 0).edit().putBoolean(mzr.n(), true).commit();
    iwm.a(this.a).startActivity(new Intent((Context)iwm.a(this.a), HomeLogadaActivity.class));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iwo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */