import android.content.Intent;
import android.view.View;
import com.santander.app.habilitacaointernacional.activity.ConfirmarHabilitacaoInternacionalActivity;
import com.santander.app.habilitacaointernacional.activity.ExcluirHabilitacaoInternacionalActivity;
import java.util.ArrayList;

public class imw implements View.OnClickListener {
  public imw(ExcluirHabilitacaoInternacionalActivity paramExcluirHabilitacaoInternacionalActivity) {}
  
  public void onClick(View paramView) {
    Intent intent = new Intent(this.a.getApplicationContext(), ConfirmarHabilitacaoInternacionalActivity.class);
    new ArrayList();
    ArrayList arrayList = this.a.a();
    if (arrayList.size() > 0) {
      intent.putExtra("lista", arrayList);
      intent.putExtra("passo", "3");
      intent.putExtra("operacao", 2);
      String str = ((ghu)this.a.v.f().s().e().get(ExcluirHabilitacaoInternacionalActivity.a(this.a).a())).H();
      intent.putExtra("FINALCARTAO", ((ghu)this.a.v.f().s().e().get(ExcluirHabilitacaoInternacionalActivity.a(this.a).a())).b());
      intent.putExtra("cartao", str);
      this.a.startActivity(intent);
      return;
    } 
    ExcluirHabilitacaoInternacionalActivity.a(this.a, 2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\imw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */