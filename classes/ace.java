import android.support.annotation.NonNull;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

public class ace extends abv implements Comparable<ace> {
  @ekq
  @eks(a = "schedulingIndicator")
  private String A;
  
  private boolean B;
  
  private boolean C;
  
  @ekq
  @eks(a = "product")
  private to a;
  
  @ekq
  @eks(a = "investimentoSelecionado")
  private tk b;
  
  @ekq
  @eks(a = "familyColor")
  private Integer c;
  
  @ekq
  @eks(a = "familyCode")
  private String d;
  
  @ekq
  @eks(a = "familyName")
  private String e;
  
  @ekq
  @eks(a = "valorIndividual")
  private Double f;
  
  @ekq
  @eks(a = "dataIndividual")
  private Calendar g;
  
  @ekq
  @eks(a = "prazoIndividual")
  private Integer h;
  
  @ekq
  @eks(a = "valorMensal")
  private Double i;
  
  @ekq
  @eks(a = "dataMensal")
  private Calendar j;
  
  @ekq
  @eks(a = "prazoMensal")
  private Integer k;
  
  @ekq
  @eks(a = "contaSelecionada")
  private ou l;
  
  @ekq
  @eks(a = "index")
  private int m;
  
  @ekq
  @eks(a = "apiMessage")
  private boolean n;
  
  @ekq
  @eks(a = "showEdit")
  private boolean o;
  
  @ekq
  @eks(a = "valorTotal")
  private Double p;
  
  @ekq
  @eks(a = "successProcessed")
  private Boolean q;
  
  @ekq
  @eks(a = "financialApplication")
  private lm r;
  
  @ekq
  @eks(a = "efetivacaoBancaria")
  private sk s;
  
  @ekq
  @eks(a = "grace")
  private String t;
  
  @ekq
  @eks(a = "rentabilidade")
  private String u;
  
  @ekq
  @eks(a = "taxaAdministracaoAnual")
  private String v;
  
  @ekq
  @eks(a = "programada")
  private boolean w;
  
  @ekq
  @eks(a = "totalSelected")
  private boolean x;
  
  @ekq
  @eks(a = "typeAplication")
  private boolean y;
  
  @ekq
  @eks(a = "terms")
  private List<lx> z;
  
  public ace() {
    this.w = false;
    this.x = false;
    this.y = false;
    this.A = "N";
  }
  
  public ace(lw paramlw, String paramString1, Integer paramInteger, lm paramlm, String paramString2) {
    boolean bool;
    this.w = false;
    this.x = false;
    this.y = false;
    this.A = "N";
    this.a = paramlw;
    this.a.h(paramlw.a());
    this.a.m(paramlw.b());
    this.c = paramInteger;
    this.d = paramString2;
    this.e = paramString1;
    this.r = paramlm;
    if (paramlm.i() != null && !paramlm.i().isEmpty()) {
      bool = true;
    } else {
      bool = false;
    } 
    this.n = bool;
    this.C = false;
    Iterator<acb> iterator = paramlm.i().iterator();
    while (iterator.hasNext()) {
      if (((acb)iterator.next()).c().equalsIgnoreCase("E")) {
        this.C = true;
        break;
      } 
    } 
    this.o = f(paramlm.d()).booleanValue();
    this.B = f(paramlm.b()).booleanValue();
  }
  
  public ace(to paramto, String paramString1, Integer paramInteger, tk paramtk, String paramString2) {
    this.w = false;
    this.x = false;
    this.y = false;
    this.A = "N";
    this.a = paramto;
    this.c = paramInteger;
    this.b = paramtk;
    this.d = paramString2;
    this.e = paramString1;
    this.g = Calendar.getInstance();
    this.h = Integer.valueOf(0);
    this.j = Calendar.getInstance();
    this.k = Integer.valueOf(0);
    this.n = false;
    this.C = false;
    this.o = true;
  }
  
  private Boolean f(String paramString) {
    return (paramString != null && paramString.equalsIgnoreCase("S")) ? Boolean.valueOf(true) : Boolean.valueOf(false);
  }
  
  public boolean A() {
    return this.y;
  }
  
  public String B() {
    return this.u;
  }
  
  public String C() {
    return this.v;
  }
  
  public boolean D() {
    return this.C;
  }
  
  public String E() {
    return this.A;
  }
  
  public int a(@NonNull ace paramace) {
    return v().compareTo(paramace.v());
  }
  
  public void a(int paramInt) {
    this.m = paramInt;
  }
  
  public void a(Boolean paramBoolean) {
    this.q = paramBoolean;
  }
  
  public void a(Double paramDouble) {
    this.f = paramDouble;
  }
  
  public void a(Integer paramInteger) {
    this.h = paramInteger;
  }
  
  public void a(String paramString) {
    this.d = paramString;
  }
  
  public void a(Calendar paramCalendar) {
    this.g = paramCalendar;
  }
  
  public void a(List<lx> paramList) {
    this.z = paramList;
  }
  
  public void a(lm paramlm) {
    this.r = paramlm;
  }
  
  public void a(ou paramou) {
    paramou.a(Boolean.valueOf(true));
    this.l = paramou;
  }
  
  public void a(sk paramsk) {
    this.s = paramsk;
  }
  
  public void a(tk paramtk) {
    this.b = paramtk;
  }
  
  public void a(to paramto) {
    this.a = paramto;
  }
  
  public void a(boolean paramBoolean) {
    this.w = paramBoolean;
  }
  
  public boolean a() {
    return this.B;
  }
  
  public void b(Double paramDouble) {
    this.i = paramDouble;
  }
  
  public void b(Integer paramInteger) {
    this.k = paramInteger;
  }
  
  public void b(String paramString) {
    this.e = paramString;
  }
  
  public void b(Calendar paramCalendar) {
    this.j = paramCalendar;
  }
  
  public void b(boolean paramBoolean) {
    this.n = paramBoolean;
  }
  
  public boolean b() {
    return this.w;
  }
  
  public void c(Double paramDouble) {
    this.p = paramDouble;
  }
  
  public void c(Integer paramInteger) {
    this.c = paramInteger;
  }
  
  public void c(String paramString) {
    this.t = paramString;
  }
  
  public void c(boolean paramBoolean) {
    this.o = paramBoolean;
  }
  
  public boolean c() {
    return this.n;
  }
  
  public void d(String paramString) {
    this.u = paramString;
  }
  
  public void d(boolean paramBoolean) {
    this.x = paramBoolean;
  }
  
  public boolean d() {
    return this.o;
  }
  
  public tk e() {
    return this.b;
  }
  
  public void e(String paramString) {
    this.v = paramString;
  }
  
  public void e(boolean paramBoolean) {
    this.B = paramBoolean;
  }
  
  public to f() {
    return this.a;
  }
  
  public void f(boolean paramBoolean) {
    this.y = paramBoolean;
  }
  
  public Integer g() {
    return this.c;
  }
  
  public void g(boolean paramBoolean) {
    String str;
    if (paramBoolean) {
      str = "C";
    } else {
      str = "N";
    } 
    this.A = str;
  }
  
  public ou h() {
    return this.l;
  }
  
  public int i() {
    return this.m;
  }
  
  public Double j() {
    return this.f;
  }
  
  public Calendar k() {
    return this.g;
  }
  
  public Integer l() {
    return this.h;
  }
  
  public Double m() {
    return this.i;
  }
  
  public Calendar n() {
    return this.j;
  }
  
  public Integer o() {
    return this.k;
  }
  
  public Boolean p() {
    return this.q;
  }
  
  public String q() {
    return this.d;
  }
  
  public lm r() {
    return this.r;
  }
  
  public sk s() {
    return this.s;
  }
  
  public void t() {
    double d1 = 0.0D;
    if (this.f != null)
      d1 = 0.0D + this.f.doubleValue(); 
    double d2 = d1;
    if (this.i != null)
      d2 = d1 + this.i.doubleValue(); 
    this.p = Double.valueOf(d2);
  }
  
  public String toString() {
    return "AplicacaoEntity{product=" + this.a + ", investimentoSelecionado=" + this.b + ", familyColor=" + this.c + ", familyCode=" + this.d + ", valorIndividual=" + this.f + ", dataIndividual=" + this.g + ", prazoIndividual=" + this.h + ", valorMensal=" + this.i + ", dataMensal=" + this.j + ", prazoMensal=" + this.k + ", contaSelecionada=" + this.l + ", index=" + this.m + ", apiMessage=" + this.n + ", showEditButton=" + this.o + ", valorTotal=" + this.p + ", successProcessed=" + this.q + ", financialApplication=" + this.r + ", efeticacaoBancaria=" + this.s + ", programada=" + this.w + '}';
  }
  
  public String u() {
    return this.e;
  }
  
  public Double v() {
    return this.p;
  }
  
  public String w() {
    return this.t;
  }
  
  public List<lx> x() {
    if (this.z == null)
      this.z = new ArrayList<lx>(); 
    return this.z;
  }
  
  public boolean y() {
    return this.x;
  }
  
  public boolean z() {
    return this.B;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ace.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */