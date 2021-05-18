import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.widget.RecyclerView;
import android.view.MotionEvent;
import android.view.View;
import java.util.List;

public abstract class mel<Item extends mdt> implements mei<Item> {
  @Nullable
  public View a(@NonNull RecyclerView.ViewHolder paramViewHolder) {
    return null;
  }
  
  public abstract boolean a(View paramView, MotionEvent paramMotionEvent, int paramInt, mda<Item> parammda, Item paramItem);
  
  @Nullable
  public List<View> b(@NonNull RecyclerView.ViewHolder paramViewHolder) {
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */