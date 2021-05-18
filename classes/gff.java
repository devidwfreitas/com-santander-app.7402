import android.util.Log;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class gff implements Serializable {
  @eks(a = "netMarketValue")
  private String a;
  
  @eks(a = "grossMarketValue")
  private String b;
  
  @eks(a = "type")
  private String c;
  
  @eks(a = "security")
  private String d;
  
  @eks(a = "totalCost")
  private String e;
  
  @eks(a = "result")
  private String f;
  
  @eks(a = "availableAmount")
  private String g;
  
  @eks(a = "blockedAmount")
  private String h;
  
  @eks(a = "brokerAverageCost")
  private String i;
  
  @eks(a = "sharePrice")
  private String j;
  
  @eks(a = "financial")
  private String k;
  
  @eks(a = "marketyValue")
  private String l;
  
  @eks(a = "amount")
  private String m;
  
  @eks(a = "price")
  private String n;
  
  @eks(a = "dealDate")
  private String o;
  
  @eks(a = "maturityDate")
  private String p;
  
  @eks(a = "payment")
  private String q;
  
  @eks(a = "grossRemuneration")
  private String r;
  
  @eks(a = "incomeTaxAccrued")
  private String s;
  
  @eks(a = "netPay")
  private String t;
  
  private final String u = "R$ 0,00";
  
  private String v;
  
  private String w;
  
  public ger a(List<gff> paramList1, List<gff> paramList2, List<gff> paramList3) {
    BigDecimal bigDecimal2 = new BigDecimal(0);
    ger ger = new ger();
    ger.a("R$ 00000");
    ger.b("R$ 00000");
    ArrayList<gev> arrayList = new ArrayList();
    gev gev2 = new gev();
    gev2.a("Ações");
    gev2.b(this.v);
    gev2.c(true);
    if (paramList1 != null) {
      Iterator<gff> iterator = paramList1.iterator();
      BigDecimal bigDecimal = bigDecimal2;
      while (iterator.hasNext()) {
        gff gff1 = iterator.next();
        gex gex = new gex();
        ArrayList<gev> arrayList1 = new ArrayList();
        arrayList1.add(new gev(gff1.d(), "", true));
        arrayList1.add(new gev("Saldo aplicado", naj.b(gff1.e())));
        arrayList1.add(new gev("Valor de mercado bruto", naj.b(gff1.b())));
        arrayList1.add(new gev("Resultado", naj.b(gff1.f())));
        arrayList1.add(new gev("Qtde. cotas", gff1.g()));
        arrayList1.add(new gev("Qtde. bloqueadas", gff1.h()));
        arrayList1.add(new gev("Custo médio c/ corretagem", naj.b(gff1.i())));
        arrayList1.add(new gev("Cotação", naj.b(gff1.j())));
        gex.a(arrayList1);
        try {
          BigDecimal bigDecimal3 = naj.O(gff1.a());
        } catch (ClassNotFoundException classNotFoundException) {
          Log.e("Error", classNotFoundException.getMessage());
          classNotFoundException = null;
        } 
        bigDecimal = bigDecimal.add((BigDecimal)classNotFoundException);
        gev2.e().add(gex);
      } 
      gev2.d(String.valueOf(bigDecimal));
    } 
    gev gev1 = new gev();
    gev1.a("Emprestimos de Ações");
    gev1.b(this.w);
    gev1.c(true);
    BigDecimal bigDecimal1 = new BigDecimal(0);
    if (paramList2 != null) {
      Iterator<gff> iterator = paramList2.iterator();
      for (boolean bool = true; iterator.hasNext(); bool = bool1) {
        gff gff1 = iterator.next();
        gex gex = new gex();
        ArrayList<gev> arrayList1 = new ArrayList();
        boolean bool1 = bool;
        if (bool) {
          arrayList1.add(new gev("OPERAÇÕES TOMADORAS", "", true, true));
          gex.a(true);
          bool1 = false;
        } 
        arrayList1.add(new gev(gff1.d(), "", true));
        arrayList1.add(new gev("Financeiro", naj.b(gff1.k())));
        arrayList1.add(new gev("Valor de mercado", naj.b(gff1.l())));
        arrayList1.add(new gev("Qtde. cotas", gff1.m()));
        arrayList1.add(new gev("Preço", naj.b(gff1.n())));
        arrayList1.add(new gev("Data operação", gff1.o()));
        arrayList1.add(new gev("Vencimento", gff1.p()));
        arrayList1.add(new gev("% Remuneração", gff1.q()));
        arrayList1.add(new gev("Remuneração", naj.b(gff1.r())));
        arrayList1.add(new gev("Taxas", naj.b(gff1.s())));
        arrayList1.add(new gev("Total remuneração", naj.b(gff1.t())));
        gex.a(arrayList1);
        try {
          BigDecimal bigDecimal = naj.O(gff1.k());
        } catch (ClassNotFoundException classNotFoundException) {
          Log.e("Error", classNotFoundException.getMessage());
          classNotFoundException = null;
        } 
        bigDecimal1 = bigDecimal1.add((BigDecimal)classNotFoundException);
        gev1.e().add(gex);
      } 
      gev1.d(String.valueOf(bigDecimal1));
    } 
    bigDecimal1 = new BigDecimal(0);
    if (paramList3 != null) {
      Iterator<gff> iterator = paramList3.iterator();
      for (boolean bool = true; iterator.hasNext(); bool = bool1) {
        gff gff1 = iterator.next();
        gex gex = new gex();
        ArrayList<gev> arrayList1 = new ArrayList();
        boolean bool1 = bool;
        if (bool) {
          arrayList1.add(new gev("OPERAÇÕES DOADORAS", "", true, true));
          gex.a(true);
          bool1 = false;
        } 
        arrayList1.add(new gev(gff1.d(), "", true));
        arrayList1.add(new gev("Financeiro", naj.b(gff1.k())));
        arrayList1.add(new gev("Valor de mercado", naj.b(gff1.l())));
        arrayList1.add(new gev("Qtde. cotas", gff1.m()));
        arrayList1.add(new gev("Preço", naj.b(gff1.n())));
        arrayList1.add(new gev("Data operação", gff1.o()));
        arrayList1.add(new gev("Vencimento", gff1.p()));
        arrayList1.add(new gev("% Remuneração", gff1.q()));
        arrayList1.add(new gev("Remuneração", naj.b(gff1.r())));
        arrayList1.add(new gev("Taxas", naj.b(gff1.s())));
        arrayList1.add(new gev("Total remuneração", naj.b(gff1.t())));
        gex.a(arrayList1);
        try {
          BigDecimal bigDecimal = naj.O(gff1.l());
        } catch (ClassNotFoundException classNotFoundException) {
          Log.e("Error", classNotFoundException.getMessage());
          classNotFoundException = null;
        } 
        bigDecimal1 = bigDecimal1.add((BigDecimal)classNotFoundException);
        gev1.e().add(gex);
      } 
      gev1.d(String.valueOf(bigDecimal1));
    } 
    arrayList.add(gev2);
    arrayList.add(gev1);
    ger.a = arrayList;
    return ger;
  }
  
  public gev a(List<gff> paramList1, List<gff> paramList2) {
    gev gev = new gev();
    try {
      BigDecimal bigDecimal3 = new BigDecimal(0);
      BigDecimal bigDecimal4 = new BigDecimal(0);
      gev.a(gfg.RENDA_VARIAVEL);
      gev.a(gfg.RENDA_VARIAVEL.getName());
      gev.b("R$ 0,00");
      BigDecimal bigDecimal2 = bigDecimal3;
      if (paramList1 != null) {
        bigDecimal2 = bigDecimal3;
        if (!paramList1.isEmpty()) {
          Iterator<gff> iterator = paramList1.iterator();
          BigDecimal bigDecimal;
          for (bigDecimal = bigDecimal3; iterator.hasNext(); bigDecimal = bigDecimal.add(naj.O(((gff)iterator.next()).b())));
          this.v = naj.a(bigDecimal);
          gev.c(true);
          bigDecimal2 = bigDecimal;
        } 
      } 
      BigDecimal bigDecimal1 = bigDecimal2;
      if (paramList2 != null) {
        bigDecimal1 = bigDecimal2;
        if (!paramList2.isEmpty()) {
          Iterator<gff> iterator = paramList2.iterator();
          BigDecimal bigDecimal = bigDecimal4;
          for (bigDecimal1 = bigDecimal2; iterator.hasNext(); bigDecimal1 = bigDecimal1.add(naj.O(gff1.k()))) {
            gff gff1 = iterator.next();
            bigDecimal = bigDecimal.add(naj.O(gff1.k()));
          } 
          this.w = naj.a(bigDecimal);
          gev.c(true);
        } 
      } 
      gev.b(naj.a(bigDecimal1));
      return gev;
    } catch (ClassNotFoundException classNotFoundException) {
      Log.e("Error", classNotFoundException.toString());
      return gev;
    } 
  }
  
  public String a() {
    return this.a;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public String b() {
    return this.b;
  }
  
  public void b(String paramString) {
    this.b = paramString;
  }
  
  public String c() {
    return this.c;
  }
  
  public void c(String paramString) {
    this.c = paramString;
  }
  
  public String d() {
    return this.d;
  }
  
  public void d(String paramString) {
    this.d = paramString;
  }
  
  public String e() {
    return this.e;
  }
  
  public void e(String paramString) {
    this.e = paramString;
  }
  
  public String f() {
    return this.f;
  }
  
  public void f(String paramString) {
    this.f = paramString;
  }
  
  public String g() {
    return this.g;
  }
  
  public void g(String paramString) {
    this.g = paramString;
  }
  
  public String h() {
    return this.h;
  }
  
  public void h(String paramString) {
    this.h = paramString;
  }
  
  public String i() {
    return this.i;
  }
  
  public void i(String paramString) {
    this.i = paramString;
  }
  
  public String j() {
    return this.j;
  }
  
  public void j(String paramString) {
    this.j = paramString;
  }
  
  public String k() {
    return this.k;
  }
  
  public void k(String paramString) {
    this.k = paramString;
  }
  
  public String l() {
    return this.l;
  }
  
  public void l(String paramString) {
    this.l = paramString;
  }
  
  public String m() {
    return this.m;
  }
  
  public void m(String paramString) {
    this.m = paramString;
  }
  
  public String n() {
    return this.n;
  }
  
  public void n(String paramString) {
    this.n = paramString;
  }
  
  public String o() {
    return this.o;
  }
  
  public void o(String paramString) {
    this.o = paramString;
  }
  
  public String p() {
    return this.p;
  }
  
  public void p(String paramString) {
    this.p = paramString;
  }
  
  public String q() {
    return this.q;
  }
  
  public void q(String paramString) {
    this.q = paramString;
  }
  
  public String r() {
    return this.r;
  }
  
  public void r(String paramString) {
    this.r = paramString;
  }
  
  public String s() {
    return this.s;
  }
  
  public void s(String paramString) {
    this.s = paramString;
  }
  
  public String t() {
    return this.t;
  }
  
  public void t(String paramString) {
    this.t = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gff.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */