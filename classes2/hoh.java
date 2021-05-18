import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoCalculateContract;
import java.util.List;

public class hoh extends RecyclerView.Adapter<hoi> {
  private List<ConsignadoCalculateContract> a;
  
  public hoh(List<ConsignadoCalculateContract> paramList) {
    this.a = paramList;
  }
  
  public hoi a(ViewGroup paramViewGroup, int paramInt) {
    return new hoi(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130969342, paramViewGroup, false));
  }
  
  public void a(hoi paramhoi, int paramInt) {
    paramhoi.a.setText(String.format("Ativo desde: %s", new Object[] { ((ConsignadoCalculateContract)this.a.get(paramInt)).getContractDate() }));
    paramhoi.b.setText(String.format("%s de %s parcelas", new Object[] { ((ConsignadoCalculateContract)this.a.get(paramInt)).getPaidInstallmentsQuantity(), ((ConsignadoCalculateContract)this.a.get(paramInt)).getInstallmentsQuantity() }));
    paramhoi.d.setText(String.format("Valor da parcela: %s", new Object[] { ((ConsignadoCalculateContract)this.a.get(paramInt)).getInstallmentValue() }));
  }
  
  public int getItemCount() {
    return (this.a != null) ? this.a.size() : 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hoh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */