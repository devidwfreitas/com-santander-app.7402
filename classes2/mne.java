import com.santander.app.contacorrente.domain.Conta;
import java.util.ArrayList;
import java.util.Map;

class mne implements gkw {
  mne(mnc parammnc, Conta paramConta) {}
  
  public void a(Object paramObject) {
    is is = (is)paramObject;
    if (is.c() == null) {
      mnc.b(this.b).a("Toque no botão abaixo para cadastrar um novo favorecido.");
      return;
    } 
    paramObject = mys.a().<mlh>a(is.c().toString(), mlh.class);
    if (is.a().intValue() != 200) {
      hav.a(mnc.c(this.b), new gkt(paramObject.getAction(), paramObject.getCode(), paramObject.getMessage()));
      return;
    } 
    if (paramObject.a().size() == 0) {
      mnc.b(this.b).a("Toque no botão abaixo para cadastrar um novo favorecido.");
      return;
    } 
    mkt mkt = new mkt();
    mkt.b(new ArrayList());
    mkt.a(new ArrayList());
    for (Map.Entry entry : paramObject.a().entrySet()) {
      paramObject = entry.getKey();
      mlg mlg = (mlg)entry.getValue();
      if (mlg.a().a() != null) {
        if (mlg.a().a().equals("0033")) {
          mlf mlf = new mlf();
          mlf.a((Integer)paramObject);
          mlf.g(mlg.a().a());
          mlf.i(mlg.a().b());
          mlf.j(mlg.a().c());
          mlf.h(mlg.b());
          mlf.k(mlg.c());
          if (mlg.d()) {
            paramObject = "S";
          } else {
            paramObject = "N";
          } 
          mlf.b((String)paramObject);
          mlf.e(mlg.e());
          mlf.c(mlg.f());
          mlf.f(mlg.g());
          mlf.a(mlg.h());
          mkt.a().add(mlf);
          continue;
        } 
        mle mle = new mle();
        mle.a((Integer)paramObject);
        mle.g(mlg.a().a());
        mle.i(mlg.a().b());
        mle.j(mlg.a().c());
        mle.h(mlg.b());
        mle.k(mlg.c());
        if (mlg.d()) {
          paramObject = "S";
        } else {
          paramObject = "N";
        } 
        mle.b((String)paramObject);
        mle.e(mlg.e());
        mle.c(mlg.f());
        mle.f(mlg.g());
        mle.a(mlg.h());
        mkt.b().add(mle);
      } 
    } 
    mnc.a(this.b);
    mqc.a = mkt;
    mnc.a(this.b);
    mqc.b = this.a;
    mnc.b(this.b).a(mkt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mne.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */