class iwa implements gkw {
  iwa(ivz paramivz) {}
  
  public void a(Object paramObject) {
    if (paramObject != null && paramObject instanceof ivf) {
      paramObject = paramObject;
      if (!paramObject.equals(null) && paramObject.a() != null) {
        if (Integer.valueOf(paramObject.a()).equals(Integer.valueOf(0))) {
          if (paramObject.c().size() > 0 && Integer.valueOf(paramObject.d()).intValue() > 0) {
            ivz.a(this.a).a(paramObject.c());
            return;
          } 
          ivz.a(this.a).b();
          return;
        } 
        ivz.a(this.a).a("falhaComunicacao|".concat(paramObject.a()));
        return;
      } 
      ivz.a(this.a).a("falhaComunicacao|".concat("s0002"));
      return;
    } 
    ivz.a(this.a).a("falhaComunicacao|".concat("s0001"));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iwa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */