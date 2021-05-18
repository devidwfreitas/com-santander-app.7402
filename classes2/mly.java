import java.util.ArrayList;

class mly implements gkw {
  mly(mlw parammlw) {}
  
  public void a(Object paramObject) {
    paramObject = paramObject;
    if (paramObject.c() == null) {
      mli mli = new mli();
      mli.setMensagemErro(paramObject.b());
      mlw.a(this.a).b(mli);
      return;
    } 
    mks mks = mys.a().<mks>a(paramObject.c().toString(), mks.class);
    if (paramObject.a().intValue() != 200) {
      hav.a(mlw.b(this.a), new gkt(mks.getAction(), mks.getCode(), mks.getMessage()));
      return;
    } 
    paramObject = new mli();
    paramObject.b(new ArrayList());
    paramObject.a(new ArrayList());
    for (mkr mkr : mks.a()) {
      mkq mkq1 = new mkq();
      mkq1.a(mkr.a());
      mkq1.b(mkr.b());
      mkq1.c(mkr.c());
      paramObject.a().add(mkq1);
    } 
    mkq mkq = new mkq();
    mkq.b("Ver todos os bancos");
    mkq.a("99999");
    paramObject.a().add(mkq);
    mlw.a(this.a).a((mli)paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mly.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */