import android.view.View;
import com.santander.app.seguros.ui.widgets.EquipmentItem;

public class mbq implements View.OnClickListener {
  public mbq(EquipmentItem paramEquipmentItem) {}
  
  public void onClick(View paramView) {
    if (EquipmentItem.a(this.a)) {
      this.a.d();
    } else {
      this.a.c();
    } 
    if (EquipmentItem.b(this.a) != null)
      EquipmentItem.b(this.a).a(EquipmentItem.a(this.a), EquipmentItem.c(this.a)); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mbq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */