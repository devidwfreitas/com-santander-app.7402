import android.support.v4.content.ContextCompat;
import android.support.v7.widget.RecyclerView;
import android.text.style.AbsoluteSizeSpan;
import android.view.View;
import com.santander.app.components.view.SantanderTextView;

class hfe extends RecyclerView.ViewHolder {
  private SantanderTextView a;
  
  private SantanderTextView b;
  
  hfe(View paramView) {
    super(paramView);
    this.a = (SantanderTextView)paramView.findViewById(2131756128);
    this.b = (SantanderTextView)paramView.findViewById(2131756129);
  }
  
  void a(hga paramhga) {
    this.a.setText(paramhga.a());
    bfj bfj = new bfj();
    bfj.a("R$ ", new AbsoluteSizeSpan(14, true));
    bfj.a(paramhga.b());
    this.b.setText((CharSequence)bfj);
    this.a.setTextColor(ContextCompat.getColor(this.itemView.getContext(), 2131623937));
    this.a.setTextSize(12.0F);
    this.b.setTextColor(ContextCompat.getColor(this.itemView.getContext(), 2131624188));
    this.b.setTextSize(16.0F);
  }
  
  void a(String paramString1, String paramString2) {
    this.a.setText(paramString1);
    this.b.setText(paramString2);
    this.a.setTextColor(ContextCompat.getColor(this.itemView.getContext(), 2131623937));
    this.a.setTextSize(14.0F);
    this.b.setTextColor(ContextCompat.getColor(this.itemView.getContext(), 2131623937));
    this.b.setTextSize(14.0F);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hfe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */