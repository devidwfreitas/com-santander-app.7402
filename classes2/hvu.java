import android.widget.CompoundButton;
import com.santander.app.emprestimo.creditounificado.presentation.CPUContratacaoActivity;

public class hvu implements CompoundButton.OnCheckedChangeListener {
  public hvu(CPUContratacaoActivity paramCPUContratacaoActivity) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean) {
    CPUContratacaoActivity.a(this.a).a(paramBoolean);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hvu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */