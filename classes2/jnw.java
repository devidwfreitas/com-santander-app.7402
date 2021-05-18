import android.support.v7.widget.RecyclerView;
import android.view.ViewGroup;
import com.santander.app.lojaonline.domain.LojaCampaign;
import java.util.List;

public class jnw extends RecyclerView.Adapter<jny> {
  private List<LojaCampaign.Campaign> a;
  
  private boolean b;
  
  private jnz c;
  
  public jnw(List<LojaCampaign.Campaign> paramList, boolean paramBoolean) {
    this.a = paramList;
    this.b = paramBoolean;
  }
  
  private LojaCampaign.Campaign a(int paramInt) {
    return this.a.get(paramInt);
  }
  
  public jny a(ViewGroup paramViewGroup, int paramInt) {
    jny jny = new jny(paramViewGroup);
    jny.a(jny).setOnClickListener(new jnx(this, jny));
    return jny;
  }
  
  public void a(List<LojaCampaign.Campaign> paramList) {
    this.a.clear();
    this.a.addAll(paramList);
    notifyDataSetChanged();
  }
  
  public void a(jny paramjny, int paramInt) {
    LojaCampaign.Campaign campaign = a(paramInt);
    jny.a(paramjny).setImageBitmap(campaign.d());
  }
  
  public void a(jnz paramjnz) {
    this.c = paramjnz;
  }
  
  public int getItemCount() {
    return (this.a == null) ? 0 : this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jnw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */