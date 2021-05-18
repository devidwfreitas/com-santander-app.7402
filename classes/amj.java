import android.graphics.Canvas;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import br.com.santander.uisdk.dropdown.SantanderDropDownView;

public class amj extends RecyclerView.ItemDecoration {
  public amj(SantanderDropDownView paramSantanderDropDownView) {}
  
  public void onDraw(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.State paramState) {
    super.onDraw(paramCanvas, paramRecyclerView, paramState);
    int i = 0;
    while (true) {
      if (i < paramRecyclerView.getChildCount()) {
        View view = paramRecyclerView.getChildAt(i);
        RecyclerView.ViewHolder viewHolder = paramRecyclerView.findContainingViewHolder(view);
        if (viewHolder != null) {
          view.setOnClickListener(new amk(this, viewHolder));
          i++;
          continue;
        } 
      } 
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\amj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */