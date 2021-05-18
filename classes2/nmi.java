enum nmi {
  RELEASE, RESTORE;
  
  static {
    $VALUES = new nmi[] { RELEASE, RESTORE };
  }
  
  abstract void execute(nmf<?> paramnmf);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nmi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */