import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;

class mq extends RecyclerView.ViewHolder {
  private CheckBox a;
  
  private TextView b;
  
  private mq(View paramView) {
    super(paramView);
    this.a = (CheckBox)paramView.findViewById(la.car_check_recusa);
    this.b = (TextView)paramView.findViewById(la.car_recusa_texto);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */