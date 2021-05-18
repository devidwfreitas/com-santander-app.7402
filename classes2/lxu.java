import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.seguros.ui.sinister.activities.MySinisterActivity;

class lxu implements View.OnClickListener {
  lxu(lxr paramlxr) {}
  
  public void onClick(View paramView) {
    Intent intent = new Intent((Context)lxr.b(this.a), MySinisterActivity.class);
    lxr.b(this.a).startActivity(intent);
    lxr.b(this.a).finish();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lxu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */