import android.view.View;
import com.santander.app.lojaonline.domain.LojaCampaign;

class jnx implements View.OnClickListener {
  jnx(jnw paramjnw, jny paramjny) {}
  
  public void onClick(View paramView) {
    if (jnw.a(this.b) != null) {
      int i = this.a.getAdapterPosition();
      LojaCampaign.Campaign campaign = jnw.a(this.b, i);
      if (jnw.b(this.b)) {
        jor.a(campaign.f(), i + 1);
      } else {
        jor.b(campaign.f(), i + 1);
      } 
      jnw.a(this.b).a(campaign);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jnx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */