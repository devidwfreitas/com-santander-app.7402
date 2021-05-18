public enum apz {
  ADD, DELETE, GET, POST, PUT;
  
  static {
    DELETE = new apz("DELETE", 3);
    ADD = new apz("ADD", 4);
    $VALUES = new apz[] { GET, POST, PUT, DELETE, ADD };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\apz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */