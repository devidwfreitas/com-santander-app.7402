public class hfi {
  private hxv a;
  
  public hfi(hxv paramhxv) {
    this.a = paramhxv;
  }
  
  public hfi(String paramString1, String paramString2) {
    this.a = new hfj(this, paramString1, paramString2);
  }
  
  public boolean a() {
    return (this.a.getMensagemRetorno() != null);
  }
  
  public String b() {
    return this.a.getMensagemRetorno();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hfi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */