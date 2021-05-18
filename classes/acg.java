import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class acg extends acf {
  @ekq
  @eks(a = "titularName")
  private String a = "";
  
  @ekq
  @eks(a = "Product")
  private to b;
  
  @ekq
  @eks(a = "familyColor")
  private Integer c;
  
  @ekq
  @eks(a = "familyName")
  private String d;
  
  @ekq
  @eks(a = "familyCode")
  private String e;
  
  @ekq
  @eks(a = "index")
  private Integer f = Integer.valueOf(0);
  
  @ekq
  @eks(a = "contasDisponiveis")
  private ArrayList<ou> g = new ArrayList<ou>();
  
  @ekq
  @eks(a = "investimentosSelecionados")
  private List<tk> h = new ArrayList<tk>();
  
  @ekq
  @eks(a = "carrinho")
  private List<ace> i = new ArrayList<ace>();
  
  @ekq
  @eks(a = "carrinhoEfetivado")
  private List<ace> j = new ArrayList<ace>();
  
  @ekq
  @eks(a = "carrinhoNaoEfetivado")
  private List<ace> k = new ArrayList<ace>();
  
  @ekq
  @eks(a = "carrinhoConta")
  private List<ou> l = new ArrayList<ou>();
  
  @ekq
  @eks(a = "editarAplicacao")
  private ace m;
  
  @ekq
  @eks(a = "edited")
  private boolean n;
  
  @ekq
  @eks(a = "novoResgate")
  private List<ace> o;
  
  @ekq
  @eks(a = "messagesCarrinho")
  private List<acb> p;
  
  @ekq
  @eks(a = "cdbInitialDate")
  private String q;
  
  @ekq
  @eks(a = "cdbFinalDate")
  private String r;
  
  @ekq
  @eks(a = "recomendation")
  private boolean s;
  
  @ekq
  @eks(a = "recomendationUsingLimit")
  private boolean t = false;
  
  @ekq
  @eks(a = "recomendationExceedAccountValue")
  private boolean u = false;
  
  @ekq
  @eks(a = "bockAccountCombo")
  private boolean v = false;
  
  @ekq
  @eks(a = "resgateTotalSelected")
  private boolean w = false;
  
  @ekq
  @eks(a = "acceptedTerms")
  private List<String> x;
  
  @ekq
  @eks(a = "redirectCodigoListaFamilia")
  private String y;
  
  public boolean A() {
    return this.s;
  }
  
  public String B() {
    return this.a;
  }
  
  public List<String> C() {
    return this.x;
  }
  
  public String a() {
    return this.y;
  }
  
  public void a(ace paramace) {
    this.m = paramace;
  }
  
  public void a(Integer paramInteger) {
    this.c = paramInteger;
  }
  
  public void a(String paramString) {
    this.y = paramString;
  }
  
  public void a(ArrayList<ou> paramArrayList) {
    this.g = paramArrayList;
  }
  
  public void a(List<ou> paramList) {
    this.l = paramList;
  }
  
  public void a(tk paramtk) {
    this.h = new ArrayList<tk>();
    this.h.add(paramtk);
  }
  
  public void a(to paramto) {
    this.b = paramto;
  }
  
  public void a(boolean paramBoolean) {
    this.w = paramBoolean;
  }
  
  public void b(ace paramace) {
    if (this.i == null)
      this.i = new ArrayList<ace>(); 
    paramace.t();
    this.i.add(paramace);
  }
  
  public void b(Integer paramInteger) {
    this.f = paramInteger;
  }
  
  public void b(String paramString) {
    this.d = paramString;
  }
  
  public void b(ArrayList<tk> paramArrayList) {
    this.h = paramArrayList;
  }
  
  public void b(List<ace> paramList) {
    this.i = paramList;
  }
  
  public void b(boolean paramBoolean) {
    this.v = paramBoolean;
  }
  
  public boolean b() {
    return this.w;
  }
  
  public void c(ace paramace) {
    ArrayList<ace> arrayList = new ArrayList();
    arrayList.add(paramace);
    this.o = arrayList;
  }
  
  public void c(String paramString) {
    this.e = paramString;
  }
  
  public void c(ArrayList<ou> paramArrayList) {
    this.g = paramArrayList;
  }
  
  public void c(List<ace> paramList) {
    this.j = paramList;
  }
  
  public void c(boolean paramBoolean) {
    this.t = paramBoolean;
  }
  
  public boolean c() {
    return this.v;
  }
  
  public void d(String paramString) {
    this.q = paramString;
  }
  
  public void d(List<ace> paramList) {
    this.k = paramList;
  }
  
  public void d(boolean paramBoolean) {
    this.u = paramBoolean;
  }
  
  public boolean d() {
    return this.t;
  }
  
  public void e(String paramString) {
    this.r = paramString;
  }
  
  public void e(List<acb> paramList) {
    this.p = paramList;
  }
  
  public void e(boolean paramBoolean) {
    this.n = paramBoolean;
  }
  
  public boolean e() {
    return this.u;
  }
  
  public void f(String paramString) {
    this.a = paramString;
  }
  
  public void f(List<String> paramList) {
    this.x = paramList;
  }
  
  public void f(boolean paramBoolean) {
    this.s = paramBoolean;
  }
  
  public boolean f() {
    return this.n;
  }
  
  public boolean g() {
    return (this.f.intValue() + 1 >= this.h.size());
  }
  
  public boolean h() {
    if (this.h != null && this.f.intValue() + 1 < this.h.size()) {
      Integer integer = this.f;
      this.f = Integer.valueOf(this.f.intValue() + 1);
      return true;
    } 
    return false;
  }
  
  public ace i() {
    return this.m;
  }
  
  public List<ou> j() {
    return this.l;
  }
  
  public List<ace> k() {
    Collections.sort(this.i, Collections.reverseOrder());
    return this.i;
  }
  
  public List<ace> l() {
    return this.i;
  }
  
  public ArrayList<ou> m() {
    return this.g;
  }
  
  public to n() {
    return this.b;
  }
  
  public Integer o() {
    return this.c;
  }
  
  public String p() {
    return (this.d == null) ? "" : this.d;
  }
  
  public String q() {
    return this.e;
  }
  
  public List<tk> r() {
    return this.h;
  }
  
  public void s() {
    if (this.h == null)
      this.h = new ArrayList<tk>(); 
    this.h.clear();
  }
  
  public Integer t() {
    return this.f;
  }
  
  public List<ace> u() {
    return this.j;
  }
  
  public List<ace> v() {
    return this.k;
  }
  
  public List<ace> w() {
    if (this.o == null)
      this.o = new ArrayList<ace>(); 
    return this.o;
  }
  
  public List<acb> x() {
    return this.p;
  }
  
  public String y() {
    return this.q;
  }
  
  public String z() {
    return this.r;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\acg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */