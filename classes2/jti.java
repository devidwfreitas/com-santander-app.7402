class jti implements gkw {
  jti(jth paramjth) {}
  
  public void a(Object paramObject) {
    jtj jtj;
    jsu jsu = (jsu)paramObject;
    if (jsu != null && jsu.getConfirmacao().equalsIgnoreCase("OK")) {
      paramObject = mzp.RELOAD_CARTOES;
      mzp mzp = mzp.RELOAD_CONTA;
      mzn mzn = new mzn();
      jtj = new jtj(this, jsu);
      mzn.a(new mzp[] { (mzp)paramObject, mzp }, jtj);
      return;
    } 
    jth.a(this.a).b(jth.b(this.a, (jsu)jtj));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jti.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */