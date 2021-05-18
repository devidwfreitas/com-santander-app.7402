public enum cai {
  ASKFOR, SEND, TURN;
  
  static {
    ASKFOR = new cai("ASKFOR", 1);
    TURN = new cai("TURN", 2);
    $VALUES = new cai[] { SEND, ASKFOR, TURN };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cai.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */