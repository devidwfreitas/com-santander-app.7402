public class ibm extends grs {
  public static final String a = "Sim";
  
  public static final String b = "Nao";
  
  public static final String c = "FaleConosco";
  
  public static void a(hze paramhze, ibo paramibo) {
    String str2 = "";
    String str1 = paramibo.d();
    byte b = -1;
    switch (str1.hashCode()) {
      default:
        switch (b) {
          default:
            str1 = str2;
            if (!"".equals(str1))
              frq.d(str1, paramhze.f()); 
            return;
          case 0:
            if (miq.C().e()) {
              str1 = "Outros_FAQ_ContaCorrente_FaleConosco_Motivo_Acao";
            } else {
              str1 = "Outros_HomeNaoLogada_FAQ_ContaCorrente_FaleConosco_Motivo_Acao";
            } 
            if (!"".equals(str1))
              frq.d(str1, paramhze.f()); 
            return;
          case 1:
            str1 = "Outros_FAQ_CartaoDeCredito_FaleConosco_Motivo_Acao";
            if (!"".equals(str1))
              frq.d(str1, paramhze.f()); 
            return;
          case 2:
            str1 = "Outros_FAQ_CanaisDigitais_FaleConosco_Motivo_Acao";
            if (!"".equals(str1))
              frq.d(str1, paramhze.f()); 
            return;
          case 3:
            break;
        } 
        break;
      case 1324635223:
        if (str1.equals("Conta Corrente"))
          b = 0; 
      case -245584945:
        if (str1.equals("Cartão de Crédito"))
          b = 1; 
      case -680860669:
        if (str1.equals("Canais Digitais"))
          b = 2; 
      case 616813017:
        if (str1.equals("Segurança"))
          b = 3; 
      case 477247033:
        if (str1.equals("Demais serviços"))
          b = 4; 
    } 
    str1 = "Outros_FAQ_Seguranca_FaleConosco_Motivo_Acao";
    if (!"".equals(str1))
      frq.d(str1, paramhze.f()); 
  }
  
  public static void a(hzp paramhzp, ibo paramibo) {
    String str2 = "";
    String str1 = paramibo.d();
    byte b = -1;
    switch (str1.hashCode()) {
      default:
        str1 = str2;
        switch (b) {
          default:
            str1 = str2;
          case 0:
          case 1:
          case 2:
          case 3:
            if (!"".equals(str1))
              frq.d(str1, paramhzp.b()); 
            return;
          case 4:
            break;
        } 
        break;
      case 1324635223:
        if (str1.equals("Conta Corrente"))
          b = 0; 
      case -245584945:
        if (str1.equals("Cartão de Crédito"))
          b = 1; 
      case -680860669:
        if (str1.equals("Canais Digitais"))
          b = 2; 
      case 616813017:
        if (str1.equals("Segurança"))
          b = 3; 
      case 477247033:
        if (str1.equals("Demais serviços"))
          b = 4; 
    } 
    str1 = "Outros_FAQ_DemaisServicos_ServicoProduto_Acao";
  }
  
  public static void a(ibo paramibo) {
    String str2 = "";
    String str1 = paramibo.d();
    byte b = -1;
    switch (str1.hashCode()) {
      default:
        switch (b) {
          default:
            str1 = str2;
            if (!"".equals(str1))
              frq.d(str1, "FaleConosco"); 
            return;
          case 0:
            str1 = "Outros_FAQ_ContaCorrente_Acao";
            if (!"".equals(str1))
              frq.d(str1, "FaleConosco"); 
            return;
          case 1:
            str1 = "Outros_FAQ_CartaoDeCredito_Acao";
            if (!"".equals(str1))
              frq.d(str1, "FaleConosco"); 
            return;
          case 2:
            str1 = "Outros_FAQ_CanaisDigitais_Acao";
            if (!"".equals(str1))
              frq.d(str1, "FaleConosco"); 
            return;
          case 3:
            break;
        } 
        break;
      case 1324635223:
        if (str1.equals("Conta Corrente"))
          b = 0; 
      case -245584945:
        if (str1.equals("Cartão de Crédito"))
          b = 1; 
      case -680860669:
        if (str1.equals("Canais Digitais"))
          b = 2; 
      case 616813017:
        if (str1.equals("Segurança"))
          b = 3; 
    } 
    str1 = "Outros_FAQ_Seguranca_Acao";
    if (!"".equals(str1))
      frq.d(str1, "FaleConosco"); 
  }
  
  public static void a(ibp paramibp, ibo paramibo) {
    // Byte code:
    //   0: ldc ''
    //   2: astore #4
    //   4: ldc ''
    //   6: astore_3
    //   7: aload_1
    //   8: invokevirtual d : ()Ljava/lang/String;
    //   11: astore_1
    //   12: iconst_m1
    //   13: istore_2
    //   14: aload_1
    //   15: invokevirtual hashCode : ()I
    //   18: lookupswitch default -> 60, -680860669 -> 149, -245584945 -> 135, 616813017 -> 163, 1324635223 -> 121
    //   60: iload_2
    //   61: tableswitch default -> 92, 0 -> 177, 1 -> 259, 2 -> 349, 3 -> 431
    //   92: aload_3
    //   93: astore_0
    //   94: aload #4
    //   96: astore_1
    //   97: ldc ''
    //   99: aload_1
    //   100: invokevirtual equals : (Ljava/lang/Object;)Z
    //   103: ifne -> 120
    //   106: ldc ''
    //   108: aload_0
    //   109: invokevirtual equals : (Ljava/lang/Object;)Z
    //   112: ifne -> 120
    //   115: aload_1
    //   116: aload_0
    //   117: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   120: return
    //   121: aload_1
    //   122: ldc 'Conta Corrente'
    //   124: invokevirtual equals : (Ljava/lang/Object;)Z
    //   127: ifeq -> 60
    //   130: iconst_0
    //   131: istore_2
    //   132: goto -> 60
    //   135: aload_1
    //   136: ldc 'Cartão de Crédito'
    //   138: invokevirtual equals : (Ljava/lang/Object;)Z
    //   141: ifeq -> 60
    //   144: iconst_1
    //   145: istore_2
    //   146: goto -> 60
    //   149: aload_1
    //   150: ldc 'Canais Digitais'
    //   152: invokevirtual equals : (Ljava/lang/Object;)Z
    //   155: ifeq -> 60
    //   158: iconst_2
    //   159: istore_2
    //   160: goto -> 60
    //   163: aload_1
    //   164: ldc 'Segurança'
    //   166: invokevirtual equals : (Ljava/lang/Object;)Z
    //   169: ifeq -> 60
    //   172: iconst_3
    //   173: istore_2
    //   174: goto -> 60
    //   177: invokestatic C : ()Lmiq;
    //   180: invokevirtual e : ()Z
    //   183: ifeq -> 235
    //   186: ldc 'Outros_FAQ_ContaCorrente_Acao'
    //   188: astore_1
    //   189: aload_0
    //   190: invokevirtual c : ()I
    //   193: tableswitch default -> 224, 1 -> 229, 2 -> 241, 3 -> 247, 4 -> 253
    //   224: aload_3
    //   225: astore_0
    //   226: goto -> 97
    //   229: ldc 'ComoCadastrarOsPagamentosEmDebitoAutomatico'
    //   231: astore_0
    //   232: goto -> 97
    //   235: ldc 'Outros_HomeNaoLogada_FAQ_ContaCorrente_Acao'
    //   237: astore_1
    //   238: goto -> 189
    //   241: ldc 'ComoReemitirUmBoletoMesmoParaNaoCorrentista'
    //   243: astore_0
    //   244: goto -> 97
    //   247: ldc 'ComoPossoAdquirirMeusExtratosDaContaCorrenteDosMesesAnteriores'
    //   249: astore_0
    //   250: goto -> 97
    //   253: ldc 'QuaisOsDocumentosNecessariosParaSeAbrirUmaContaPoupanca'
    //   255: astore_0
    //   256: goto -> 97
    //   259: invokestatic C : ()Lmiq;
    //   262: invokevirtual e : ()Z
    //   265: ifeq -> 319
    //   268: ldc 'Outros_FAQ_CartaoDeCredito_Acao'
    //   270: astore_1
    //   271: aload_0
    //   272: invokevirtual c : ()I
    //   275: tableswitch default -> 308, 1 -> 313, 2 -> 325, 3 -> 331, 4 -> 337, 5 -> 343
    //   308: aload_3
    //   309: astore_0
    //   310: goto -> 97
    //   313: ldc 'ComoObterConsultarAFaturaDeCartaoDeCredito'
    //   315: astore_0
    //   316: goto -> 97
    //   319: ldc 'Outros_HomeNaoLogada_FAQ_CartaoDeCredito_Acao'
    //   321: astore_1
    //   322: goto -> 271
    //   325: ldc 'NaoConsigoPagarOValorTotalDaMinhaFaturaComoPossoParcelar'
    //   327: astore_0
    //   328: goto -> 97
    //   331: ldc 'ComoDesbloquearOCartaoDeCreditoOuDebito'
    //   333: astore_0
    //   334: goto -> 97
    //   337: ldc 'ComoEuFacoParaDesbloquearUmCartaoBloqueadoPorPerdaOuRoubo'
    //   339: astore_0
    //   340: goto -> 97
    //   343: ldc 'ComoFacoParaResgatarOsBonusDoCartaoDeCreditoDoSantanderEQuantoValeBonusEmDinheiroReal'
    //   345: astore_0
    //   346: goto -> 97
    //   349: invokestatic C : ()Lmiq;
    //   352: invokevirtual e : ()Z
    //   355: ifeq -> 407
    //   358: ldc 'Outros_FAQ_CanaisDigitais_Acao'
    //   360: astore_1
    //   361: aload_0
    //   362: invokevirtual c : ()I
    //   365: tableswitch default -> 396, 1 -> 401, 2 -> 413, 3 -> 419, 4 -> 425
    //   396: aload_3
    //   397: astore_0
    //   398: goto -> 97
    //   401: ldc 'NuncaAcesseiOInternetBankingComoFacoParaAcessarPelaPrimeiraVez'
    //   403: astore_0
    //   404: goto -> 97
    //   407: ldc 'Outros_HomeNaoLogada_FAQ_CanaisDigitais_Acao'
    //   409: astore_1
    //   410: goto -> 361
    //   413: ldc 'EstouTentandoFazerUmaTransacaoNoInternetBankingEEleMePedeOCartaoDeSegurancaOnlineCSOOQueEIsso'
    //   415: astore_0
    //   416: goto -> 97
    //   419: ldc 'OQueESMSTokenEParaQueServe'
    //   421: astore_0
    //   422: goto -> 97
    //   425: ldc 'ComoFuncionaANavegacaoGratisDoAppSantander'
    //   427: astore_0
    //   428: goto -> 97
    //   431: invokestatic C : ()Lmiq;
    //   434: invokevirtual e : ()Z
    //   437: ifeq -> 487
    //   440: ldc 'Outros_FAQ_Seguranca_Acao'
    //   442: astore_1
    //   443: aload_0
    //   444: invokevirtual c : ()I
    //   447: tableswitch default -> 476, 1 -> 481, 2 -> 493, 3 -> 499, 4 -> 505
    //   476: aload_3
    //   477: astore_0
    //   478: goto -> 97
    //   481: ldc 'EstouTentandoFazerUmaTransacaoNoInternetBankingEEleMePedeOCartaoDeSegurancaOnlineCSOOQueEIssoPrecisoAtivaLo'
    //   483: astore_0
    //   484: goto -> 97
    //   487: ldc 'Outros_HomeNaoLogada_FAQ_Seguranca_Acao'
    //   489: astore_1
    //   490: goto -> 443
    //   493: ldc 'ComoFacoParaDesbloquearUmCartaoBloqueadoPorPerdaOuRoubo'
    //   495: astore_0
    //   496: goto -> 97
    //   499: ldc 'OQueESMSTokenEParaQueServe'
    //   501: astore_0
    //   502: goto -> 97
    //   505: ldc 'EstouComProblemasEmInstalarOModuloDeProtecaoDeSegurancaComoDevoProceder'
    //   507: astore_0
    //   508: goto -> 97
  }
  
  public static void a(String paramString, ibp paramibp, ibo paramibo) {
    // Byte code:
    //   0: ldc ''
    //   2: astore #4
    //   4: aload_2
    //   5: invokevirtual d : ()Ljava/lang/String;
    //   8: astore_2
    //   9: iconst_m1
    //   10: istore_3
    //   11: aload_2
    //   12: invokevirtual hashCode : ()I
    //   15: lookupswitch default -> 56, -680860669 -> 143, -245584945 -> 129, 616813017 -> 157, 1324635223 -> 115
    //   56: iload_3
    //   57: tableswitch default -> 88, 0 -> 171, 1 -> 234, 2 -> 308, 3 -> 374
    //   88: aload #4
    //   90: astore_1
    //   91: ldc ''
    //   93: aload_1
    //   94: invokevirtual equals : (Ljava/lang/Object;)Z
    //   97: ifne -> 114
    //   100: ldc ''
    //   102: aload_0
    //   103: invokevirtual equals : (Ljava/lang/Object;)Z
    //   106: ifne -> 114
    //   109: aload_1
    //   110: aload_0
    //   111: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   114: return
    //   115: aload_2
    //   116: ldc 'Conta Corrente'
    //   118: invokevirtual equals : (Ljava/lang/Object;)Z
    //   121: ifeq -> 56
    //   124: iconst_0
    //   125: istore_3
    //   126: goto -> 56
    //   129: aload_2
    //   130: ldc 'Cartão de Crédito'
    //   132: invokevirtual equals : (Ljava/lang/Object;)Z
    //   135: ifeq -> 56
    //   138: iconst_1
    //   139: istore_3
    //   140: goto -> 56
    //   143: aload_2
    //   144: ldc 'Canais Digitais'
    //   146: invokevirtual equals : (Ljava/lang/Object;)Z
    //   149: ifeq -> 56
    //   152: iconst_2
    //   153: istore_3
    //   154: goto -> 56
    //   157: aload_2
    //   158: ldc 'Segurança'
    //   160: invokevirtual equals : (Ljava/lang/Object;)Z
    //   163: ifeq -> 56
    //   166: iconst_3
    //   167: istore_3
    //   168: goto -> 56
    //   171: aload_1
    //   172: invokevirtual c : ()I
    //   175: tableswitch default -> 204, 1 -> 210, 2 -> 216, 3 -> 222, 4 -> 228
    //   204: aload #4
    //   206: astore_1
    //   207: goto -> 91
    //   210: ldc 'Outros_FAQ_ContaCorrente_ComoCadastrarOsPagamentosEmDebitoAutomatico_EstaInformacaoFoiUtil_Acao'
    //   212: astore_1
    //   213: goto -> 91
    //   216: ldc 'Outros_FAQ_ContaCorrente_ComoReemitirUmBoletoMesmoParaNaoCorrentista_EstaInformacaoFoiUtil_Acao'
    //   218: astore_1
    //   219: goto -> 91
    //   222: ldc 'Outros_FAQ_ContaCorrente_ComoPossoAdquirirMeusExtratosDaContaCorrenteDosMesesAnteriores_EstaInformacaoFoiUtil_Acao'
    //   224: astore_1
    //   225: goto -> 91
    //   228: ldc 'Outros_FAQ_ContaCorrente_QuaisOsDocumentosNecessariosParaSeAbrirUmaContaPoupanca_EstaInformacaoFoiUtil_Acao'
    //   230: astore_1
    //   231: goto -> 91
    //   234: aload_1
    //   235: invokevirtual c : ()I
    //   238: tableswitch default -> 272, 1 -> 278, 2 -> 284, 3 -> 290, 4 -> 296, 5 -> 302
    //   272: aload #4
    //   274: astore_1
    //   275: goto -> 91
    //   278: ldc 'Outros_FAQ_CartaoDeCredito_ComoObterConsultarAFaturaDeCartaoDeCredito_EstaInformacaoFoiUtil_Acao'
    //   280: astore_1
    //   281: goto -> 91
    //   284: ldc 'Outros_FAQ_CartaoDeCredito_NaoConsigoPagarOValorTotalDaMinhaFaturaComoPossoParcelar_EstaInformacaoFoiUtil_Acao'
    //   286: astore_1
    //   287: goto -> 91
    //   290: ldc 'Outros_FAQ_CartaoDeCredito_ComoDesbloquearOCartaoDeCreditoOuDebito_Acao'
    //   292: astore_1
    //   293: goto -> 91
    //   296: ldc 'Outros_FAQ_CartaoDeCredito_ComoEuFacoParaDesbloquearUmCartaoBloqueadoPorPerdaOuRoubo_EstaInformacaoFoiUtil_Acao'
    //   298: astore_1
    //   299: goto -> 91
    //   302: ldc 'Outros_FAQ_CartaoDeCredito_ComoFacoParaResgatarOsBonusDoCartaoDeCreditoDoSantanderEQuantoValeBonusEmDinheiroReal_EstaInformacaoFoiUtil_Acao'
    //   304: astore_1
    //   305: goto -> 91
    //   308: aload_1
    //   309: invokevirtual c : ()I
    //   312: tableswitch default -> 344, 1 -> 350, 2 -> 356, 3 -> 362, 4 -> 368
    //   344: aload #4
    //   346: astore_1
    //   347: goto -> 91
    //   350: ldc 'Outros_FAQ_CanaisDigitais_NuncaAcesseiOInternetBankingComoFacoParaAcessarPelaPrimeiraVez_EstaInformacaoFoiUtil_Acao'
    //   352: astore_1
    //   353: goto -> 91
    //   356: ldc 'Outros_FAQ_CanaisDigitais_EstouTentandoFazerUmaTransacaoNoInternetBankingEEleMePedeOCartaoDeSegurancaOnlineCSOOQueEIsso_EstaInformacaoFoiUtil_Acao'
    //   358: astore_1
    //   359: goto -> 91
    //   362: ldc 'Outros_FAQ_CanaisDigitais_OQueESMSTokenEParaQueServe_EstaInformacaoFoiUtil_Acao'
    //   364: astore_1
    //   365: goto -> 91
    //   368: ldc 'Outros_FAQ_CanaisDigitais_ComoFuncionaANavegacaoGratisDoAppSantander_EstaInformacaoFoiUtil_Acao'
    //   370: astore_1
    //   371: goto -> 91
    //   374: aload_1
    //   375: invokevirtual c : ()I
    //   378: tableswitch default -> 408, 1 -> 414, 2 -> 420, 3 -> 426, 4 -> 432
    //   408: aload #4
    //   410: astore_1
    //   411: goto -> 91
    //   414: ldc 'Outros_FAQ_Seguranca_EstouTentandoFazerUmaTransacaoNoInternetBankingEEleMePedeOCartaoDeSegurancaOnlineCSOOQueEIssoPrecisoAtivaLo_EstaInformacaoFoiUtil_Acao'
    //   416: astore_1
    //   417: goto -> 91
    //   420: ldc 'Outros_FAQ_Seguranca_ComoFacoParaDesbloquearUmCartaoBloqueadoPorPerdaOuRoubo_EstaInformacaoFoiUtil_Acao'
    //   422: astore_1
    //   423: goto -> 91
    //   426: ldc 'Outros_FAQ_Seguranca_OQueESMSTokenEParaQueServe_EstaInformacaoFoiUtil_Acao'
    //   428: astore_1
    //   429: goto -> 91
    //   432: ldc 'Outros_FAQ_Seguranca_EstouComProblemasEmInstalarOModuloDeProtecaoDeSegurancaComoDevoProceder_EstaInformacaoFoiUtil_Acao'
    //   434: astore_1
    //   435: goto -> 91
  }
  
  public static void a(boolean paramBoolean, int paramInt) {
    String str1 = "";
    switch (paramInt) {
      default:
        if (!"".equals(str1)) {
          if (paramBoolean) {
            str2 = "Ocultar";
          } else {
            break;
          } 
        } else {
          return;
        } 
        frq.d(str1, str2);
        return;
      case 0:
        if (miq.C().e()) {
          str1 = "Outros_FAQ_EntreEmContatoConosco_AtendimentoDireto_Acao";
        } else {
          str1 = "Outros_HomeNaoLogada_FAQ_EntreEmContatoConosco_AtendimentoDireto_Acao";
        } 
      case 1:
        if (miq.C().e()) {
          str1 = "Outros_FAQ_EntreEmContatoConosco_SAC_Acao";
        } else {
          str1 = "Outros_HomeNaoLogada_FAQ_EntreEmContatoConosco_SAC_Acao";
        } 
      case 2:
        if (miq.C().e()) {
          str1 = "Outros_FAQ_EntreEmContatoConosco_Ouvidoria_Acao";
        } else {
          str1 = "Outros_HomeNaoLogada_FAQ_EntreEmContatoConosco_Ouvidoria_Acao";
        } 
      case 3:
        if (miq.C().e()) {
          str1 = "Outros_FAQ_EntreEmContatoConosco_CentralDeRenegociacao_Acao";
        } else {
          str1 = "Outros_HomeNaoLogada_FAQ_EntreEmContatoConosco_CentralDeRenegociacao_Acao";
        } 
      case 4:
        if (miq.C().e()) {
          str1 = "Outros_FAQ_EntreEmContatoConosco_Financeira_Acao";
        } else {
          str1 = "Outros_HomeNaoLogada_FAQ_EntreEmContatoConosco_Financeira_Acao";
        } 
      case 5:
        if (miq.C().e()) {
          str1 = "Outros_FAQ_EntreEmContatoConosco_SegurosAssistencia24h_Acao";
        } else {
          str1 = "Outros_HomeNaoLogada_FAQ_EntreEmContatoConosco_SegurosAssistencia24h_Acao";
        } 
      case 6:
        if (miq.C().e()) {
          str1 = "Outros_FAQ_EntreEmContatoConosco_SUSEP_Acao";
        } else {
          str1 = "Outros_HomeNaoLogada_FAQ_EntreEmContatoConosco_SUSEP_Acao";
        } 
      case 7:
        if (miq.C().e()) {
          str1 = "Outros_FAQ_EntreEmContatoConosco_EnderecoCorrespondencia_Acao";
        } else {
          str1 = "Outros_HomeNaoLogada_FAQ_EntreEmContatoConosco_EnderecoCorrespondencia_Acao";
        } 
    } 
    String str2 = "Exibir";
    frq.d(str1, str2);
  }
  
  public static void b(ibo paramibo) {
    // Byte code:
    //   0: ldc ''
    //   2: astore_3
    //   3: invokestatic C : ()Lmiq;
    //   6: invokevirtual e : ()Z
    //   9: ifeq -> 126
    //   12: ldc 'Outros_FAQ_Acao'
    //   14: astore_2
    //   15: aload_0
    //   16: invokevirtual d : ()Ljava/lang/String;
    //   19: astore_0
    //   20: iconst_m1
    //   21: istore_1
    //   22: aload_0
    //   23: invokevirtual hashCode : ()I
    //   26: lookupswitch default -> 68, -680860669 -> 160, -245584945 -> 146, 616813017 -> 174, 1324635223 -> 132
    //   68: iload_1
    //   69: tableswitch default -> 100, 0 -> 188, 1 -> 194, 2 -> 200, 3 -> 206
    //   100: aload_3
    //   101: astore_0
    //   102: ldc ''
    //   104: aload_2
    //   105: invokevirtual equals : (Ljava/lang/Object;)Z
    //   108: ifne -> 125
    //   111: ldc ''
    //   113: aload_0
    //   114: invokevirtual equals : (Ljava/lang/Object;)Z
    //   117: ifne -> 125
    //   120: aload_2
    //   121: aload_0
    //   122: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   125: return
    //   126: ldc 'Outros_HomeNaoLogada_FAQ_Acao'
    //   128: astore_2
    //   129: goto -> 15
    //   132: aload_0
    //   133: ldc 'Conta Corrente'
    //   135: invokevirtual equals : (Ljava/lang/Object;)Z
    //   138: ifeq -> 68
    //   141: iconst_0
    //   142: istore_1
    //   143: goto -> 68
    //   146: aload_0
    //   147: ldc 'Cartão de Crédito'
    //   149: invokevirtual equals : (Ljava/lang/Object;)Z
    //   152: ifeq -> 68
    //   155: iconst_1
    //   156: istore_1
    //   157: goto -> 68
    //   160: aload_0
    //   161: ldc 'Canais Digitais'
    //   163: invokevirtual equals : (Ljava/lang/Object;)Z
    //   166: ifeq -> 68
    //   169: iconst_2
    //   170: istore_1
    //   171: goto -> 68
    //   174: aload_0
    //   175: ldc 'Segurança'
    //   177: invokevirtual equals : (Ljava/lang/Object;)Z
    //   180: ifeq -> 68
    //   183: iconst_3
    //   184: istore_1
    //   185: goto -> 68
    //   188: ldc 'ContaCorrente'
    //   190: astore_0
    //   191: goto -> 102
    //   194: ldc 'CartaoDeCredito'
    //   196: astore_0
    //   197: goto -> 102
    //   200: ldc 'CanaisDigitais'
    //   202: astore_0
    //   203: goto -> 102
    //   206: ldc 'Seguranca'
    //   208: astore_0
    //   209: goto -> 102
  }
  
  public static void c(ibo paramibo) {
    String str2 = "";
    String str1 = paramibo.d();
    byte b = -1;
    switch (str1.hashCode()) {
      default:
        switch (b) {
          default:
            str1 = str2;
            if (!"".equals(str1))
              frq.d(str1, "Enviar"); 
            return;
          case 0:
            str1 = "Outros_FAQ_ContaCorrente_FaleConosco_Acao";
            if (!"".equals(str1))
              frq.d(str1, "Enviar"); 
            return;
          case 1:
            str1 = "Outros_FAQ_CartaoDeCredito_FaleConosco_Acao";
            if (!"".equals(str1))
              frq.d(str1, "Enviar"); 
            return;
          case 2:
            str1 = "Outros_FAQ_CanaisDigitais_FaleConosco_Acao";
            if (!"".equals(str1))
              frq.d(str1, "Enviar"); 
            return;
          case 3:
            str1 = "Outros_FAQ_Seguranca_FaleConosco_Acao";
            if (!"".equals(str1))
              frq.d(str1, "Enviar"); 
            return;
          case 4:
            break;
        } 
        break;
      case 1324635223:
        if (str1.equals("Conta Corrente"))
          b = 0; 
      case -245584945:
        if (str1.equals("Cartão de Crédito"))
          b = 1; 
      case -680860669:
        if (str1.equals("Canais Digitais"))
          b = 2; 
      case 616813017:
        if (str1.equals("Segurança"))
          b = 3; 
      case 477247033:
        if (str1.equals("Demais serviços"))
          b = 4; 
    } 
    str1 = "Outros_FAQ_DemaisServicos_Acao";
    if (!"".equals(str1))
      frq.d(str1, "Enviar"); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ibm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */