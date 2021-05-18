import android.util.Log;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class gfc implements Serializable {
  @eks(a = "assetYearlyFee")
  private String A;
  
  @eks(a = "assetValue")
  private String B;
  
  @eks(a = "serial")
  private String C;
  
  @eks(a = "cupomSide")
  private String D;
  
  @eks(a = "adjust")
  private String E;
  
  @eks(a = "provision")
  private String F;
  
  private final String G = "R$ 0,00";
  
  private BigDecimal H = new BigDecimal(0);
  
  private BigDecimal I = new BigDecimal(0);
  
  private BigDecimal J = new BigDecimal(0);
  
  private BigDecimal K = new BigDecimal(0);
  
  private BigDecimal L = new BigDecimal(0);
  
  private BigDecimal M = new BigDecimal(0);
  
  @eks(a = "netCumulativeApprop")
  private String a;
  
  @eks(a = "grossMarketValue")
  private String b;
  
  @eks(a = "marketValue")
  private String c;
  
  @eks(a = "netMarketValue")
  private String d;
  
  @eks(a = "finalValueSide")
  private String e;
  
  @eks(a = "security")
  private String f;
  
  @eks(a = "type")
  private String g;
  
  @eks(a = "totalCost")
  private String h;
  
  @eks(a = "result")
  private String i;
  
  @eks(a = "totalAmount")
  private String j;
  
  @eks(a = "brokerAverageCost")
  private String k;
  
  @eks(a = "sharePrice")
  private String l;
  
  @eks(a = "maturityDate")
  private String m;
  
  @eks(a = "asset")
  private String n;
  
  @eks(a = "marketPrice")
  private String o;
  
  @eks(a = "amount")
  private String p;
  
  @eks(a = "equalization")
  private String q;
  
  @eks(a = "accrualAdjust")
  private String r;
  
  @eks(a = "maturity")
  private String s;
  
  @eks(a = "broker")
  private String t;
  
  @eks(a = "mainValue")
  private String u;
  
  @eks(a = "startDate")
  private String v;
  
  @eks(a = "liabilityIndex")
  private String w;
  
  @eks(a = "liabilityYearlyFee")
  private String x;
  
  @eks(a = "liabilityValue")
  private String y;
  
  @eks(a = "assetIndex")
  private String z;
  
  private String G(String paramString) {
    String str = paramString;
    if (!paramString.contains("%"))
      str = paramString + "%"; 
    return str;
  }
  
  public String A() {
    return this.B;
  }
  
  public void A(String paramString) {
    this.B = paramString;
  }
  
  public String B() {
    return this.C;
  }
  
  public void B(String paramString) {
    this.C = paramString;
  }
  
  public String C() {
    return this.D;
  }
  
  public void C(String paramString) {
    this.D = paramString;
  }
  
  public String D() {
    return this.E;
  }
  
  public void D(String paramString) {
    this.E = paramString;
  }
  
  public String E() {
    return this.F;
  }
  
  public void E(String paramString) {
    this.F = paramString;
  }
  
  public String F() {
    return this.d;
  }
  
  public void F(String paramString) {
    this.d = paramString;
  }
  
  public gev a(List<gfc> paramList1, List<gfc> paramList2, List<gfc> paramList3, List<gfc> paramList4, List<gfc> paramList5, List<gfc> paramList6) {
    gev gev = new gev();
    gev.a(gfg.DERIVATIVOS);
    gev.a(gfg.DERIVATIVOS.getName());
    gev.b("R$ 0,00");
    if (paramList1 != null)
      try {
        if (!paramList1.isEmpty()) {
          for (gfc gfc1 : paramList1)
            this.H = this.H.add(naj.O(gfc1.b())); 
          gev.c(true);
        } 
      } catch (ClassNotFoundException classNotFoundException) {
        Log.e("Error", classNotFoundException.toString());
        return gev;
      }  
    if (paramList2 != null && !paramList2.isEmpty()) {
      for (gfc gfc1 : paramList2)
        this.H = this.H.add(naj.O(gfc1.b())); 
      gev.c(true);
    } 
    if (paramList3 != null && !paramList3.isEmpty()) {
      for (gfc gfc1 : paramList3)
        this.I = this.I.add(naj.O(gfc1.c())); 
      gev.c(true);
    } 
    if (paramList4 != null && !paramList4.isEmpty()) {
      for (gfc gfc1 : paramList4)
        this.J = this.J.add(naj.O(gfc1.c())); 
      gev.c(true);
    } 
    if (paramList5 != null && !paramList5.isEmpty()) {
      for (gfc gfc1 : paramList5)
        this.K = this.K.add(naj.O(gfc1.a())); 
      gev.c(true);
    } 
    if (paramList6 != null && !paramList6.isEmpty()) {
      for (gfc gfc1 : paramList6)
        this.L = this.L.add(naj.O(gfc1.d())); 
      gev.c(true);
    } 
    if (gev.g()) {
      this.M = this.M.add(this.H);
      this.M = this.M.add(this.I);
      this.M = this.M.add(this.J);
      this.M = this.M.add(this.K);
      this.M = this.M.add(this.L);
      gev.b(naj.a(this.M));
      return gev;
    } 
    return gev;
  }
  
  public String a() {
    return this.a;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public ger b(List<gfc> paramList1, List<gfc> paramList2, List<gfc> paramList3, List<gfc> paramList4, List<gfc> paramList5, List<gfc> paramList6) {
    gex gex1;
    gex gex2;
    BigDecimal bigDecimal4 = new BigDecimal(0);
    ger ger = new ger();
    ger.b(String.valueOf(this.M));
    ArrayList<gev> arrayList = new ArrayList();
    gev gev5 = new gev();
    gev5.a("Opções");
    gev5.b(String.valueOf(this.H));
    BigDecimal bigDecimal3 = bigDecimal4;
    if (paramList1 != null) {
      Iterator<gfc> iterator = paramList1.iterator();
      BigDecimal bigDecimal = bigDecimal4;
      while (iterator.hasNext()) {
        gfc gfc1 = iterator.next();
        gex gex = new gex();
        ArrayList<gev> arrayList1 = new ArrayList();
        arrayList1.add(new gev(gfc1.e(), "", true));
        arrayList1.add(new gev("Tipo", gfc1.f()));
        arrayList1.add(new gev("Custo total", naj.b(gfc1.g())));
        arrayList1.add(new gev("Valor de mercado liquido", naj.b(gfc1.F())));
        arrayList1.add(new gev("Resultado", naj.b(gfc1.h())));
        arrayList1.add(new gev("Qtde. cotas", gfc1.i()));
        arrayList1.add(new gev("Custo médio c/ corretagem", naj.b(gfc1.j())));
        arrayList1.add(new gev("Cotação", naj.b(gfc1.k())));
        arrayList1.add(new gev("Vencimento", nak.z(gfc1.l())));
        try {
          BigDecimal bigDecimal5 = naj.O(gfc1.b());
        } catch (ClassNotFoundException classNotFoundException) {
          Log.e("Error", classNotFoundException.getMessage());
          classNotFoundException = null;
        } 
        bigDecimal = bigDecimal.add((BigDecimal)classNotFoundException);
        gex.a(arrayList1);
        gev5.c(true);
        gev5.e().add(gex);
      } 
      bigDecimal3 = bigDecimal;
    } 
    if (paramList2 != null) {
      Iterator<gfc> iterator = paramList2.iterator();
      BigDecimal bigDecimal = bigDecimal3;
      while (true) {
        BigDecimal bigDecimal5 = bigDecimal;
        if (iterator.hasNext()) {
          gfc gfc1 = iterator.next();
          gex2 = new gex();
          ArrayList<gev> arrayList1 = new ArrayList();
          arrayList1.add(new gev(gfc1.e(), "", true));
          arrayList1.add(new gev("Tipo", gfc1.f()));
          arrayList1.add(new gev("Custo total", naj.b(gfc1.g())));
          arrayList1.add(new gev("Valor de mercado liquido", naj.b(gfc1.F())));
          arrayList1.add(new gev("Resultado", naj.b(gfc1.h())));
          arrayList1.add(new gev("Qtde. cotas", gfc1.i()));
          arrayList1.add(new gev("Custo médio c/ corretagem", naj.b(gfc1.j())));
          arrayList1.add(new gev("Cotação", naj.b(gfc1.k())));
          arrayList1.add(new gev("Vencimento", gfc1.l()));
          try {
            BigDecimal bigDecimal6 = naj.O(gfc1.F());
          } catch (ClassNotFoundException classNotFoundException) {
            Log.e("Error", classNotFoundException.getMessage());
            classNotFoundException = null;
          } 
          bigDecimal = bigDecimal.add((BigDecimal)classNotFoundException);
          gex2.a(arrayList1);
          gev5.c(true);
          gev5.e().add(gex2);
          continue;
        } 
        break;
      } 
    } else {
      gex1 = gex2;
    } 
    gev5.d(naj.a((BigDecimal)gex1));
    BigDecimal bigDecimal2 = new BigDecimal(0);
    gev gev4 = new gev();
    gev4.a("Futuros");
    gev4.b(String.valueOf(this.I));
    BigDecimal bigDecimal1 = bigDecimal2;
    if (paramList3 != null) {
      Iterator<gfc> iterator = paramList3.iterator();
      bigDecimal1 = bigDecimal2;
      while (iterator.hasNext()) {
        gfc gfc1 = iterator.next();
        gex gex = new gex();
        ArrayList<gev> arrayList1 = new ArrayList();
        arrayList1.add(new gev(gfc1.m(), "", true));
        arrayList1.add(new gev("Valor de mercado", naj.b(gfc1.c())));
        arrayList1.add(new gev("Preço de mercado", naj.b(gfc1.n())));
        arrayList1.add(new gev("Quantidade", gfc1.o()));
        arrayList1.add(new gev("Ajuste equalização", naj.b(gfc1.p())));
        arrayList1.add(new gev("Ajuste valorização", naj.b(gfc1.q())));
        arrayList1.add(new gev("Vencimento", gfc1.r()));
        try {
          BigDecimal bigDecimal = naj.O(gfc1.c());
        } catch (ClassNotFoundException classNotFoundException) {
          Log.e("Error", classNotFoundException.getMessage());
          classNotFoundException = null;
        } 
        bigDecimal1 = bigDecimal1.add((BigDecimal)classNotFoundException);
        gex.a(arrayList1);
        gev4.c(true);
        gev4.e().add(gex);
      } 
      gev4.d(String.valueOf(bigDecimal1));
      gev4.b(String.valueOf(this.I));
      bigDecimal1 = new BigDecimal(0);
    } 
    gev gev1 = new gev();
    gev1.a("Opções de Futuros");
    gev1.b(String.valueOf(this.J));
    bigDecimal2 = bigDecimal1;
    if (paramList4 != null) {
      for (gfc gfc1 : paramList4) {
        gex gex = new gex();
        ArrayList<gev> arrayList1 = new ArrayList();
        arrayList1.add(new gev(gfc1.e(), "", true));
        arrayList1.add(new gev("Custo total", naj.b(gfc1.g())));
        arrayList1.add(new gev("Valor de mercado bruto", naj.b(gfc1.c())));
        arrayList1.add(new gev("Resultado", naj.b(gfc1.h())));
        arrayList1.add(new gev("Quantidade", gfc1.o()));
        arrayList1.add(new gev("Ajuste equalização", naj.b(gfc1.j())));
        arrayList1.add(new gev("Ajuste valorização", naj.b(gfc1.k())));
        arrayList1.add(new gev("Vencimento", gfc1.l()));
        try {
          BigDecimal bigDecimal = naj.O(gfc1.c());
        } catch (ClassNotFoundException classNotFoundException) {
          Log.e("Error", classNotFoundException.getMessage());
          classNotFoundException = null;
        } 
        bigDecimal1 = bigDecimal1.add((BigDecimal)classNotFoundException);
        gex.a(arrayList1);
        gev1.c(true);
        gev1.e().add(gex);
      } 
      gev1.d(String.valueOf(bigDecimal1));
      bigDecimal2 = new BigDecimal(0);
    } 
    gev gev2 = new gev();
    gev2.a("Swap");
    gev2.b(String.valueOf(this.K));
    bigDecimal1 = bigDecimal2;
    if (paramList6 != null) {
      Iterator<gfc> iterator = paramList6.iterator();
      bigDecimal1 = bigDecimal2;
      while (iterator.hasNext()) {
        gfc gfc1 = iterator.next();
        gex gex = new gex();
        ArrayList<gev> arrayList1 = new ArrayList();
        arrayList1.add(new gev(gfc1.s(), "", true));
        arrayList1.add(new gev("Principal", naj.b(gfc1.t())));
        arrayList1.add(new gev("Emissão", nak.z(gfc1.u())));
        arrayList1.add(new gev("Vencimento", nak.z(gfc1.r())));
        arrayList1.add(new gev("Passivo", "", true));
        arrayList1.add(new gev("Índice", gfc1.v()));
        arrayList1.add(new gev("Taxa %A.A.", G(gfc1.w())));
        arrayList1.add(new gev("Valor", naj.b(gfc1.x())));
        arrayList1.add(new gev("Ativo", "", true));
        arrayList1.add(new gev("Índice", gfc1.y()));
        arrayList1.add(new gev("Taxa %A.A.", G(gfc1.z())));
        arrayList1.add(new gev("Valor", naj.b(gfc1.A())));
        try {
          BigDecimal bigDecimal = naj.O(gfc1.a());
        } catch (ClassNotFoundException classNotFoundException) {
          Log.e("Error", classNotFoundException.getMessage());
          classNotFoundException = null;
        } 
        bigDecimal1 = bigDecimal1.add((BigDecimal)classNotFoundException);
        gex.a(arrayList1);
        gev2.c(true);
        gev2.e().add(gex);
      } 
      gev2.d(String.valueOf(bigDecimal1));
      bigDecimal1 = new BigDecimal(0);
    } 
    gev gev3 = new gev();
    gev3.a("Swap Cambial");
    gev3.b(String.valueOf(this.L));
    if (paramList5 != null) {
      for (gfc gfc1 : paramList5) {
        gex gex = new gex();
        ArrayList<gev> arrayList1 = new ArrayList();
        arrayList1.add(new gev(gfc1.s(), "", true));
        arrayList1.add(new gev("Principal", naj.b(gfc1.t())));
        arrayList1.add(new gev("Emissão", gfc1.u()));
        arrayList1.add(new gev("Vencimento", gfc1.r()));
        arrayList1.add(new gev("Passivo", "", true));
        arrayList1.add(new gev("Índice", gfc1.v()));
        arrayList1.add(new gev("Taxa %A.A.", G(gfc1.w() + "%")));
        arrayList1.add(new gev("Valor", naj.b(gfc1.x())));
        arrayList1.add(new gev("Ativo", "", true));
        arrayList1.add(new gev("Índice", gfc1.y()));
        arrayList1.add(new gev("Taxa %A.A.", G(gfc1.z() + "%")));
        arrayList1.add(new gev("Valor", naj.b(gfc1.A())));
        try {
          BigDecimal bigDecimal = naj.O(gfc1.d());
        } catch (ClassNotFoundException classNotFoundException) {
          Log.e("Error", classNotFoundException.getMessage());
          classNotFoundException = null;
        } 
        bigDecimal1 = bigDecimal1.add((BigDecimal)classNotFoundException);
        gex.a(arrayList1);
        gev3.c(true);
        gev3.e().add(gex);
      } 
      gev3.d(String.valueOf(bigDecimal1));
    } 
    arrayList.add(gev5);
    arrayList.add(gev4);
    arrayList.add(gev1);
    arrayList.add(gev2);
    arrayList.add(gev3);
    ger.a = arrayList;
    return ger;
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
    return this.e;
  }
  
  public void d(String paramString) {
    this.e = paramString;
  }
  
  public String e() {
    return this.f;
  }
  
  public void e(String paramString) {
    this.f = paramString;
  }
  
  public String f() {
    return this.g;
  }
  
  public void f(String paramString) {
    this.g = paramString;
  }
  
  public String g() {
    return this.h;
  }
  
  public void g(String paramString) {
    this.h = paramString;
  }
  
  public String h() {
    return this.i;
  }
  
  public void h(String paramString) {
    this.i = paramString;
  }
  
  public String i() {
    return this.j;
  }
  
  public void i(String paramString) {
    this.j = paramString;
  }
  
  public String j() {
    return this.k;
  }
  
  public void j(String paramString) {
    this.k = paramString;
  }
  
  public String k() {
    return this.l;
  }
  
  public void k(String paramString) {
    this.l = paramString;
  }
  
  public String l() {
    return this.m;
  }
  
  public void l(String paramString) {
    this.m = paramString;
  }
  
  public String m() {
    return this.n;
  }
  
  public void m(String paramString) {
    this.n = paramString;
  }
  
  public String n() {
    return this.o;
  }
  
  public void n(String paramString) {
    this.o = paramString;
  }
  
  public String o() {
    return this.p;
  }
  
  public void o(String paramString) {
    this.p = paramString;
  }
  
  public String p() {
    return this.q;
  }
  
  public void p(String paramString) {
    this.q = paramString;
  }
  
  public String q() {
    return this.r;
  }
  
  public void q(String paramString) {
    this.r = paramString;
  }
  
  public String r() {
    return this.s;
  }
  
  public void r(String paramString) {
    this.s = paramString;
  }
  
  public String s() {
    return this.t;
  }
  
  public void s(String paramString) {
    this.t = paramString;
  }
  
  public String t() {
    return this.u;
  }
  
  public void t(String paramString) {
    this.u = paramString;
  }
  
  public String u() {
    return this.v;
  }
  
  public void u(String paramString) {
    this.v = paramString;
  }
  
  public String v() {
    return this.w;
  }
  
  public void v(String paramString) {
    this.w = paramString;
  }
  
  public String w() {
    return this.x;
  }
  
  public void w(String paramString) {
    this.x = paramString;
  }
  
  public String x() {
    return this.y;
  }
  
  public void x(String paramString) {
    this.y = paramString;
  }
  
  public String y() {
    return this.z;
  }
  
  public void y(String paramString) {
    this.z = paramString;
  }
  
  public String z() {
    return this.A;
  }
  
  public void z(String paramString) {
    this.A = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gfc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */