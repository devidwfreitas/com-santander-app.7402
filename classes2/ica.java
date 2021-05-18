class ica implements gkw<ibr> {
  ica(iby paramiby, boolean paramBoolean) {}
  
  public void a(ibr paramibr) {
    iby.a(this.b).b();
    if (paramibr == null) {
      iby.a(this.b).a("");
      return;
    } 
    if (paramibr.getFaultstring() != null && !paramibr.getFaultstring().isEmpty()) {
      iby.a(this.b).a(paramibr.getFaultstring());
      return;
    } 
    iby.b(this.b).a(paramibr, this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ica.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */