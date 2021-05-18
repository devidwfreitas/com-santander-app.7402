import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;

class gdm implements View.OnClickListener {
  gdm(gdl paramgdl) {}
  
  public void onClick(View paramView) {
    gdl.a(this.a).dismiss();
    gdl.b(this.a).startActivity(new Intent((Context)gdl.b(this.a), HomeLogadaActivity.class));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gdm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */