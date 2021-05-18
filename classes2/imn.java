import android.content.Intent;
import android.view.View;
import com.santander.app.habilitacaointernacional.activity.ConfirmarHabilitacaoInternacionalActivity;
import com.santander.app.habilitacaointernacional.activity.ValidarCartaoHabilitacaoInternacionalActivity;

public class imn implements View.OnClickListener {
  public imn(ConfirmarHabilitacaoInternacionalActivity paramConfirmarHabilitacaoInternacionalActivity) {}
  
  public void onClick(View paramView) {
    Intent intent = new Intent(this.a.getApplicationContext(), ValidarCartaoHabilitacaoInternacionalActivity.class);
    intent.putExtra("lista", ConfirmarHabilitacaoInternacionalActivity.a(this.a));
    intent.putExtra("listaAlteracao", ConfirmarHabilitacaoInternacionalActivity.b(this.a));
    intent.putExtra("operacao", ConfirmarHabilitacaoInternacionalActivity.c(this.a));
    intent.putExtra("cartao", ConfirmarHabilitacaoInternacionalActivity.d(this.a));
    intent.putExtra("passo", ConfirmarHabilitacaoInternacionalActivity.e(this.a));
    intent.putExtra("FINALCARTAO", ConfirmarHabilitacaoInternacionalActivity.f(this.a));
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\imn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */