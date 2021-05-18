import android.view.View;
import com.santander.app.faq.presentation.FaqRespostasActivity;

public class icu implements View.OnClickListener {
  public icu(FaqRespostasActivity paramFaqRespostasActivity) {}
  
  public void onClick(View paramView) {
    FaqRespostasActivity.a(this.a).setVisibility(8);
    FaqRespostasActivity.b(this.a).setVisibility(8);
    FaqRespostasActivity.c(this.a).setVisibility(8);
    FaqRespostasActivity.d(this.a).setVisibility(0);
    FaqRespostasActivity.e(this.a).setText(2131297404);
    ibm.a("Nao", FaqRespostasActivity.f(this.a), FaqRespostasActivity.g(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\icu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */