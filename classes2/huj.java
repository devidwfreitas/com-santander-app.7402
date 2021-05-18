import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.santander.app.components.view.SantanderTextView;

public class huj extends hug {
  private SantanderTextView a = (SantanderTextView)this.itemView.findViewById(2131756128);
  
  private SantanderTextView b = (SantanderTextView)this.itemView.findViewById(2131756129);
  
  public huj(ViewGroup paramViewGroup) {
    super(LayoutInflater.from(paramViewGroup.getContext()).inflate(2130968769, paramViewGroup, false));
  }
  
  public void a(huk paramhuk) {
    this.a.setText(paramhuk.d());
    this.b.setText(paramhuk.h());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\huj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */