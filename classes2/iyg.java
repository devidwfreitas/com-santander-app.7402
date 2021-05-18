import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import com.santander.app.idsantander.presentation.IdSantanderDesafioCsoActivity;

public class iyg implements View.OnClickListener {
  public iyg(IdSantanderDesafioCsoActivity paramIdSantanderDesafioCsoActivity, Dialog paramDialog, boolean paramBoolean) {}
  
  public void onClick(View paramView) {
    this.a.dismiss();
    if (this.b) {
      this.c.v.f().e("2");
      this.c.v.f().y().c(Boolean.valueOf(false));
      this.c.v.f().y().b(Boolean.valueOf(false));
      this.c.v.f().y().a(Boolean.valueOf(false));
      this.c.v.f().y().a(naz.HOME_CONSULTIVA.getValue());
      this.c.startActivity(new Intent((Context)this.c.i, HomeLogadaActivity.class));
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iyg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */