import android.util.Log;
import com.santander.app.MinhaConta;
import java.util.ArrayList;
import java.util.List;

public class joy extends hbm {
  private static final String b = "MenuService";
  
  public static void a(jow paramjow) {
    for (jow jow1 : paramjow.h()) {
      switch (joz.a[jow1.g().ordinal()]) {
        case 1:
        case 3:
        case 4:
        case 5:
        case 9:
        case 16:
          jow1.b(0);
          break;
      } 
    } 
  }
  
  private void a(jow paramjow, jox paramjox) {
    if (paramjox != null) {
      for (jow jow1 : paramjow.h()) {
        if (jow1.g().equals(paramjox))
          jow1.b(1); 
      } 
    } else {
      int i = 0;
      while (i < paramjow.h().size()) {
        if (mzr.a()) {
          switch (joz.a[((jow)paramjow.h().get(i)).g().ordinal()]) {
            case 1:
              ((jow)paramjow.h().get(i)).b(0);
            case 2:
              if (c()) {
                ((jow)paramjow.h().get(i)).b(0);
              } else {
                ((jow)paramjow.h().get(i)).b(1);
              } 
            case 3:
              ((jow)paramjow.h().get(i)).b(0);
            case 4:
              ((jow)paramjow.h().get(i)).b(0);
            case 5:
              ((jow)paramjow.h().get(i)).b(0);
            case 6:
              ((jow)paramjow.h().get(i)).b(0);
            case 7:
              ((jow)paramjow.h().get(i)).b(0);
            case 8:
              ((jow)paramjow.h().get(i)).b(0);
            case 9:
              ((jow)paramjow.h().get(i)).b(0);
            case 10:
              ((jow)paramjow.h().get(i)).b(0);
            case 11:
              ((jow)paramjow.h().get(i)).b(1);
              paramjow.b(1);
          } 
          continue;
        } 
        switch (joz.a[((jow)paramjow.h().get(i)).g().ordinal()]) {
          default:
            i++;
            break;
          case 1:
            ((jow)paramjow.h().get(i)).b(1);
          case 2:
            if (c()) {
              ((jow)paramjow.h().get(i)).b(0);
            } else {
              ((jow)paramjow.h().get(i)).b(1);
            } 
          case 3:
            ((jow)paramjow.h().get(i)).b(1);
          case 4:
            ((jow)paramjow.h().get(i)).b(1);
          case 5:
            if (this.a.f().s().b() != null && this.a.f().s().b().size() > 0) {
              ((jow)paramjow.h().get(i)).b(1);
            } else {
              ((jow)paramjow.h().get(i)).b(0);
            } 
          case 6:
            ((jow)paramjow.h().get(i)).b(1);
          case 7:
            ((jow)paramjow.h().get(i)).b(1);
          case 12:
            ((jow)paramjow.h().get(i)).b(1);
          case 13:
            ((jow)paramjow.h().get(i)).b(1);
          case 14:
            ((jow)paramjow.h().get(i)).b(1);
          case 15:
            ((jow)paramjow.h().get(i)).b(1);
          case 9:
            ((jow)paramjow.h().get(i)).b(1);
          case 10:
            ((jow)paramjow.h().get(i)).b(1);
          case 11:
            break;
        } 
        ((jow)paramjow.h().get(i)).b(1);
        paramjow.b(1);
      } 
    } 
  }
  
  private void a(jow paramjow, jox paramjox, String paramString) {
    for (jow jow1 : paramjow.h()) {
      if (jow1.g().equals(paramjox))
        jow1.a(paramString); 
    } 
  }
  
  private void a(jow... paramVarArgs) {
    if (this.a.f().q().a() == null || this.a.f().q().a().size() <= 0) {
      paramVarArgs[0].b(0);
      paramVarArgs[2].b(0);
      paramVarArgs[3].b(0);
      paramVarArgs[4].b(0);
    } else {
      paramVarArgs[0].b(1);
      paramVarArgs[2].b(1);
      paramVarArgs[3].b(1);
      paramVarArgs[4].b(1);
      paramVarArgs[10].b(1);
    } 
    if (mzr.a()) {
      paramVarArgs[2].b(0);
      paramVarArgs[3].b(0);
      paramVarArgs[4].b(0);
      paramVarArgs[6].b(0);
      paramVarArgs[10].b(0);
      paramVarArgs[11].b(0);
      paramVarArgs[13].b(0);
    } 
    if (mzr.a())
      a(paramVarArgs[1]); 
    if (!mzr.a()) {
      if (this.a.f().u().a() != null) {
        this.a.f().u().a();
        paramVarArgs[6].b(1);
      } 
      paramVarArgs[6].b(1);
      a(paramVarArgs[7], jox.SUBMENU_ITEM_INVESTIMENTO_NO_ATM);
    } else {
      paramVarArgs[6].b(0);
    } 
    if (b()) {
      paramVarArgs[5].b(1);
    } else {
      paramVarArgs[5].b(0);
    } 
    if (!mzr.a())
      a(paramVarArgs[7], jox.SUBMENU_ITEM_INVESTIMENTO_NO_ATM); 
    nba nba = new nba(this.a.f().y(), MinhaConta.b());
    if (nba.r())
      a(paramVarArgs[7], jox.SUBMENU_ITEM_SINCRONIZAR_ID_SANTANDER); 
    if (nba.s())
      a(paramVarArgs[7], jox.SUBMENU_ITEM_ID_SANTANDER); 
    if (nba.e())
      a(paramVarArgs[7], jox.SUBMENU_ITEM_ATIVAR_CSO); 
    if (this.a.f().e().booleanValue())
      b(paramVarArgs[7], jox.SUBMENU_ITEM_SOLICITAR_CSO); 
    ieu ieu = new ieu(MinhaConta.b());
    if (!ieu.b()) {
      b(paramVarArgs[7], jox.SUBMENU_ITEM_FINGERPRINT);
    } else {
      a(paramVarArgs[7], jox.SUBMENU_ITEM_FINGERPRINT);
      if (ieu.a("")) {
        a(paramVarArgs[7], jox.SUBMENU_ITEM_FINGERPRINT, MinhaConta.b().getResources().getString(2131297459));
      } else {
        a(paramVarArgs[7], jox.SUBMENU_ITEM_FINGERPRINT, MinhaConta.b().getResources().getString(2131297460));
      } 
    } 
    if (this.a.f().p().e().e() != null && this.a.f().p().e().e().size() > 1)
      a(paramVarArgs[7], jox.SUBMENU_ESCOLHA_CONTA_PREFERENCIAL); 
    if ((new ndz()).a(MinhaConta.b(), this.a.f().k()) != null)
      a(paramVarArgs[7], jox.SUBMENU_ID_URA_QR_IB); 
  }
  
  private void b(jow paramjow, jox paramjox) {
    for (jow jow1 : paramjow.h()) {
      if (jow1.g().equals(paramjox))
        jow1.b(0); 
    } 
  }
  
  private boolean b() {
    return (this.a.f().r().a() != null || this.a.f().r().a().size() > 0);
  }
  
  private boolean c() {
    boolean bool = false;
    try {
      boolean bool1;
      boolean bool2;
      if (this.a.f().s().b() != null) {
        bool1 = this.a.f().s().b().size();
      } else {
        bool1 = false;
      } 
      if (this.a.f().s().d() != null) {
        bool2 = this.a.f().s().d().size();
      } else {
        bool2 = false;
      } 
      boolean bool3 = bool;
      if (bool1) {
        bool3 = bool;
        if (!bool2)
          bool3 = true; 
      } 
      return bool3;
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return false;
    } 
  }
  
  public List<jow> a() {
    if (miq.C().j() != null) {
      boolean bool;
      jow jow1;
      jow jow2;
      ipi ipi = miq.C().f().C();
      ArrayList<jow> arrayList = new ArrayList();
      jow jow14 = new jow(2130838560, jox.MENU_ITEM_HOME.getName(), jox.MENU_ITEM_HOME, 1, 2);
      jow jow15 = new jow(2130838567, jox.MENU_ITEM_PROPOSTAS_ABERTO.getName(), jox.MENU_ITEM_PROPOSTAS_ABERTO, 1, 1);
      jow jow3 = new jow(2130838556, jox.MENU_ITEM_CONTA_CORRIENTE.getName(), jox.MENU_ITEM_CONTA_CORRIENTE, 0, 3);
      jow jow4 = new jow(2130838553, jox.MENU_ITEM_CARTAO_DE_CREDITO.getName(), jox.MENU_ITEM_CARTAO_DE_CREDITO, 1, 5);
      jow4.a(true);
      jow jow5 = new jow(2130838565, jox.MENU_ITEM_PAGAMENTOS.getName(), jox.MENU_ITEM_PAGAMENTOS, 0, 6);
      jow5.a(true);
      jow jow6 = new jow(2130838573, jox.MENU_ITEM_TRANSFERENCIA.getName(), jox.MENU_ITEM_TRANSFERENCIA, 0, 7);
      jow jow7 = new jow(2130838559, jox.MENU_ITEM_EMPRESTIMOS.getName(), jox.MENU_ITEM_EMPRESTIMOS, 0, 8);
      jow jow8 = new jow(2130838557, jox.MENU_ITEM_GESTAO_DE_CREDITO.getName(), jox.MENU_ITEM_GESTAO_DE_CREDITO, 1, 9);
      jow jow9 = new jow(2130838569, jox.MENU_ITEM_RENEGOCIACAO.getName(), jox.MENU_ITEM_RENEGOCIACAO, 1, 8);
      jow jow13 = new jow(2130838566, jox.MENU_ITEM_POUPANCA.getName(), jox.MENU_ITEM_POUPANCA, 1, 9);
      jow13.a(true);
      jow jow10 = new jow(2130838561, jox.MENU_ITEM_INVESTIMENTOS.getName(), jox.MENU_ITEM_INVESTIMENTOS, 0, 10);
      jow jow11 = new jow(2130838554, jox.MENU_ITEM_CARTEIRA_DIARIA.getName(), jox.MENU_ITEM_CARTEIRA_DIARIA, 1, 11);
      jow jow12 = new jow(2130838551, jox.MENU_ITEM_CAMBIO.getName(), jox.MENU_ITEM_CAMBIO, 0, 12);
      if (this.a.f() != null && this.a.f().p() != null && this.a.f().p().e() != null) {
        String str = jox.MENU_ITEM_SEGUROS.getName();
        jox jox = jox.MENU_ITEM_SEGUROS;
        if ("s".equalsIgnoreCase(this.a.f().p().e().v())) {
          bool = true;
        } else {
          bool = false;
        } 
        jow1 = new jow(2130838571, str, jox, bool, 13);
      } else {
        jow1 = new jow(2130838571, jox.MENU_ITEM_SEGUROS.getName(), jox.MENU_ITEM_SEGUROS, 0, 13);
      } 
      jow jow21 = new jow(2130838558, jox.MENU_ITEM_CREDITO_IMOBILIARIO.getName(), jox.MENU_ITEM_CREDITO_IMOBILIARIO, 1, 14);
      jow jow22 = new jow(2130838676, jox.MENU_ITEM_VERMELHINHA.getName(), jox.MENU_ITEM_VERMELHINHA, 1, 15);
      jow jow16 = new jow(2130838552, jox.MENU_ITEM_CAPITALIZACAO.getName(), jox.MENU_ITEM_CAPITALIZACAO, 1, 16);
      jow jow17 = new jow(2130838548, jox.MENU_ITEM_AGENDAMENTOS.getName(), jox.MENU_ITEM_AGENDAMENTOS, 1, 17);
      jow jow18 = new jow(2130838568, jox.MENU_ITEM_RECARGAR.getName(), jox.MENU_ITEM_RECARGAR, 0, 18);
      jow jow19 = new jow(2130838555, jox.MENU_ITEM_SEGUNDA_VIA_COMPROVANTES.getName(), jox.MENU_ITEM_SEGUNDA_VIA_COMPROVANTES, 1, 19);
      jow jow20 = new jow(2130838563, jox.MENU_ITEM_MEU_PERFIL.getName(), jox.MENU_ITEM_MEU_PERFIL, 1, 20);
      if (this.a.f() != null && this.a.f().p() != null && this.a.f().p().e() != null) {
        String str = jox.MENU_ITEM_AGENCIAS.getName();
        jox jox = jox.MENU_ITEM_AGENCIAS;
        if ("s".equalsIgnoreCase(this.a.f().p().e().v())) {
          bool = true;
        } else {
          bool = false;
        } 
        jow2 = new jow(2130838547, str, jox, bool, 21);
      } else {
        jow2 = new jow(2130838547, jox.MENU_ITEM_AGENCIAS.getName(), jox.MENU_ITEM_AGENCIAS, 0, 21);
      } 
      jow jow23 = new jow(2130838549, jox.MENU_ITEM_AJUDA.getName(), jox.MENU_ITEM_AJUDA, 1, 22);
      jow jow39 = new jow(2130838931, jox.MENU_ITEM_ABRA_SUA_CONTA.getName(), jox.MENU_ITEM_ABRA_SUA_CONTA, 1, 23);
      jow jow27 = new jow(2130838564, jox.MENU_ITEM_NOTIFICACOES.getName(), jox.MENU_ITEM_NOTIFICACOES, 1);
      jow jow40 = new jow(jox.SUBMENU_ITEM_SALDO.getName(), jox.SUBMENU_ITEM_SALDO, 1);
      jow jow41 = new jow(jox.SUBMENU_ITEM_EXTRATO.getName(), jox.SUBMENU_ITEM_EXTRATO, 1);
      jow jow42 = new jow(jox.SUBMENU_ITEM_LANCAMENTO_FUTURO.getName(), jox.SUBMENU_ITEM_LANCAMENTO_FUTURO, 1);
      jow jow43 = new jow(jox.SUBMENU_ITEM_WAY.getName(), jox.SUBMENU_ITEM_WAY, 1);
      jow jow44 = new jow(jox.SUBMENU_ITEM_ULTIMAS_COMPRAS.getName(), jox.SUBMENU_ITEM_ULTIMAS_COMPRAS, 1);
      jow jow45 = new jow(jox.SUBMENU_ITEM_GERAR_CARTAO_VIRTUAL.getName(), jox.SUBMENU_ITEM_GERAR_CARTAO_VIRTUAL, 1);
      jow jow46 = new jow(jox.SUBMENU_ITEM_PONTOS_ESFERA.getName(), jox.SUBMENU_ITEM_PONTOS_ESFERA, 1);
      jow jow47 = new jow(jox.SUBMENU_ITEM_FATURAS.getName(), jox.SUBMENU_ITEM_FATURAS, 1);
      jow jow48 = new jow(jox.SUBMENU_ITEM_PAGAMENTO_FATURA.getName(), jox.SUBMENU_ITEM_PAGAMENTO_FATURA, 1);
      jow jow49 = new jow(jox.SUBMENU_ITEM_PARCELAMENTO_FATURA.getName(), jox.SUBMENU_ITEM_PARCELAMENTO_FATURA, 1);
      jow jow50 = new jow(jox.SUBMENU_ITEM_EMAIL_FATURA.getName(), jox.SUBMENU_ITEM_EMAIL_FATURA, 1);
      jow jow51 = new jow(jox.SUBMENU_ITEM_HAB_CART_EXT.getName(), jox.SUBMENU_ITEM_HAB_CART_EXT, 1);
      jow jow52 = new jow(jox.SUBMENU_ITEM_DESBLOQUEIO.getName(), jox.SUBMENU_ITEM_DESBLOQUEIO, 1);
      jow jow53 = new jow(jox.SUBMENU_ITEM_SOLICITE_SEU_CARTAO.getName(), jox.SUBMENU_ITEM_SOLICITE_SEU_CARTAO, 1);
      jow52.a(true);
      jow jow54 = new jow(jox.SUBMENU_ITEM_BLOQUEIO.getName(), jox.SUBMENU_ITEM_BLOQUEIO, 1);
      jow jow55 = new jow(jox.SUBMENU_PGTO_TITULOS_CONTAS.getName(), jox.SUBMENU_PGTO_TITULOS_CONTAS, 1);
      jow jow56 = new jow(jox.SUBMENU_CAD_DEBITO_AUTOMATICO.getName(), jox.SUBMENU_CAD_DEBITO_AUTOMATICO, 1);
      jow jow57 = new jow(jox.SUBMENU_PGTO_TITULOS_CARTORIOS.getName(), jox.SUBMENU_PGTO_TITULOS_CARTORIOS, 1);
      jow jow58 = new jow(jox.SUBMENU_DDA.getName(), jox.SUBMENU_DDA, 1);
      jow jow59 = new jow(jox.SUBMENU_ITEM_SIMULAR_CONTRATAR.getName(), jox.SUBMENU_ITEM_SIMULAR_CONTRATAR, 1);
      jow jow60 = new jow(jox.SUBMENU_ITEM_ANTECIPACAO_DT.getName(), jox.SUBMENU_ITEM_ANTECIPACAO_DT, 1);
      jow jow61 = new jow(jox.SUBMENU_ITEM_ANTECIPACAO_IR.getName(), jox.SUBMENU_ITEM_ANTECIPACAO_IR, 1);
      jow jow62 = new jow(jox.SUBMENU_ITEM_MEUS_EMPRESTIMOS.getName(), jox.SUBMENU_ITEM_MEUS_EMPRESTIMOS, 1);
      jow jow63 = new jow(jox.SUBMENU_ITEM_RENEGOCIACAO_SIMULAR.getName(), jox.SUBMENU_ITEM_RENEGOCIACAO_SIMULAR, 1);
      jow jow64 = new jow(jox.SUBMENU_ITEM_RENEGOCIACAO_CANCELAR.getName(), jox.SUBMENU_ITEM_RENEGOCIACAO_CANCELAR, 1);
      jow jow65 = new jow(jox.SUBMENU_ITEM_TRANSF_EXTERIOR.getName(), jox.SUBMENU_ITEM_TRANSF_EXTERIOR, 1);
      jow jow66 = new jow(jox.SUBMENU_ITEM_TROCA_DE_SENHA.getName(), jox.SUBMENU_ITEM_TROCA_DE_SENHA, 1);
      jow jow67 = new jow(jox.SUBMENU_ITEM_SOLICITAR_CSO.getName(), jox.SUBMENU_ITEM_SOLICITAR_CSO, 1);
      jow jow68 = new jow(jox.SUBMENU_ITEM_ATIVAR_CSO.getName(), jox.SUBMENU_ITEM_ATIVAR_CSO, 0);
      jow jow69 = new jow(jox.SUBMENU_ITEM_INVESTIMENTO_NO_ATM.getName(), jox.SUBMENU_ITEM_INVESTIMENTO_NO_ATM, 0);
      jow jow28 = new jow(jox.SUBMENU_ITEM_SINCRONIZAR_ID_SANTANDER.getName(), jox.SUBMENU_ITEM_SINCRONIZAR_ID_SANTANDER, 0);
      jow jow29 = new jow(jox.SUBMENU_ITEM_HABILITAR_OUTRO_DEVICE.getName(), jox.SUBMENU_ITEM_HABILITAR_OUTRO_DEVICE, 1);
      jow jow30 = new jow(jox.SUBMENU_ITEM_ID_SANTANDER.getName(), jox.SUBMENU_ITEM_ID_SANTANDER, 0);
      jow jow70 = new jow(jox.SUBMENU_ITEM_FINGERPRINT.getName(), jox.SUBMENU_ITEM_FINGERPRINT, 0);
      new jow(jox.SUBMENU_ITEM_HABILITAR_TRANSFERGOLDEN.getName(), jox.SUBMENU_ITEM_HABILITAR_TRANSFERGOLDEN, 1);
      new jow(jox.SUBMENU_ITEM_DESABILITAR_TRANSFERGOLDEN.getName(), jox.SUBMENU_ITEM_DESABILITAR_TRANSFERGOLDEN, 1);
      jow jow31 = new jow(jox.SUBMENU_ITEM_POLITICIA_PRIVACIDADE_GOOGLE.getName(), jox.SUBMENU_ITEM_POLITICIA_PRIVACIDADE_GOOGLE, 1);
      jow jow32 = new jow(jox.SUBMENU_ITEM_CONFIGURACAO_NOTIFICACAO.getName(), jox.SUBMENU_ITEM_CONFIGURACAO_NOTIFICACAO, 1);
      jow jow33 = new jow(2130838682, jox.SUBMENU_ITEM_CONTRATAR_SEGURO.getName(), jox.SUBMENU_ITEM_CONTRATAR_SEGURO, 1);
      jow jow34 = new jow(2130838682, jox.SUBMENU_ITEM_MEUS_SEGUROS.getName(), jox.SUBMENU_ITEM_MEUS_SEGUROS, 1);
      jow jow35 = new jow(2130838579, jox.SUBMENU_ITEM_MEUS_SINISTROS.getName(), jox.SUBMENU_ITEM_MEUS_SINISTROS, 1);
      jow jow36 = new jow(2130838579, jox.SUBMENU_ITEM_MINHAS_ASSISTENCIAS.getName(), jox.SUBMENU_ITEM_MINHAS_ASSISTENCIAS, 1);
      jow jow24 = new jow(jox.SUBMENU_ITEM_MEUS_INVESTIMENTOS.getName(), jox.SUBMENU_ITEM_MEUS_INVESTIMENTOS, 1);
      jow jow25 = new jow(jox.SUBMENU_ITEM_CANCELAR_INVESTIMENTO.getName(), jox.SUBMENU_ITEM_CANCELAR_INVESTIMENTO, 1);
      jow jow37 = new jow(jox.SUBMENU_ESCOLHA_CONTA_PREFERENCIAL.getName(), jox.SUBMENU_ESCOLHA_CONTA_PREFERENCIAL, 0);
      jow jow38 = new jow(jox.SUBMENU_ID_URA_QR_IB.getName(), jox.SUBMENU_ID_URA_QR_IB, 0);
      jow jow26 = new jow(jox.SUBMENU_ITEM_MEUS_COMPROMISSOS.getName(), jox.SUBMENU_ITEM_MEUS_COMPROMISSOS, 1);
      new jow(jox.SUBMENU_ITEM_AJUSTAR_LIMITE_DE_CONTA.getName(), jox.SUBMENU_ITEM_AJUSTAR_LIMITE_DE_CONTA, 1);
      new jow(jox.SUBMENU_ITEM_AJUSTAR_LIMITES.getName(), jox.SUBMENU_ITEM_AJUSTAR_LIMITES, 1);
      if (this.a.f().e().booleanValue()) {
        arrayList.add(jow14);
        arrayList.add(jow39);
        arrayList.add(jow4);
        jow4.h().add(jow47);
        jow4.h().add(jow44);
        jow4.h().add(jow49);
        jow4.h().add(jow46);
        jow4.h().add(jow45);
        jow4.h().add(jow43);
        arrayList.add(jow2);
        arrayList.add(jow23);
        a(new jow[] { 
              jow3, jow4, jow5, jow6, jow18, jow10, jow7, jow20, jow2, jow23, 
              jow12, jow9, jow8, jow11 });
        return arrayList;
      } 
      jow3.h().add(jow40);
      jow3.h().add(jow41);
      jow3.h().add(jow42);
      jow4.h().add(jow47);
      jow4.h().add(jow44);
      jow4.h().add(jow48);
      jow4.h().add(jow49);
      jow4.h().add(jow54);
      jow4.h().add(jow52);
      jow4.h().add(jow51);
      jow4.h().add(jow46);
      jow4.h().add(jow45);
      jow4.h().add(jow50);
      jow4.h().add(jow43);
      if (mzr.c().equals("CL") || mzr.c().equals("VG"))
        jow4.h().add(jow53); 
      jow5.h().add(jow55);
      jow5.h().add(jow57);
      jow5.h().add(jow56);
      if (ipi.b("00000102"))
        jow5.h().add(jow58); 
      jow7.h().add(jow59);
      jow7.h().add(jow62);
      jow9.h().add(jow63);
      if (hfc.b())
        jow9.h().add(jow64); 
      jow7.h().add(jow60);
      jow7.h().add(jow61);
      jow12.h().add(jow65);
      jow20.h().add(jow66);
      jow20.h().add(jow70);
      if (!this.a.f().p().k().equals("S")) {
        jow20.h().add(jow67);
        jow20.h().add(jow68);
      } 
      jow20.h().add(jow69);
      String str2 = this.a.f().y().a();
      if (naz.TRANSACIONAL_COM_ID_OU_OTIMIZACAO.getValue().equals(str2))
        jow20.h().add(jow29); 
      jow20.h().add(jow28);
      jow20.h().add(jow30);
      jow20.h().add(jow31);
      if (ipi.b("00000090"))
        jow20.h().add(jow32); 
      if (this.a.f().p().e().e().size() > 1)
        jow20.h().add(jow37); 
      jow20.h().add(jow38);
      jow1.h().add(jow33);
      jow1.h().add(jow34);
      jow1.h().add(jow35);
      if (ipi.b("00000109"))
        jow1.h().add(jow36); 
      if (ipi.b("00000091"))
        arrayList.add(jow27); 
      if (this.a.f().z() > 0) {
        jow15.d(this.a.f().z());
        arrayList.add(jow15);
      } 
      arrayList.add(jow14);
      if (this.a.z() != null && mzr.d() != 8) {
        jne jne = this.a.z().b();
        jow15 = new jow(jne.b(), jne.c(), jox.MENU_LOJA_ONLINE, 1, 4);
        jow15.f(jne.d());
        arrayList.add(jow15);
      } 
      arrayList.add(jow3);
      arrayList.add(jow4);
      arrayList.add(jow5);
      arrayList.add(jow6);
      if (mzr.d() != 8)
        arrayList.add(jow7); 
      if (ipi.b("00000105")) {
        arrayList.add(jow8);
        jow8.h().add(jow26);
      } 
      if (mzr.d() != 8)
        arrayList.add(jow9); 
      arrayList.add(jow13);
      jow10.h().add(jow24);
      jow10.h().add(jow25);
      arrayList.add(jow10);
      if (this.a.f().q().b() != null && mzr.c().equals("PR") && !this.a.f().q().b().isEmpty())
        arrayList.add(jow11); 
      if (this.a.f().p().a().equalsIgnoreCase("S"))
        arrayList.add(jow12); 
      arrayList.add(jow1);
      arrayList.add(jow21);
      arrayList.add(jow22);
      String str1 = mzr.c();
      if (str1.equals("CL") || str1.equals("VG") || str1.equals("VGUN") || str1.equals("SE")) {
        bool = true;
      } else {
        bool = false;
      } 
      if (bool == true)
        arrayList.add(jow16); 
      arrayList.add(jow17);
      arrayList.add(jow18);
      arrayList.add(jow19);
      if (!this.a.f().e().booleanValue())
        arrayList.add(jow20); 
      arrayList.add(jow2);
      arrayList.add(jow23);
      a(new jow[] { 
            jow3, jow4, jow5, jow6, jow18, jow10, jow7, jow20, jow2, jow23, 
            jow12, jow9, jow8, jow11 });
      return arrayList;
    } 
    Log.e("MenuService", "Avoid get menus after crash");
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\joy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */