import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

class anj extends RecyclerView.ViewHolder {
  private ImageView b;
  
  private TextView c;
  
  private TextView d;
  
  anj(ani paramani, View paramView) {
    super(paramView);
    paramView.setOnClickListener(new ank(this, paramani));
    this.c = (TextView)paramView.findViewById(als.views_error_title);
    this.d = (TextView)paramView.findViewById(als.views_error_sub_title);
    this.b = (ImageView)paramView.findViewById(als.view_error_item_image);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\anj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */