import com.santander.app.lojaonline.domain.LojaTerm;

class joo implements ih {
  joo(jol paramjol, jok paramjok) {}
  
  public void onFailure(is paramis) {
    this.a.a(new jnb(paramis.b()));
  }
  
  public void onSuccess(is paramis) {
    LojaTerm lojaTerm = (new ejm()).<LojaTerm>a(paramis.c().toString(), LojaTerm.class);
    this.a.a(lojaTerm);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\joo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */