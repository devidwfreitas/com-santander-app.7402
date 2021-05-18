import java.lang.reflect.Field;

class enm extends eno {
  enm(enl paramenl, String paramString, boolean paramBoolean1, boolean paramBoolean2, Field paramField, boolean paramBoolean3, ekn paramekn, ejm paramejm, epn paramepn, boolean paramBoolean4) {
    super(paramString, paramBoolean1, paramBoolean2);
  }
  
  void a(epo paramepo, Object paramObject) {
    paramepo = this.c.b(paramepo);
    if (paramepo != null || !this.f)
      this.a.set(paramObject, paramepo); 
  }
  
  void a(eps parameps, Object paramObject) {
    Object object = this.a.get(paramObject);
    if (this.b) {
      paramObject = this.c;
    } else {
      paramObject = new enx(this.d, this.c, this.e.getType());
    } 
    paramObject.a(parameps, object);
  }
  
  public boolean a(Object paramObject) {
    return (this.i && this.a.get(paramObject) != paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\enm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */