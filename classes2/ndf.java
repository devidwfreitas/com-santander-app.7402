import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;

class ndf extends RecyclerView.ViewHolder implements View.OnClickListener {
  protected TextView a;
  
  ndf(nde paramnde, View paramView) {
    super(paramView);
    paramView.setOnClickListener(this);
    this.a = (TextView)paramView.findViewById(2131756159);
  }
  
  public void onClick(View paramView) {
    nde.a(this.b).a(paramView, getAdapterPosition());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ndf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */