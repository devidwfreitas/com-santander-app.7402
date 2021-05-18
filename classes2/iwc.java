import android.util.Log;

class iwc implements gkw {
  iwc(ivz paramivz, String paramString1, String paramString2) {}
  
  public void a(Object paramObject) {
    if (paramObject != null && paramObject instanceof iuv) {
      paramObject = paramObject;
      if (!paramObject.equals(null) && paramObject.a() != null) {
        if (paramObject.a().equals("0")) {
          if (paramObject.getConfirmacao().equals("ERRO")) {
            ivz.a(this.c).a("falhaComunicacao|".concat("s0003"));
            return;
          } 
          paramObject = new iuz();
          paramObject.a(this.a);
          paramObject.d(nar.b(this.a + this.b));
          try {
            paramObject.c((new naf()).b(this.b.getBytes("UTF-8")));
          } catch (Exception exception) {
            Log.e("ERROR_ENCRYPT", exception.getMessage());
          } 
          ivz.a(this.c).a(paramObject);
          return;
        } 
        ivz.a(this.c).a("falhaComunicacao|".concat(paramObject.a()));
        return;
      } 
      ivz.a(this.c).a("falhaComunicacao|".concat("s0002"));
      return;
    } 
    ivz.a(this.c).a("falhaComunicacao|".concat("s0001"));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iwc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */