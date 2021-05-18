import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoContract;
import java.util.List;

public class hnz extends RecyclerView.Adapter<hoa> {
  private List<ConsignadoContract> a;
  
  public hnz(List<ConsignadoContract> paramList) {
    this.a = paramList;
  }
  
  public hoa a(ViewGroup paramViewGroup, int paramInt) {
    return new hoa(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130969343, paramViewGroup, false));
  }
  
  public void a(hoa paramhoa, int paramInt) {
    String str;
    if (paramInt == 0) {
      paramhoa.b.setTextSize(20.0F);
      paramhoa.c.setTextSize(20.0F);
      paramhoa.b.setTextColor(-16777216);
      paramhoa.c.setTextColor(-16777216);
      paramhoa.a.setPadding(0, 90, 0, 90);
    } 
    TextView textView = paramhoa.b;
    if (paramInt == 0) {
      str = "Valor Total";
    } else {
      str = "09/08/2017";
    } 
    textView.setText(str);
    paramhoa.c.setText(String.format("R$ %s", new Object[] { ((ConsignadoContract)this.a.get(paramInt)).getTotalInstallmentAmount() }));
  }
  
  public int getItemCount() {
    return (this.a != null) ? this.a.size() : 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hnz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */