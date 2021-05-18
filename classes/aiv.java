import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class aiv extends RecyclerView.Adapter<aiw> {
  private Context a;
  
  public aiw a(ViewGroup paramViewGroup, int paramInt) {
    View view = LayoutInflater.from(paramViewGroup.getContext()).inflate(agi.remanejamento_revisao_card_list_item, paramViewGroup, false);
    this.a = paramViewGroup.getContext();
    return new aiw(this, view);
  }
  
  public void a(aiw paramaiw, int paramInt) {}
  
  public int getItemCount() {
    return 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aiv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */