import com.santander.app.contacorrente.domain.Conta;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class gvy implements gvx {
  private static final String a = "ContaCache";
  
  private List<Conta> b;
  
  public gvy(iow paramiow) {
    ArrayList<Conta> arrayList = new ArrayList();
    if (paramiow.e().e() != null && paramiow.e().e().size() > 0) {
      for (ipc ipc : paramiow.e().e()) {
        Conta conta = new Conta();
        conta.setAgencia(ipc.a());
        conta.setCuenta(ipc.b());
        conta.setExtractoHome(new fuy());
        conta.setIndiceAgenciaConta(ipc.h());
        conta.getExtractoHome().u(ipc.d());
        conta.setValor(a(ipc.c()));
        conta.setTipoConta(ipc.g());
        a(conta, ipc);
        conta.setSaldoTotalRendaFixa(paramiow.e().g());
        conta.setSaldoTotalPoupanca(paramiow.e().f());
        arrayList.add(conta);
      } 
      a(arrayList);
    } 
  }
  
  private String a(String paramString) {
    String str = paramString;
    if (paramString != null) {
      paramString = paramString.replaceAll("\\+", "");
      str = paramString;
      if (paramString.contains("-")) {
        paramString = paramString.replaceAll("-", "");
        str = "-" + paramString;
      } 
    } 
    return str;
  }
  
  private void a(Conta paramConta, ipc paramipc) {
    ArrayList<jdd> arrayList = new ArrayList();
    if (paramipc.e() != null && paramipc.e().size() > 0) {
      for (ipg ipg : paramipc.e()) {
        jdd jdd = new jdd();
        jdd.f(paramConta.getAgencia());
        jdd.g(paramConta.getCuenta());
        jdd.a(ipg.b());
        jdd.b(ipg.c());
        jdd.c(ipg.d());
        jdd.d(ipg.e());
        jdd.e(ipg.a());
        arrayList.add(jdd);
      } 
    } else {
      jdd jdd = new jdd();
      jdd.f(paramConta.getAgencia());
      jdd.g(paramConta.getCuenta());
      jdd.d("0");
      jdd.e("0");
      arrayList.add(jdd);
    } 
    paramConta.setFundos(arrayList);
    if (paramipc.f() != null && paramipc.f().size() > 0) {
      arrayList = new ArrayList<jdd>();
      for (ipf ipf : paramipc.f()) {
        jdc jdc = new jdc();
        jdc.a(ipf.a());
        jdc.b(ipf.b());
        jdc.c(ipf.c());
        arrayList.add(jdc);
      } 
      paramConta.setFamilias(arrayList);
    } 
  }
  
  public Integer a(String paramString1, String paramString2) {
    for (int i = 0; i < this.b.size(); i++) {
      if (paramString1.equalsIgnoreCase(((Conta)this.b.get(i)).getAgencia()) && paramString2.equalsIgnoreCase(((Conta)this.b.get(i)).getCuenta()))
        return Integer.valueOf(i); 
    } 
    return Integer.valueOf(0);
  }
  
  public List<Conta> a() {
    return this.b;
  }
  
  public void a(iph paramiph) {
    List<ipc> list = paramiph.e();
    if (list != null) {
      int i = 0;
      while (true) {
        if (i < this.b.size()) {
          Conta conta = this.b.get(i);
          ipc ipc = list.get(i);
          if (ipc.i() && !miq.C().f().C().b("00000085")) {
            conta.getExtractoHome().u(ipc.d());
            conta.setValor(a(ipc.c()));
          } 
          a(conta, ipc);
          conta.setSaldoTotalRendaFixa(paramiph.g());
          conta.setSaldoTotalPoupanca(paramiph.f());
          i++;
          continue;
        } 
        return;
      } 
    } 
  }
  
  public void a(ipk paramipk) {
    for (Conta conta : this.b) {
      iox iox = paramipk.c().get(Integer.parseInt(conta.getIndiceAgenciaConta()));
      conta.getExtractoHome().u(iox.a());
      conta.setValor(iox.b());
    } 
  }
  
  public void a(List<Conta> paramList) {
    this.b = paramList;
  }
  
  public List<Conta> b() {
    ArrayList<Conta> arrayList = new ArrayList();
    if (this.b != null) {
      Iterator<Conta> iterator = this.b.iterator();
      for (int i = 0; iterator.hasNext(); i++) {
        Conta conta = iterator.next();
        if ("2270".equals(conta.getAgencia())) {
          conta.setIndexConta(i);
          arrayList.add(conta);
        } 
      } 
    } 
    return arrayList;
  }
  
  public boolean c() {
    return (((Conta)this.b.get(0)).getSaldoTotalPoupanca() != null && !"0".equals(((Conta)this.b.get(0)).getSaldoTotalPoupanca()));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gvy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */