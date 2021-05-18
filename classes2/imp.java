import android.content.Intent;
import android.view.View;
import com.santander.app.habilitacaointernacional.activity.ConfirmarHabilitacaoInternacionalActivity;
import com.santander.app.habilitacaointernacional.activity.ConsultarAlterarHabilitacaoInternacionalActivity;
import java.util.ArrayList;

public class imp implements View.OnClickListener {
  public imp(ConsultarAlterarHabilitacaoInternacionalActivity paramConsultarAlterarHabilitacaoInternacionalActivity) {}
  
  private boolean a(ArrayList<ioi> paramArrayList) {
    boolean bool = false;
    for (int i = 0;; i++) {
      boolean bool1 = bool;
      if (i < paramArrayList.size()) {
        ioi ioi = paramArrayList.get(i);
        if (ioi.c().equals(ioi.f()) && ioi.d().equals(ioi.g())) {
          mxn.b(ConsultarAlterarHabilitacaoInternacionalActivity.c(this.a), "O novo período não pode ser igual ao período atual para o país selecionado. " + ioi.b());
          return true;
        } 
      } else {
        return bool1;
      } 
    } 
  }
  
  public void onClick(View paramView) {
    Intent intent = new Intent(this.a.getApplicationContext(), ConfirmarHabilitacaoInternacionalActivity.class);
    ArrayList<ioi> arrayList = new ArrayList();
    for (ioi ioi : ConsultarAlterarHabilitacaoInternacionalActivity.a(this.a)) {
      if (ioi.e())
        arrayList.add(ioi); 
    } 
    if (ConsultarAlterarHabilitacaoInternacionalActivity.a(this.a, arrayList)) {
      if (!a(arrayList)) {
        intent.putExtra("lista", arrayList);
        intent.putExtra("passo", "2");
        intent.putExtra("operacao", 1);
        String str = ((ghu)this.a.v.f().s().e().get(ConsultarAlterarHabilitacaoInternacionalActivity.b(this.a).a())).H();
        intent.putExtra("FINALCARTAO", ((ghu)this.a.v.f().s().e().get(ConsultarAlterarHabilitacaoInternacionalActivity.b(this.a).a())).b());
        intent.putExtra("cartao", str);
        this.a.startActivity(intent);
      } 
      return;
    } 
    ConsultarAlterarHabilitacaoInternacionalActivity.a(this.a, 2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\imp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */