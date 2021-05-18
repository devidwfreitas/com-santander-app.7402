import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.santander.app.components.view.SantanderTextView;

public class huh extends hug {
  private SantanderTextView a = (SantanderTextView)this.itemView.findViewById(2131756128);
  
  private SantanderTextView b = (SantanderTextView)this.itemView.findViewById(2131756137);
  
  private SantanderTextView c = (SantanderTextView)this.itemView.findViewById(2131756129);
  
  private SantanderTextView d = (SantanderTextView)this.itemView.findViewById(2131756138);
  
  public huh(ViewGroup paramViewGroup) {
    super(LayoutInflater.from(paramViewGroup.getContext()).inflate(2130968767, paramViewGroup, false));
  }
  
  public void a(huk paramhuk) {
    this.a.setText(paramhuk.d());
    this.b.setText(String.format("Contrato: %s", new Object[] { paramhuk.e() }));
    this.c.setText(String.format("Valor : R$ %s", new Object[] { paramhuk.h() }));
    if (TextUtils.isEmpty(paramhuk.b()) && TextUtils.isEmpty(paramhuk.c())) {
      this.d.setVisibility(8);
      return;
    } 
    this.d.setVisibility(0);
    this.d.setText(String.format("Agência e Conta Vinculada: %s / %s", new Object[] { paramhuk.b(), paramhuk.c() }));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\huh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */