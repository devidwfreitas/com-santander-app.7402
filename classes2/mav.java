import android.graphics.Typeface;
import android.view.View;
import com.santander.app.seguros.ui.widgets.AssistanceOffer;
import java.util.List;

public class mav implements View.OnClickListener {
  public mav(AssistanceOffer paramAssistanceOffer, List paramList, Typeface paramTypeface) {}
  
  public void onClick(View paramView) {
    AssistanceOffer.b(this.c).setImageDrawable(AssistanceOffer.a(this.c, ((krl)this.a.get(0)).a(), true));
    AssistanceOffer.c(this.c).setImageDrawable(AssistanceOffer.a(this.c, ((krl)this.a.get(1)).a(), false));
    AssistanceOffer.e(this.c).setTypeface(this.b, 1);
    AssistanceOffer.f(this.c).setTypeface(this.b, this.b.getStyle());
    AssistanceOffer.h(this.c).setVisibility(0);
    AssistanceOffer.h(this.c).setText(((krl)this.a.get(0)).c());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mav.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */