import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import java.util.List;

public interface mei<Item extends mdt> {
  @Nullable
  View a(@NonNull RecyclerView.ViewHolder paramViewHolder);
  
  @Nullable
  List<? extends View> b(@NonNull RecyclerView.ViewHolder paramViewHolder);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mei.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */