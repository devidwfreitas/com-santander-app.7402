import android.support.design.widget.TextInputLayout;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageButton;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoDadoObrigatorio;

class hoc extends RecyclerView.ViewHolder {
  protected ConsignadoDadoObrigatorio a;
  
  private TextInputLayout c;
  
  private ImageButton d;
  
  hoc(hob paramhob, View paramView) {
    super(paramView);
    this.c = (TextInputLayout)paramView.findViewById(2131756135);
    this.d = (ImageButton)paramView.findViewById(2131755774);
    if (this.d != null)
      this.d.setOnClickListener(new hod(this, paramhob)); 
  }
  
  void a(ConsignadoDadoObrigatorio paramConsignadoDadoObrigatorio) {
    this.a = paramConsignadoDadoObrigatorio;
    if (this.c != null)
      this.c.setHint(paramConsignadoDadoObrigatorio.getHint()); 
    if (this.d != null) {
      if (paramConsignadoDadoObrigatorio.useAlert()) {
        this.d.setVisibility(0);
        return;
      } 
    } else {
      return;
    } 
    this.d.setVisibility(8);
  }
  
  void a(String paramString) {
    if (this.a == null)
      return; 
    this.a.setValue(paramString);
    this.b.c();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hoc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */