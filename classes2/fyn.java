public enum fyn {
  CADASTRAR_PASSO_1, CADASTRAR_PASSO_2, CADASTRAR_PASSO_3, ERROR, GET_USUARIO_SN, OBTER_QUIZ_ESQUECI_SENHA_PASSO_1, OBTER_QUIZ_ESQUECI_SENHA_PASSO_2, RESET_PWD_ESQUECI_SENHA_PASSO_4, USUARIO_NMS_ESQUECI_SENHA_PASSO_3;
  
  static {
    OBTER_QUIZ_ESQUECI_SENHA_PASSO_1 = new fyn("OBTER_QUIZ_ESQUECI_SENHA_PASSO_1", 1);
    USUARIO_NMS_ESQUECI_SENHA_PASSO_3 = new fyn("USUARIO_NMS_ESQUECI_SENHA_PASSO_3", 2);
    CADASTRAR_PASSO_1 = new fyn("CADASTRAR_PASSO_1", 3);
    CADASTRAR_PASSO_2 = new fyn("CADASTRAR_PASSO_2", 4);
    CADASTRAR_PASSO_3 = new fyn("CADASTRAR_PASSO_3", 5);
    RESET_PWD_ESQUECI_SENHA_PASSO_4 = new fyn("RESET_PWD_ESQUECI_SENHA_PASSO_4", 6);
    GET_USUARIO_SN = new fyn("GET_USUARIO_SN", 7);
    ERROR = new fyn("ERROR", 8);
    $VALUES = new fyn[] { OBTER_QUIZ_ESQUECI_SENHA_PASSO_2, OBTER_QUIZ_ESQUECI_SENHA_PASSO_1, USUARIO_NMS_ESQUECI_SENHA_PASSO_3, CADASTRAR_PASSO_1, CADASTRAR_PASSO_2, CADASTRAR_PASSO_3, RESET_PWD_ESQUECI_SENHA_PASSO_4, GET_USUARIO_SN, ERROR };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fyn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */