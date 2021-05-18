import android.support.v4.widget.NestedScrollView;
import com.santander.app.ContaMovementActivity;

public class fhf implements NestedScrollView.OnScrollChangeListener {
  public fhf(ContaMovementActivity paramContaMovementActivity) {}
  
  public void onScrollChange(NestedScrollView paramNestedScrollView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    if (!ContaMovementActivity.p(this.a) && ContaMovementActivity.q(this.a) != null && paramInt2 >= paramNestedScrollView.getChildAt(0).getMeasuredHeight() - paramNestedScrollView.getMeasuredHeight() && ContaMovementActivity.q(this.a).hasMorePages()) {
      ContaMovementActivity.b(this.a, false);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fhf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */