import android.view.View;
import br.com.santander.uisdk.error.SantanderErrorItem;

class ank implements View.OnClickListener {
  ank(anj paramanj, ani paramani) {}
  
  public void onClick(View paramView) {
    SantanderErrorItem santanderErrorItem = ani.a(this.b.a).get(this.b.getAdapterPosition());
    if (santanderErrorItem.d() != null)
      santanderErrorItem.d().onClick(paramView); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ank.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */