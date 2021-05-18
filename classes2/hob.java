import android.support.v7.widget.RecyclerView;
import android.view.ViewGroup;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoDadoObrigatorio;
import java.util.List;

public abstract class hob extends RecyclerView.Adapter<hoc> {
  private List<ConsignadoDadoObrigatorio> a;
  
  public hob(List<ConsignadoDadoObrigatorio> paramList) {
    this.a = paramList;
  }
  
  public hoc a(ViewGroup paramViewGroup, int paramInt) {
    return (hoc)((paramInt == 1) ? new hog(this, paramViewGroup) : ((paramInt == 2) ? new hoe(this, paramViewGroup) : new hof(this, paramViewGroup)));
  }
  
  public List<ConsignadoDadoObrigatorio> a() {
    return this.a;
  }
  
  public void a(hoc paramhoc, int paramInt) {
    paramhoc.a(this.a.get(paramInt));
  }
  
  public abstract void b();
  
  public abstract void c();
  
  public int getItemCount() {
    return (this.a != null) ? this.a.size() : 0;
  }
  
  public int getItemViewType(int paramInt) {
    return ((ConsignadoDadoObrigatorio)this.a.get(paramInt)).getType();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hob.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */