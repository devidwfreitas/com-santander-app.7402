import android.content.Intent;
import android.view.View;
import com.santander.app.lojaonline.presentation.LojaOnlineActivity;
import com.santander.app.lojaonline.presentation.LojaOnlineTermsActivity;

public class jnr implements View.OnClickListener {
  public jnr(LojaOnlineActivity paramLojaOnlineActivity) {}
  
  public void onClick(View paramView) {
    jor.d();
    Intent intent = new Intent(paramView.getContext(), LojaOnlineTermsActivity.class);
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jnr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */