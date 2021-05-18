import java.util.ArrayList;

class mma implements gkw {
  mma(mlw parammlw) {}
  
  public void a(Object paramObject) {
    paramObject = paramObject;
    if (paramObject.c() == null) {
      mli mli = new mli();
      mli.setMensagemErro(paramObject.b());
      mlw.a(this.a).d(mli);
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
      mkq mkq = new mkq();
      mkq.d(mkr.d());
      mkq.e(mkr.e());
      mkq.c(mkr.c());
      paramObject.b().add(mkq);
    } 
    mlw.a(this.a).c((mli)paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mma.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */