import android.database.DataSetObserver;
import me.relex.circleindicator.CircleIndicator;

public class nnk extends DataSetObserver {
  public nnk(CircleIndicator paramCircleIndicator) {}
  
  public void onChanged() {
    super.onChanged();
    if (CircleIndicator.a(this.a) != null) {
      int i = CircleIndicator.a(this.a).getAdapter().getCount();
      if (i != this.a.getChildCount()) {
        if (CircleIndicator.d(this.a) < i) {
          CircleIndicator.a(this.a, CircleIndicator.a(this.a).getCurrentItem());
        } else {
          CircleIndicator.a(this.a, -1);
        } 
        CircleIndicator.g(this.a);
        return;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nnk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */