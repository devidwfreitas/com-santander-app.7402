public enum gww {
  Conta, ContaMovement, Home, MeusInvestimentos, Saldo;
  
  static {
    Conta = new gww("Conta", 2);
    MeusInvestimentos = new gww("MeusInvestimentos", 3);
    ContaMovement = new gww("ContaMovement", 4);
    $VALUES = new gww[] { Home, Saldo, Conta, MeusInvestimentos, ContaMovement };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gww.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */