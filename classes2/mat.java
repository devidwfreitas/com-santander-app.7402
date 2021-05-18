import android.graphics.Typeface;
import android.view.View;
import com.santander.app.seguros.ui.widgets.AssistanceOffer;
import java.util.List;

public class mat implements View.OnClickListener {
  public mat(AssistanceOffer paramAssistanceOffer, List paramList, Typeface paramTypeface) {}
  
  public void onClick(View paramView) {
    if (AssistanceOffer.a(this.c) != null)
      AssistanceOffer.a(this.c).a(((krl)this.a.get(1)).b()); 
    AssistanceOffer.b(this.c).setImageDrawable(AssistanceOffer.a(this.c, ((krl)this.a.get(0)).a(), false));
    AssistanceOffer.c(this.c).setImageDrawable(AssistanceOffer.a(this.c, ((krl)this.a.get(1)).a(), true));
    AssistanceOffer.d(this.c).setImageDrawable(AssistanceOffer.a(this.c, ((krl)this.a.get(2)).a(), false));
    AssistanceOffer.e(this.c).setTypeface(this.b, this.b.getStyle());
    AssistanceOffer.f(this.c).setTypeface(this.b, 1);
    AssistanceOffer.g(this.c).setTypeface(this.b, this.b.getStyle());
    AssistanceOffer.h(this.c).setVisibility(0);
    AssistanceOffer.h(this.c).setText(((krl)this.a.get(1)).c());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */