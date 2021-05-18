import android.view.View;
import com.santander.app.segundaviacomprovantes.presentation.SegundaViaActivity;

public class kmw implements View.OnClickListener {
  public kmw(SegundaViaActivity paramSegundaViaActivity) {}
  
  public void onClick(View paramView) {
    if (!SegundaViaActivity.a(this.a).getText().toString().equals(""))
      SegundaViaActivity.b(this.a).b(SegundaViaActivity.c(this.a)).show(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kmw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */