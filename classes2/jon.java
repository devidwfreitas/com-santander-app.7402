import com.santander.app.lojaonline.domain.LojaCampaign;

class jon implements ih {
  jon(jol paramjol, joi paramjoi) {}
  
  public void onFailure(is paramis) {
    this.a.a(new jnb(paramis.b()));
  }
  
  public void onSuccess(is paramis) {
    LojaCampaign lojaCampaign = (new ejm()).<LojaCampaign>a(paramis.c().toString(), LojaCampaign.class);
    this.a.a(lojaCampaign);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jon.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */