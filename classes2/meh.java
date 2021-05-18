import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import java.util.List;

public abstract class meh<Item extends mdt> implements mei<Item> {
  @Nullable
  public View a(@NonNull RecyclerView.ViewHolder paramViewHolder) {
    return null;
  }
  
  public abstract void a(View paramView, RecyclerView.ViewHolder paramViewHolder);
  
  @Nullable
  public List<View> b(@NonNull RecyclerView.ViewHolder paramViewHolder) {
    return null;
  }
  
  @Nullable
  public mda<Item> c(RecyclerView.ViewHolder paramViewHolder) {
    Object object = paramViewHolder.itemView.getTag(2131755017);
    return (object instanceof mda) ? (mda<Item>)object : null;
  }
  
  @Nullable
  public Item d(RecyclerView.ViewHolder paramViewHolder) {
    mda<Item> mda = c(paramViewHolder);
    if (mda == null)
      return null; 
    if (mda.a(paramViewHolder) != -1) {
      Object object = paramViewHolder.itemView.getTag(2131755016);
      if (object instanceof mdt)
        return (Item)object; 
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\meh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */