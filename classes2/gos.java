import android.view.View;
import com.santander.app.components.view.CheckCardView;

public class gos implements View.OnClickListener {
  public gos(CheckCardView paramCheckCardView, View.OnClickListener paramOnClickListener) {}
  
  public void onClick(View paramView) {
    if (CheckCardView.a(this.b) && !CheckCardView.b(this.b) && !CheckCardView.c(this.b)) {
      if (this.b.d()) {
        CheckCardView.d(this.b);
      } else {
        CheckCardView.e(this.b);
      } 
      if (this.a != null) {
        this.a.onClick(paramView);
        return;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gos.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */