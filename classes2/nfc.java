import android.view.View;
import com.santander.app.widget.GenericCarrusel;

public class nfc implements View.OnClickListener {
  public nfc(GenericCarrusel paramGenericCarrusel) {}
  
  public void onClick(View paramView) {
    if (GenericCarrusel.a(this.a).getCurrentItem() < GenericCarrusel.a(this.a).getAdapter().getCount() - 1)
      GenericCarrusel.a(this.a).setCurrentItem(GenericCarrusel.a(this.a).getCurrentItem() + 1, true); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nfc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */