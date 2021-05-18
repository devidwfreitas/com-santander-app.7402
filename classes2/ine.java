import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.santander.app.habilitacaointernacional.activity.ConsultarAlterarHabilitacaoInternacionalActivity;
import com.santander.app.habilitacaointernacional.activity.HabilitacaoInternacionalActivity;

public class ine implements View.OnClickListener {
  public ine(HabilitacaoInternacionalActivity paramHabilitacaoInternacionalActivity) {}
  
  public void onClick(View paramView) {
    if (HabilitacaoInternacionalActivity.b(this.a) != null) {
      if (HabilitacaoInternacionalActivity.b(this.a).equals("S")) {
        Intent intent = new Intent(this.a.getApplicationContext(), ConsultarAlterarHabilitacaoInternacionalActivity.class);
        Bundle bundle = new Bundle();
        bundle.putInt("indiceCartaoSelecionado", HabilitacaoInternacionalActivity.a(this.a));
        intent.putExtras(bundle);
        this.a.startActivity(intent);
        return;
      } 
      mxn.b(this.a.i, "Não foram encontradas viagens cadastradas.");
      HabilitacaoInternacionalActivity.c(this.a).setVisibility(0);
      return;
    } 
    mxn.b(this.a.i, "Não foram encontradas viagens cadastradas.");
    HabilitacaoInternacionalActivity.c(this.a).setVisibility(0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ine.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */