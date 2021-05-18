import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class men {
  public static List<View> a(View... paramVarArgs) {
    return Arrays.asList(paramVarArgs);
  }
  
  public static <Item extends mdt> void a(@NonNull RecyclerView.ViewHolder paramViewHolder, @Nullable List<mei<Item>> paramList) {
    if (paramList != null) {
      Iterator<mei<Item>> iterator = paramList.iterator();
      while (true) {
        if (iterator.hasNext()) {
          mei<mdt> mei = iterator.next();
          View view = mei.a(paramViewHolder);
          if (view != null)
            a(mei, paramViewHolder, view); 
          List<? extends View> list = mei.b(paramViewHolder);
          if (list != null) {
            Iterator<? extends View> iterator1 = list.iterator();
            while (iterator1.hasNext())
              a(mei, paramViewHolder, iterator1.next()); 
          } 
          continue;
        } 
        return;
      } 
    } 
  }
  
  public static <Item extends mdt> void a(@NonNull mei<Item> parammei, @NonNull RecyclerView.ViewHolder paramViewHolder, @NonNull View paramView) {
    if (parammei instanceof meg) {
      paramView.setOnClickListener(new meo(paramViewHolder, parammei));
      return;
    } 
    if (parammei instanceof mek) {
      paramView.setOnLongClickListener(new mep(paramViewHolder, parammei));
      return;
    } 
    if (parammei instanceof mel) {
      paramView.setOnTouchListener(new meq(paramViewHolder, parammei));
      return;
    } 
    if (parammei instanceof meh) {
      ((meh)parammei).a(paramView, paramViewHolder);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\men.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */