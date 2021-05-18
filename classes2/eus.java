enum eus {
  ANSIX12_ENCODE, ASCII_ENCODE, BASE256_ENCODE, C40_ENCODE, EDIFACT_ENCODE, PAD_ENCODE, TEXT_ENCODE;
  
  static {
    ASCII_ENCODE = new eus("ASCII_ENCODE", 1);
    C40_ENCODE = new eus("C40_ENCODE", 2);
    TEXT_ENCODE = new eus("TEXT_ENCODE", 3);
    ANSIX12_ENCODE = new eus("ANSIX12_ENCODE", 4);
    EDIFACT_ENCODE = new eus("EDIFACT_ENCODE", 5);
    BASE256_ENCODE = new eus("BASE256_ENCODE", 6);
    $VALUES = new eus[] { PAD_ENCODE, ASCII_ENCODE, C40_ENCODE, TEXT_ENCODE, ANSIX12_ENCODE, EDIFACT_ENCODE, BASE256_ENCODE };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eus.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */