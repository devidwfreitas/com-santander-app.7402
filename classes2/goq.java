import com.santander.app.components.view.CheckCardGroup;
import com.santander.app.components.view.CheckCardView;
import java.util.Iterator;

public class goq implements goy {
  public goq(CheckCardGroup paramCheckCardGroup) {}
  
  public void a(CheckCardView paramCheckCardView, boolean paramBoolean) {
    if (CheckCardGroup.d(this.a)) {
      Iterator<CheckCardView> iterator = CheckCardGroup.b(this.a).iterator();
      while (true) {
        if (iterator.hasNext()) {
          CheckCardView checkCardView = iterator.next();
          checkCardView.setOnCheckChangeListener(null);
          if (checkCardView == paramCheckCardView) {
            if (!checkCardView.c())
              checkCardView.setChecked(true); 
            if (CheckCardGroup.e(this.a) != null)
              CheckCardGroup.e(this.a).a(this.a, checkCardView, checkCardView.getId()); 
          } else if (checkCardView.c()) {
            checkCardView.setChecked(false);
          } 
          checkCardView.setOnCheckChangeListener(this);
          continue;
        } 
        return;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\goq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */