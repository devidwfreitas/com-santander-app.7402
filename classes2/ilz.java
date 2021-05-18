import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.habilitacaointernacional.activity.CadastrarHabilitacaoInternacionalActivity;
import com.santander.app.habilitacaointernacional.activity.ListarPaisesHabilitacaoActivity;

public class ilz implements View.OnClickListener {
  public ilz(CadastrarHabilitacaoInternacionalActivity paramCadastrarHabilitacaoInternacionalActivity) {}
  
  public void onClick(View paramView) {
    Intent intent = new Intent((Context)this.a, ListarPaisesHabilitacaoActivity.class);
    intent.putExtra("PARAM_ACTIVITY1", "1");
    this.a.startActivityForResult(intent, 1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ilz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */