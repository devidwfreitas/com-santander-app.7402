class iwb implements gyx {
  iwb(ivz paramivz, Object paramObject) {}
  
  public void a(Object paramObject) {
    if (paramObject == null || paramObject.equals("")) {
      ivz.a(this.b).a("falhaComunicacao|".concat("d0000"));
      return;
    } 
    if (paramObject.equals("0")) {
      ivz.a(this.b).b(this.a);
      return;
    } 
    if (paramObject.toString().contains("d")) {
      ivz.a(this.b).a("falhaComunicacao|".concat(paramObject.toString()));
      return;
    } 
    ivz.a(this.b).a(paramObject.toString());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iwb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */