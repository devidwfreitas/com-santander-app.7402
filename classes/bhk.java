import android.view.View;
import com.facebook.FacebookButtonBase;

public class bhk implements View.OnClickListener {
  public bhk(FacebookButtonBase paramFacebookButtonBase) {}
  
  public void onClick(View paramView) {
    FacebookButtonBase.a(this.a, this.a.getContext());
    if (FacebookButtonBase.a(this.a) != null) {
      FacebookButtonBase.a(this.a).onClick(paramView);
      return;
    } 
    if (FacebookButtonBase.b(this.a) != null) {
      FacebookButtonBase.b(this.a).onClick(paramView);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bhk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */