import android.content.Context;

class ng implements ih {
  ng(nf paramnf, nh paramnh, Context paramContext) {}
  
  public void onFailure(is paramis) {
    this.a.a(new aby(paramis.a().intValue(), paramis.b()));
  }
  
  public void onSuccess(is paramis) {
    try {
      this.a.a((abv)(new eju()).j().a(paramis.c().toString(), ne.class));
      return;
    } catch (Exception exception) {
      this.a.a(new aby(paramis.a().intValue(), this.b.getResources().getString(lg.error_generic)));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ng.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */