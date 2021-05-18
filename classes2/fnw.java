public enum fnw {
  CanalBloqueadoPorDemaisMotivos, CanalBloqueadoPorFraude, CpfNaoCadastradoEmPE, ErroAoProcessar, FezOptInNoCanal, NaoCadastradoNoSN, NaoFezOptInNoCanal, NaoFezOptInNoCanalComPendencia, NaoFezOptInNoCanalSemPendencia, SenhaCancelada, SenhaElegivelPG, SenhaNaoElegivelPG;
  
  static {
    SenhaCancelada = new fnw("SenhaCancelada", 3);
    NaoCadastradoNoSN = new fnw("NaoCadastradoNoSN", 4);
    CanalBloqueadoPorFraude = new fnw("CanalBloqueadoPorFraude", 5);
    CanalBloqueadoPorDemaisMotivos = new fnw("CanalBloqueadoPorDemaisMotivos", 6);
    FezOptInNoCanal = new fnw("FezOptInNoCanal", 7);
    NaoFezOptInNoCanal = new fnw("NaoFezOptInNoCanal", 8);
    ErroAoProcessar = new fnw("ErroAoProcessar", 9);
    NaoFezOptInNoCanalComPendencia = new fnw("NaoFezOptInNoCanalComPendencia", 10);
    NaoFezOptInNoCanalSemPendencia = new fnw("NaoFezOptInNoCanalSemPendencia", 11);
    $VALUES = new fnw[] { 
        CpfNaoCadastradoEmPE, SenhaElegivelPG, SenhaNaoElegivelPG, SenhaCancelada, NaoCadastradoNoSN, CanalBloqueadoPorFraude, CanalBloqueadoPorDemaisMotivos, FezOptInNoCanal, NaoFezOptInNoCanal, ErroAoProcessar, 
        NaoFezOptInNoCanalComPendencia, NaoFezOptInNoCanalSemPendencia };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fnw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */