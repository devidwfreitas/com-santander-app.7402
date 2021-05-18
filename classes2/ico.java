import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.faq.presentation.FaqActivity;
import com.santander.app.faq.presentation.FaqTelefonesActivity;

public class ico implements View.OnClickListener {
  public ico(FaqActivity paramFaqActivity) {}
  
  public void onClick(View paramView) {
    String str;
    if (this.a.v.e()) {
      str = "Outros_FAQ_Acao";
    } else {
      str = "Outros_HomeNaoLogada_FAQ_Acao";
    } 
    frq.d(str, "EntreEmContatoConosco");
    Intent intent = new Intent((Context)this.a, FaqTelefonesActivity.class);
    this.a.startActivityForResult(intent, 1);
    this.a.overridePendingTransition(2131034131, 2131034133);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ico.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */