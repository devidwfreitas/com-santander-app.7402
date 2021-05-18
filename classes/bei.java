enum bei {
  Add, Invert, None, Unknown;
  
  static {
    Add = new bei("Add", 1);
    Invert = new bei("Invert", 2);
    Unknown = new bei("Unknown", 3);
    $VALUES = new bei[] { None, Add, Invert, Unknown };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bei.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */