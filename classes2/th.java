import org.json.JSONObject;

class th implements ih {
  th(te paramte, String paramString, tj paramtj) {}
  
  public void onFailure(is paramis) {
    this.b.a(new aby(paramis.a().intValue(), paramis.b()));
  }
  
  public void onSuccess(is paramis) {
    try {
      tq tq = (new eju()).j().<tq>a(paramis.c().toString(), tq.class);
      try {
        JSONObject jSONObject = new JSONObject((new eju()).j().b(new td(3)));
        abp.b().a().a(te.a(this.c, this.a, te.b(this.c), jSONObject), new ti(this, tq));
        return;
      } catch (Exception exception) {
        this.b.a((abv)tq);
        return;
      } 
    } catch (Exception exception) {
      this.b.a(new aby(-1, te.a(this.c).getResources().getString(lg.error_generic)));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\th.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */