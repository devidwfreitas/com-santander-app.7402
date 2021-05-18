import android.view.View;
import android.widget.Button;
import com.santander.app.idsantander.presentation.IdSantanderDesafioCsoActivity;

public class iyh implements View.OnClickListener {
  public iyh(IdSantanderDesafioCsoActivity paramIdSantanderDesafioCsoActivity) {}
  
  public void onClick(View paramView) {
    String str = IdSantanderDesafioCsoActivity.a(this.a).getText().toString();
    IdSantanderDesafioCsoActivity.b(this.a).a(str, ((Button)paramView).getText().toString());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iyh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */