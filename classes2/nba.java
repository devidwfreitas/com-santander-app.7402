import android.content.Context;
import android.util.Log;

public class nba {
  private mwy a;
  
  private Boolean b;
  
  private Boolean c;
  
  private Boolean d;
  
  private Boolean e;
  
  private Boolean f;
  
  private Boolean g;
  
  private Boolean h;
  
  private Boolean i;
  
  private Boolean j;
  
  private Boolean k;
  
  private Boolean l;
  
  private Boolean m;
  
  private Boolean n;
  
  private Boolean o;
  
  private Boolean p;
  
  private Boolean q;
  
  private Boolean r;
  
  private Boolean s;
  
  public nba(mwy parammwy, Context paramContext) {
    boolean bool1;
    this.a = parammwy;
    this.q = parammwy.c().b();
    this.p = Boolean.valueOf(paramContext.getSharedPreferences("qrPreferences", 0).getBoolean(mzr.n(), true));
    this.c = Boolean.valueOf(paramContext.getSharedPreferences(nbc.BLOQUEIO_CLIENTE.name(), 0).getBoolean(mzr.n(), true));
    this.d = Boolean.valueOf(paramContext.getSharedPreferences(nbc.APARELHO_NAO_HABILITADO.name(), 0).getBoolean(mzr.n(), true));
    this.e = Boolean.valueOf(paramContext.getSharedPreferences(nbc.ID_CANCELADO.name(), 0).getBoolean(mzr.n(), true));
    this.b = Boolean.valueOf(paramContext.getSharedPreferences(nbc.ID_NAO_HABILITADO.name(), 0).getBoolean(mzr.n(), true));
    this.s = Boolean.valueOf(paramContext.getSharedPreferences(nat.VER_MENSAGEM_SMS.name(), 0).getBoolean(mzr.n(), false));
    if (this.s.booleanValue()) {
      this.f = Boolean.valueOf(false);
    } else {
      this.f = parammwy.i();
    } 
    this.g = Boolean.valueOf(paramContext.getSharedPreferences(nat.VER_MENSAGEM_QR.name(), 0).getBoolean(mzr.n(), true));
    this.o = Boolean.valueOf(paramContext.getSharedPreferences(nat.VER_MAIS_TARDE.name(), 0).getBoolean(mzr.n(), false));
    this.r = alb.b(parammwy.c().a());
    if (this.b.booleanValue() && parammwy.d().booleanValue()) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    this.i = Boolean.valueOf(bool1);
    if (this.c.booleanValue() && parammwy.e().booleanValue()) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    this.j = Boolean.valueOf(bool1);
    if (this.e.booleanValue() && parammwy.h().booleanValue()) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    this.m = Boolean.valueOf(bool1);
    this.l = parammwy.g();
    this.k = parammwy.f();
    if (this.g.booleanValue() && parammwy.j().booleanValue()) {
      bool1 = bool2;
    } else {
      bool1 = false;
    } 
    this.n = Boolean.valueOf(bool1);
    this.h = parammwy.k();
    if (parammwy.a() != null) {
      Log.i("ACAO_TRANSACIONAL", parammwy.a().concat(" - " + naz.getName(parammwy.a())));
      return;
    } 
    Log.i("ACAO_TRANSACIONAL", "Acao Transacional NULA.");
  }
  
  public static boolean a(String paramString) {
    return (naz.OFERTAR_ID_TELA_OFERTA_ATIVACAO_CSO.getValue().equals(paramString) || naz.OFERTAR_ID_CSO_TRANSACIONAL.getValue().equals(paramString) || naz.MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO.getValue().equals(paramString) || naz.CONVERSAO_ID_OBRIGATORIA_TELA_41.getValue().equals(paramString) || naz.ID_CANCELADO_TELA_51_OU_MODO_CONSULTIVO.getValue().equals(paramString) || naz.ATIVACAO_POR_SMS_TELA_44_OU_MODO_CONSULTIVO.getValue().equals(paramString) || naz.HABILITAR_ID_NOVAMENTE_TELA_50_OU_MODO_CONSULTIVO.getValue().equals(paramString) || naz.HABILITACAO_ATM.getValue().equals(paramString) || naz.CONVERSAO_ID_OBRIGATORIA_TELA_41_ATIVACAO_CSO.getValue().equals(paramString) || naz.OFERTAR_ID_MODO_CONSULTIVO_TELA_02_ID_NAO_HABILITADO.getValue().equals(paramString) || naz.MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO_APARELHO_PENDENTE.getValue().equals(paramString) || naz.HOME_CONSULTIVA.getValue().equals(paramString));
  }
  
  public boolean a() {
    return (this.a != null && this.a.a() != null && (this.a.c() != null || this.a.b() != null));
  }
  
  public boolean b() {
    return (naz.MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO_APARELHO_PENDENTE.getValue().equals(this.a.a()) && this.d.booleanValue() && this.k.booleanValue());
  }
  
  public boolean c() {
    return (naz.CONVERSAO_ID_OBRIGATORIA_TELA_41.getValue().equals(this.a.a()) || naz.CONVERSAO_ID_OBRIGATORIA_TELA_41_ATIVACAO_CSO.getValue().equals(this.a.a()));
  }
  
  public boolean d() {
    return ((naz.OFERTAR_ID_TELA_OFERTA_ATIVACAO_CSO.getValue().equals(this.a.a()) || naz.OFERTAR_ID_CSO_TRANSACIONAL.getValue().equals(this.a.a())) && this.p.booleanValue());
  }
  
  public boolean e() {
    return ((naz.OFERTAR_ID_TELA_OFERTA_ATIVACAO_CSO.getValue().equals(this.a.a()) && !this.p.booleanValue()) || naz.TELA_OFERTA_ATIVACAO_CSO.getValue().equals(this.a.a()));
  }
  
  public boolean f() {
    return (naz.ATIVACAO_POR_SMS_TELA_44_OU_MODO_CONSULTIVO.getValue().equals(this.a.a()) && this.f.booleanValue());
  }
  
  public Boolean g() {
    if ((naz.OFERTAR_ID_CSO_TRANSACIONAL.getValue().equals(this.a.a()) && !this.p.booleanValue()) || naz.CSO_TRANSACIONAL.getValue().equals(this.a.a())) {
      boolean bool1 = true;
      return Boolean.valueOf(bool1);
    } 
    boolean bool = false;
    return Boolean.valueOf(bool);
  }
  
  public boolean h() {
    return (naz.TRANSACIONAL_COM_ID_OU_OTIMIZACAO.getValue().equals(this.a.a()) && this.r.booleanValue());
  }
  
  public boolean i() {
    return ((naz.MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO.getValue().equals(this.a.a()) || naz.HABILITAR_ID_NOVAMENTE_TELA_50_OU_MODO_CONSULTIVO.getValue().equals(this.a.a())) && this.g.booleanValue() && this.n.booleanValue());
  }
  
  public boolean j() {
    return naz.HABILITACAO_ATM.getValue().equals(this.a.a());
  }
  
  public boolean k() {
    boolean bool1;
    boolean bool2;
    boolean bool3 = false;
    if (this.c.booleanValue() && this.b.booleanValue() && this.d.booleanValue()) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if (this.j.booleanValue() && this.i.booleanValue()) {
      bool2 = true;
    } else {
      bool2 = false;
    } 
    if (naz.OFERTAR_ID_MODO_CONSULTIVO_TELA_02_ID_NAO_HABILITADO.getValue().equals(this.a.a()) || (naz.MODO_CONSULTIVO_TELA_04_BLOQUEIO_CLIENTE.getValue().equals(this.a.a()) && !bool1 && !bool2) || naz.HOME_CONSULTIVA.getValue().equals(this.a.a()) || (naz.ID_CANCELADO_TELA_51_OU_MODO_CONSULTIVO.getValue().equals(this.a.a()) && !this.e.booleanValue()) || (naz.ATIVACAO_POR_SMS_TELA_44_OU_MODO_CONSULTIVO.getValue().equals(this.a.a()) && !this.f.booleanValue()) || ((naz.MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO.getValue().equals(this.a.a()) || naz.HABILITAR_ID_NOVAMENTE_TELA_50_OU_MODO_CONSULTIVO.getValue().equals(this.a.a())) && !this.g.booleanValue() && !this.n.booleanValue()) || this.o.booleanValue() || naz.CONVERSAO_ID_OBRIGATORIA_TELA_41.getValue().equals(this.a.a()))
      bool3 = true; 
    return bool3;
  }
  
  public boolean l() {
    return (naz.MODO_CONSULTIVO_TELA_04_BLOQUEIO_CLIENTE.getValue().equals(this.a.a()) && this.c.booleanValue() && this.j.booleanValue());
  }
  
  public boolean m() {
    return naz.LIMPEZA_SEMENTES_TELA_03_BLOQUEIO_ADM.getValue().equals(this.a.a());
  }
  
  public boolean n() {
    return (naz.MODO_CONSULTIVO_TELA_05_BLOQUEIO_TENTATIVAS.getValue().equals(this.a.a()) && this.r.booleanValue() && this.q.booleanValue());
  }
  
  public boolean o() {
    return (naz.ID_CANCELADO_TELA_51_OU_MODO_CONSULTIVO.getValue().equals(this.a.a()) && this.e.booleanValue() && this.m.booleanValue());
  }
  
  public boolean p() {
    return ((this.a.a() == null || naz.ERRO_INESPERADO_TELA_11.getValue().equals(this.a.a())) && this.l.booleanValue());
  }
  
  public boolean q() {
    return (((naz.MODO_CONSULTIVO_TELA_05_BLOQUEIO_TENTATIVAS.getValue().equals(this.a.a()) || naz.TRANSACIONAL_COM_ID_OU_OTIMIZACAO.getValue().equals(this.a.a())) && !this.r.booleanValue()) || naz.FLUXO_OTIMIZACAO.getValue().equals(this.a.a()));
  }
  
  public boolean r() {
    return ((naz.MODO_CONSULTIVO_TELA_05_BLOQUEIO_TENTATIVAS.getValue().equals(this.a.a()) && this.r.booleanValue()) || (naz.TRANSACIONAL_COM_ID_OU_OTIMIZACAO.getValue().equals(this.a.a()) && this.r.booleanValue()) || naz.FLUXO_OTIMIZACAO.getValue().equals(this.a.a()));
  }
  
  public boolean s() {
    return ((naz.OFERTAR_ID_CSO_TRANSACIONAL.getValue().equals(this.a.a()) || naz.CONVERSAO_ID_OBRIGATORIA_TELA_41.getValue().equals(this.a.a()) || naz.CONVERSAO_ID_OBRIGATORIA_TELA_41_ATIVACAO_CSO.getValue().equals(this.a.a()) || naz.ID_CANCELADO_TELA_51_OU_MODO_CONSULTIVO.getValue().equals(this.a.a()) || naz.ATIVACAO_POR_SMS_TELA_44_OU_MODO_CONSULTIVO.getValue().equals(this.a.a()) || naz.HABILITAR_ID_NOVAMENTE_TELA_50_OU_MODO_CONSULTIVO.getValue().equals(this.a.a()) || naz.MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO.getValue().equals(this.a.a()) || naz.HABILITACAO_ATM.getValue().equals(this.a.a()) || naz.OFERTAR_ID_TELA_OFERTA_ATIVACAO_CSO.getValue().equals(this.a.a()) || this.o.booleanValue() || this.h.booleanValue()) && !naz.TRANSACIONAL_COM_ID_OU_OTIMIZACAO.getValue().equals(this.a.a()) && !naz.ERRO_INESPERADO_TELA_11.getValue().equals(this.a.a()) && !naz.MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO_APARELHO_PENDENTE.getValue().equals(this.a.a()));
  }
  
  public boolean t() {
    return this.l.booleanValue();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nba.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */