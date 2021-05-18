import android.content.Intent;
import android.view.View;
import com.santander.app.habilitacaointernacional.activity.CadastrarHabilitacaoInternacionalActivity;
import com.santander.app.habilitacaointernacional.activity.ConfirmarHabilitacaoInternacionalActivity;

public class ime implements View.OnClickListener {
  public ime(CadastrarHabilitacaoInternacionalActivity paramCadastrarHabilitacaoInternacionalActivity) {}
  
  public void onClick(View paramView) {
    if (CadastrarHabilitacaoInternacionalActivity.a(this.a)) {
      Intent intent = new Intent(this.a.getApplicationContext(), ConfirmarHabilitacaoInternacionalActivity.class);
      intent.putExtra("lista", CadastrarHabilitacaoInternacionalActivity.b(this.a));
      intent.putExtra("passo", "1");
      intent.putExtra("operacao", 0);
      String str = ((ghu)this.a.v.f().s().e().get(CadastrarHabilitacaoInternacionalActivity.c(this.a).a())).H();
      intent.putExtra("FINALCARTAO", ((ghu)this.a.v.f().s().e().get(CadastrarHabilitacaoInternacionalActivity.c(this.a).a())).b());
      intent.putExtra("cartao", str);
      this.a.startActivity(intent);
      return;
    } 
    CadastrarHabilitacaoInternacionalActivity.a(this.a, 1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ime.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */