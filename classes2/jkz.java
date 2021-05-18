import com.santander.app.contacorrente.domain.Conta;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class jkz implements jky {
  private List<Conta> a;
  
  private String b;
  
  private jde a(Conta paramConta) {
    jde jde = new jde();
    jde.a(new ftx());
    jde.a(new fst());
    jde.a("CDB / LCI");
    jde.b().b("BRL");
    jde.b().a(paramConta.getSaldoTotalRendaFixa());
    jde.a(4);
    jde.a().b("00009");
    jde.a().a("00009");
    return jde;
  }
  
  private jde e() {
    jdd jdd;
    Long long_ = new Long("0");
    for (Conta conta : this.a) {
      jdd jdd1;
      Long long_1 = long_;
      if (conta.getFundos() != null) {
        long_1 = long_;
        if (conta.getFundos().size() > 0) {
          Iterator<jdd> iterator = conta.getFundos().iterator();
          while (true) {
            long_1 = long_;
            if (iterator.hasNext()) {
              jdd1 = iterator.next();
              if (jdd1.e() == null) {
                long_ = Long.valueOf(long_.longValue() + 0L);
                continue;
              } 
              long l = long_.longValue();
              long_ = Long.valueOf(Long.parseLong(jdd1.e()) + l);
              continue;
            } 
            break;
          } 
        } 
      } 
      jdd = jdd1;
    } 
    jde jde = new jde();
    jde.a(new ftx());
    jde.a(new fst());
    jde.a("Fundos");
    jde.b().b("BRL");
    jde.b().a(Long.toString(jdd.longValue()));
    jde.a(4);
    jde.a().b("00009");
    jde.a().a("00009");
    return jde;
  }
  
  private jde f() {
    jde jde = new jde();
    jde.a(new ftx());
    jde.a("Previdência");
    jde.b().b("BRL");
    if (this.b != null) {
      jde.b().a(this.b);
      jde.a(new fst());
      jde.a().b("00009");
      jde.a().a("00009");
    } 
    jde.a(4);
    return jde;
  }
  
  public List<jde> a() {
    ArrayList<jde> arrayList = new ArrayList();
    if (this.a != null) {
      arrayList.add(a(this.a.get(0)));
      jde jde = e();
      if (jde != null)
        arrayList.add(jde); 
      arrayList.add(f());
    } 
    return arrayList;
  }
  
  public void a(String paramString) {
    this.b = paramString;
  }
  
  public void a(List<Conta> paramList) {
    this.a = paramList;
  }
  
  public jde b() {
    jde jde = new jde();
    jde.a(new ftx());
    jde.a(new fst());
    jde.a("Poupança");
    jde.b().b("BRL");
    jde.b().a(((Conta)this.a.get(0)).getSaldoTotalPoupanca());
    jde.a(4);
    jde.a().b("00009");
    jde.a().a("00009");
    return jde;
  }
  
  public List<jdd> c() {
    ArrayList<jdd> arrayList = new ArrayList();
    Iterator<Conta> iterator = this.a.iterator();
    while (iterator.hasNext())
      arrayList.addAll(((Conta)iterator.next()).getFundos()); 
    return arrayList;
  }
  
  public List<jdc> d() {
    ArrayList<jdc> arrayList = new ArrayList();
    for (Conta conta : this.a) {
      if (conta.getFamilias() != null)
        arrayList.addAll(conta.getFamilias()); 
    } 
    return arrayList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jkz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */