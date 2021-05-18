final class epc implements ekp {
  epc(Class paramClass, ekn paramekn) {}
  
  public <T2> ekn<T2> a(ejm paramejm, epn<T2> paramepn) {
    Class<?> clazz = paramepn.getRawType();
    return !this.a.isAssignableFrom(clazz) ? null : new epd(this, clazz);
  }
  
  public String toString() {
    return "Factory[typeHierarchy=" + this.a.getName() + ",adapter=" + this.b + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\epc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */