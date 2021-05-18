import android.view.View;
import android.widget.Button;
import com.santander.app.validation.presentation.ValidacionOperacionFragment;

public class ndc implements View.OnClickListener {
  public ndc(ValidacionOperacionFragment paramValidacionOperacionFragment) {}
  
  public void onClick(View paramView) {
    String str = ValidacionOperacionFragment.a(this.a).getText().toString();
    ValidacionOperacionFragment.b(this.a).a(str, ((Button)paramView).getText().toString());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ndc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */