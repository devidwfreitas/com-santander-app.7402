import com.santander.app.contacorrente.domain.ExtratoContract;
import com.santander.app.contacorrente.domain.ExtratoResponse;

class gwk implements ih {
  gwk(gwe paramgwe, gwb paramgwb) {}
  
  public void onFailure(is paramis) {
    gwe.a(this.b, paramis.b(), false);
    this.a.a();
  }
  
  public void onSuccess(is paramis) {
    gwe.a(this.b, paramis.c().toString(), false);
    ExtratoResponse extratoResponse = mys.a().<ExtratoResponse>a(paramis.c().toString(), ExtratoResponse.class);
    this.a.a((ExtratoContract)extratoResponse);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gwk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */