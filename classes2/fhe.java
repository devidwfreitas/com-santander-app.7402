import android.view.View;
import com.santander.app.ContaMovementActivity;

public class fhe implements View.OnClickListener {
  public fhe(ContaMovementActivity paramContaMovementActivity) {}
  
  public void onClick(View paramView) {
    View view = paramView.findViewById(2131759099);
    paramView = paramView.findViewById(2131759042);
    if (view.getVisibility() == 8) {
      paramView.setVisibility(8);
      view.setVisibility(0);
      return;
    } 
    paramView.setVisibility(0);
    view.setVisibility(8);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fhe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */