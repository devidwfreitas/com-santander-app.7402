import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.santander.app.habilitacaointernacional.activity.CadastrarHabilitacaoInternacionalActivity;
import com.santander.app.habilitacaointernacional.activity.HabilitacaoInternacionalActivity;

public class ind implements View.OnClickListener {
  public ind(HabilitacaoInternacionalActivity paramHabilitacaoInternacionalActivity) {}
  
  public void onClick(View paramView) {
    Intent intent = new Intent(this.a.getApplicationContext(), CadastrarHabilitacaoInternacionalActivity.class);
    Bundle bundle = new Bundle();
    bundle.putInt("indiceCartaoSelecionado", HabilitacaoInternacionalActivity.a(this.a));
    intent.putExtras(bundle);
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ind.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */