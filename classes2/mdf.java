import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import java.util.List;

public class mdf implements mde {
  public mdf(mda parammda) {}
  
  public void a(@NonNull RecyclerView.ViewHolder paramViewHolder, int paramInt) {
    mdt mdt = (mdt)paramViewHolder.itemView.getTag(2131755016);
    if (mdt != null) {
      mdt.a(paramViewHolder);
      paramViewHolder.itemView.setTag(2131755016, null);
      paramViewHolder.itemView.setTag(2131755017, null);
      return;
    } 
    Log.e("FastAdapter", "The bindView method of this item should set the `Tag` on its itemView (https://github.com/mikepenz/FastAdapter/blob/develop/library-core/src/main/java/com/mikepenz/fastadapter/items/AbstractItem.java#L189)");
  }
  
  public void a(RecyclerView.ViewHolder paramViewHolder, int paramInt, List<Object> paramList) {
    mdt mdt = this.a.b(paramInt);
    if (mdt != null) {
      paramViewHolder.itemView.setTag(2131755016, mdt);
      mdt.a(paramViewHolder, paramList);
    } 
  }
  
  public void b(RecyclerView.ViewHolder paramViewHolder, int paramInt) {
    mdt mdt = (mdt)paramViewHolder.itemView.getTag(2131755016);
    if (mdt != null)
      try {
        mdt.b(paramViewHolder);
        return;
      } catch (AbstractMethodError abstractMethodError) {
        Log.e("WTF", abstractMethodError.toString());
        return;
      }  
  }
  
  public void c(RecyclerView.ViewHolder paramViewHolder, int paramInt) {
    mdt mdt = (mdt)paramViewHolder.itemView.getTag(2131755016);
    if (mdt != null)
      mdt.c(paramViewHolder); 
  }
  
  public boolean d(RecyclerView.ViewHolder paramViewHolder, int paramInt) {
    mdt mdt = (mdt)paramViewHolder.itemView.getTag(2131755016);
    return (mdt != null && mdt.d(paramViewHolder));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mdf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */