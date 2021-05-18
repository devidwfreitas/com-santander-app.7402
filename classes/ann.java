import android.view.View;
import br.com.santander.uisdk.error.SantanderErrorView;

public class ann implements View.OnClickListener {
  public ann(SantanderErrorView paramSantanderErrorView) {}
  
  public void onClick(View paramView) {
    if (SantanderErrorView.a(this.a) != null)
      SantanderErrorView.a(this.a).onClick(paramView); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ann.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */