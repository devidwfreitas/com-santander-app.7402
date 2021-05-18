import android.view.View;
import com.santander.app.widget.GenericCarrusel;

public class nfb implements View.OnClickListener {
  public nfb(GenericCarrusel paramGenericCarrusel) {}
  
  public void onClick(View paramView) {
    if (GenericCarrusel.a(this.a).getCurrentItem() > 0)
      GenericCarrusel.a(this.a).setCurrentItem(GenericCarrusel.a(this.a).getCurrentItem() - 1, true); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nfb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */