import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.habilitacaointernacional.activity.CadastrarHabilitacaoInternacionalActivity;
import com.santander.app.habilitacaointernacional.activity.ListarPaisesHabilitacaoActivity;

public class imf implements View.OnClickListener {
  public imf(CadastrarHabilitacaoInternacionalActivity paramCadastrarHabilitacaoInternacionalActivity) {}
  
  public void onClick(View paramView) {
    if (CadastrarHabilitacaoInternacionalActivity.d(this.a).getText() == null || CadastrarHabilitacaoInternacionalActivity.e(this.a).getText() == null) {
      mxn.b((Activity)CadastrarHabilitacaoInternacionalActivity.f(this.a), "Por favor inclua uma data de início e fim do período para selecionar um país.");
      return;
    } 
    if (CadastrarHabilitacaoInternacionalActivity.d(this.a).getText().toString().trim().equals("") || CadastrarHabilitacaoInternacionalActivity.e(this.a).getText().toString().trim().equals("")) {
      mxn.b((Activity)CadastrarHabilitacaoInternacionalActivity.f(this.a), "Por favor inclua uma data de início e fim do período para selecionar um país.");
      return;
    } 
    Intent intent = new Intent((Context)this.a, ListarPaisesHabilitacaoActivity.class);
    intent.putExtra("PARAM_ACTIVITY1", "1");
    this.a.startActivityForResult(intent, 1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\imf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */