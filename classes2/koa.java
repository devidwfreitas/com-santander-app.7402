public enum koa {
  BENEFICIARIES, BILLINGDATA, CANCEL, CHAT, COVERAGE, DUPLICATE;
  
  static {
    BENEFICIARIES = new koa("BENEFICIARIES", 1);
    BILLINGDATA = new koa("BILLINGDATA", 2);
    DUPLICATE = new koa("DUPLICATE", 3);
    CHAT = new koa("CHAT", 4);
    CANCEL = new koa("CANCEL", 5);
    $VALUES = new koa[] { COVERAGE, BENEFICIARIES, BILLINGDATA, DUPLICATE, CHAT, CANCEL };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\koa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */