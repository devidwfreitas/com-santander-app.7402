import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import com.santander.app.emprestimo.creditopessoal.presentation.ConsignadoEmpAtuaisActivity;

public class hri extends LinearLayoutManager {
  public hri(ConsignadoEmpAtuaisActivity paramConsignadoEmpAtuaisActivity, Context paramContext) {
    super(paramContext);
  }
  
  public boolean canScrollVertically() {
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hri.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */