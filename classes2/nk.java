import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;

public class nk extends RecyclerView.ViewHolder {
  private TextView a;
  
  private TextView b;
  
  private nk(View paramView) {
    super(paramView);
    this.a = (TextView)paramView.findViewById(la.cdb_progressivo_lista_data);
    this.b = (TextView)paramView.findViewById(la.cdb_progressivo_lista_percentagem);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */