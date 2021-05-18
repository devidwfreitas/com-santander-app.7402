import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.util.TypedValue;
import android.view.View;
import com.santander.app.emprestimo.cancelamento.presentation.EmprestimoListActivity;

public class hmm extends RecyclerView.ItemDecoration {
  public hmm(EmprestimoListActivity paramEmprestimoListActivity) {}
  
  public void getItemOffsets(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView.State paramState) {
    super.getItemOffsets(paramRect, paramView, paramRecyclerView, paramState);
    int i = paramRecyclerView.getAdapter().getItemCount();
    if (paramRecyclerView.getChildAdapterPosition(paramView) == i - 1)
      paramRect.bottom = (int)TypedValue.applyDimension(1, 50.0F, this.a.getResources().getDisplayMetrics()); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hmm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */