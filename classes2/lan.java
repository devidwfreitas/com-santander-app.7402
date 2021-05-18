import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.Button;

class lan extends RecyclerView.ViewHolder {
  private Button b;
  
  private Button c;
  
  lan(lak paramlak, View paramView) {
    super(paramView);
    this.b = (Button)paramView.findViewById(2131756846);
    this.c = (Button)paramView.findViewById(2131758638);
  }
  
  public void a() {
    this.b.setOnClickListener(new lao(this));
    this.c.setOnClickListener(new lap(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lan.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */