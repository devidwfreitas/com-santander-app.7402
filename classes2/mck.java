import android.view.View;
import android.widget.ImageView;
import com.santander.app.seguros.ui.widgets.PlanChoiceView;

public class mck implements View.OnClickListener {
  private boolean b = false;
  
  private int c;
  
  private int d;
  
  private ImageView e;
  
  private ImageView f;
  
  private View.OnClickListener g;
  
  public mck(PlanChoiceView paramPlanChoiceView, int paramInt1, int paramInt2, ImageView paramImageView1, ImageView paramImageView2, View.OnClickListener paramOnClickListener) {
    this.c = paramInt1;
    this.d = paramInt2;
    this.e = paramImageView1;
    this.f = paramImageView2;
    this.g = paramOnClickListener;
  }
  
  public void a() {
    this.b = false;
    this.f.setImageResource(this.d);
  }
  
  public void onClick(View paramView) {
    boolean bool = false;
    if (!this.b) {
      this.f.setImageResource(this.c);
      this.e.setVisibility(0);
    } else {
      this.f.setImageResource(this.d);
      this.e.setVisibility(8);
    } 
    if (!this.b)
      bool = true; 
    this.b = bool;
    this.g.onClick(paramView);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mck.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */