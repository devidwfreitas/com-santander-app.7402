import android.view.View;
import com.santander.app.widget.Carrossel;

public class nex implements View.OnClickListener {
  public nex(Carrossel paramCarrossel) {}
  
  public void onClick(View paramView) {
    if (this.a.a.getCurrentItem() > 0)
      this.a.a.setCurrentItem(this.a.a.getCurrentItem() - 1, true); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nex.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */