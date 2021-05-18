import android.util.Log;

public enum naz {
  ATIVACAO_POR_SMS_TELA_44_OU_MODO_CONSULTIVO,
  CONVERSAO_ID_OBRIGATORIA_TELA_41,
  CONVERSAO_ID_OBRIGATORIA_TELA_41_ATIVACAO_CSO,
  CSO_TRANSACIONAL,
  ERRO_INESPERADO_TELA_11,
  FLUXO_OTIMIZACAO,
  HABILITACAO_ATM,
  HABILITAR_ID_NOVAMENTE_TELA_50_OU_MODO_CONSULTIVO,
  HOME_CONSULTIVA,
  ID_CANCELADO_TELA_51_OU_MODO_CONSULTIVO,
  LIMPEZA_SEMENTES_TELA_03_BLOQUEIO_ADM,
  MODO_CONSULTIVO_TELA_04_BLOQUEIO_CLIENTE,
  MODO_CONSULTIVO_TELA_05_BLOQUEIO_TENTATIVAS,
  MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO,
  MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO_APARELHO_PENDENTE,
  OFERTAR_ID_CSO_TRANSACIONAL,
  OFERTAR_ID_MODO_CONSULTIVO_TELA_02_ID_NAO_HABILITADO,
  OFERTAR_ID_TELA_OFERTA_ATIVACAO_CSO("01"),
  TELA_OFERTA_ATIVACAO_CSO("01"),
  TRANSACIONAL_COM_ID_OU_OTIMIZACAO("01");
  
  private String value;
  
  static {
    OFERTAR_ID_CSO_TRANSACIONAL = new naz("OFERTAR_ID_CSO_TRANSACIONAL", 1, "02");
    OFERTAR_ID_MODO_CONSULTIVO_TELA_02_ID_NAO_HABILITADO = new naz("OFERTAR_ID_MODO_CONSULTIVO_TELA_02_ID_NAO_HABILITADO", 2, "03");
    MODO_CONSULTIVO_TELA_04_BLOQUEIO_CLIENTE = new naz("MODO_CONSULTIVO_TELA_04_BLOQUEIO_CLIENTE", 3, "05");
    LIMPEZA_SEMENTES_TELA_03_BLOQUEIO_ADM = new naz("LIMPEZA_SEMENTES_TELA_03_BLOQUEIO_ADM", 4, "06");
    MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO = new naz("MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO", 5, "08");
    ERRO_INESPERADO_TELA_11 = new naz("ERRO_INESPERADO_TELA_11", 6, "09");
    MODO_CONSULTIVO_TELA_05_BLOQUEIO_TENTATIVAS = new naz("MODO_CONSULTIVO_TELA_05_BLOQUEIO_TENTATIVAS", 7, "10");
    TRANSACIONAL_COM_ID_OU_OTIMIZACAO = new naz("TRANSACIONAL_COM_ID_OU_OTIMIZACAO", 8, "11");
    FLUXO_OTIMIZACAO = new naz("FLUXO_OTIMIZACAO", 9, "12");
    TELA_OFERTA_ATIVACAO_CSO = new naz("TELA_OFERTA_ATIVACAO_CSO", 10, "13");
    CSO_TRANSACIONAL = new naz("CSO_TRANSACIONAL", 11, "14");
    HOME_CONSULTIVA = new naz("HOME_CONSULTIVA", 12, "15");
    CONVERSAO_ID_OBRIGATORIA_TELA_41 = new naz("CONVERSAO_ID_OBRIGATORIA_TELA_41", 13, "16");
    ID_CANCELADO_TELA_51_OU_MODO_CONSULTIVO = new naz("ID_CANCELADO_TELA_51_OU_MODO_CONSULTIVO", 14, "17");
    ATIVACAO_POR_SMS_TELA_44_OU_MODO_CONSULTIVO = new naz("ATIVACAO_POR_SMS_TELA_44_OU_MODO_CONSULTIVO", 15, "18");
    HABILITAR_ID_NOVAMENTE_TELA_50_OU_MODO_CONSULTIVO = new naz("HABILITAR_ID_NOVAMENTE_TELA_50_OU_MODO_CONSULTIVO", 16, "19");
    MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO_APARELHO_PENDENTE = new naz("MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO_APARELHO_PENDENTE", 17, "20");
    CONVERSAO_ID_OBRIGATORIA_TELA_41_ATIVACAO_CSO = new naz("CONVERSAO_ID_OBRIGATORIA_TELA_41_ATIVACAO_CSO", 18, "21");
    HABILITACAO_ATM = new naz("HABILITACAO_ATM", 19, "22");
    $VALUES = new naz[] { 
        OFERTAR_ID_TELA_OFERTA_ATIVACAO_CSO, OFERTAR_ID_CSO_TRANSACIONAL, OFERTAR_ID_MODO_CONSULTIVO_TELA_02_ID_NAO_HABILITADO, MODO_CONSULTIVO_TELA_04_BLOQUEIO_CLIENTE, LIMPEZA_SEMENTES_TELA_03_BLOQUEIO_ADM, MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO, ERRO_INESPERADO_TELA_11, MODO_CONSULTIVO_TELA_05_BLOQUEIO_TENTATIVAS, TRANSACIONAL_COM_ID_OU_OTIMIZACAO, FLUXO_OTIMIZACAO, 
        TELA_OFERTA_ATIVACAO_CSO, CSO_TRANSACIONAL, HOME_CONSULTIVA, CONVERSAO_ID_OBRIGATORIA_TELA_41, ID_CANCELADO_TELA_51_OU_MODO_CONSULTIVO, ATIVACAO_POR_SMS_TELA_44_OU_MODO_CONSULTIVO, HABILITAR_ID_NOVAMENTE_TELA_50_OU_MODO_CONSULTIVO, MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO_APARELHO_PENDENTE, CONVERSAO_ID_OBRIGATORIA_TELA_41_ATIVACAO_CSO, HABILITACAO_ATM };
  }
  
  naz(String paramString1) {
    this.value = paramString1;
  }
  
  public static String getName(String paramString) {
    byte b = -1;
    try {
      switch (paramString.hashCode()) {
        case 1537:
          if (paramString.equals("01"))
            b = 0; 
          break;
        case 1538:
          if (paramString.equals("02"))
            b = 1; 
          break;
        case 1539:
          if (paramString.equals("03"))
            b = 2; 
          break;
        case 1541:
          if (paramString.equals("05"))
            b = 3; 
          break;
        case 1542:
          if (paramString.equals("06"))
            b = 4; 
          break;
        case 1544:
          if (paramString.equals("08"))
            b = 5; 
          break;
        case 1545:
          if (paramString.equals("09"))
            b = 6; 
          break;
        case 1567:
          if (paramString.equals("10"))
            b = 7; 
          break;
        case 1568:
          if (paramString.equals("11"))
            b = 8; 
          break;
        case 1569:
          if (paramString.equals("12"))
            b = 9; 
          break;
        case 1570:
          if (paramString.equals("13"))
            b = 10; 
          break;
        case 1571:
          if (paramString.equals("14"))
            b = 11; 
          break;
        case 1572:
          if (paramString.equals("15"))
            b = 12; 
          break;
        case 1573:
          if (paramString.equals("16"))
            b = 13; 
          break;
        case 1574:
          if (paramString.equals("17"))
            b = 14; 
          break;
        case 1575:
          if (paramString.equals("18"))
            b = 15; 
          break;
        case 1576:
          if (paramString.equals("19"))
            b = 16; 
          break;
        case 1598:
          if (paramString.equals("20"))
            b = 17; 
          break;
        case 1599:
          if (paramString.equals("21"))
            b = 18; 
          break;
        case 1600:
          if (paramString.equals("22"))
            b = 19; 
          break;
      } 
    } catch (Exception exception) {
      Log.e("ENUM_ACAO_TRANSACIONAL", exception.getMessage());
      return null;
    } 
    switch (b) {
      case 0:
        return OFERTAR_ID_TELA_OFERTA_ATIVACAO_CSO.name();
      case 1:
        return OFERTAR_ID_CSO_TRANSACIONAL.name();
      case 2:
        return OFERTAR_ID_MODO_CONSULTIVO_TELA_02_ID_NAO_HABILITADO.name();
      case 3:
        return MODO_CONSULTIVO_TELA_04_BLOQUEIO_CLIENTE.name();
      case 4:
        return LIMPEZA_SEMENTES_TELA_03_BLOQUEIO_ADM.name();
      case 5:
        return MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO.name();
      case 6:
        return ERRO_INESPERADO_TELA_11.name();
      case 7:
        return MODO_CONSULTIVO_TELA_05_BLOQUEIO_TENTATIVAS.name();
      case 8:
        return TRANSACIONAL_COM_ID_OU_OTIMIZACAO.name();
      case 9:
        return FLUXO_OTIMIZACAO.name();
      case 10:
        return TELA_OFERTA_ATIVACAO_CSO.name();
      case 11:
        return CSO_TRANSACIONAL.name();
      case 12:
        return HOME_CONSULTIVA.name();
      case 13:
        return CONVERSAO_ID_OBRIGATORIA_TELA_41.name();
      case 14:
        return ID_CANCELADO_TELA_51_OU_MODO_CONSULTIVO.name();
      case 15:
        return ATIVACAO_POR_SMS_TELA_44_OU_MODO_CONSULTIVO.name();
      case 16:
        return HABILITAR_ID_NOVAMENTE_TELA_50_OU_MODO_CONSULTIVO.name();
      case 17:
        return MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO_APARELHO_PENDENTE.name();
      case 18:
        return CONVERSAO_ID_OBRIGATORIA_TELA_41_ATIVACAO_CSO.name();
      case 19:
        return HABILITACAO_ATM.name();
    } 
    return null;
  }
  
  public String getValue() {
    return this.value;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\naz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */