final class eox implements ekp {
  public <T> ekn<T> a(ejm paramejm, epn<T> paramepn) {
    Class<?> clazz2 = paramepn.getRawType();
    if (!Enum.class.isAssignableFrom(clazz2) || clazz2 == Enum.class)
      return null; 
    Class<?> clazz1 = clazz2;
    if (!clazz2.isEnum())
      clazz1 = clazz2.getSuperclass(); 
    return new epl(clazz1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eox.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */