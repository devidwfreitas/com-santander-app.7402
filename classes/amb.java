import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;

class amb extends RecyclerView.ViewHolder {
  TextView a;
  
  TextView b;
  
  amb(View paramView) {
    super(paramView);
    this.a = (TextView)paramView.findViewById(als.comprovante_key);
    this.b = (TextView)paramView.findViewById(als.comprovante_value);
  }
  
  void a(String paramString1, String paramString2) {
    this.a.setText(paramString1);
    this.b.setText(paramString2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\amb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */