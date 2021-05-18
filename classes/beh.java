public enum beh {
  Image, Null, PreComp, Shape, Solid, Text, Unknown;
  
  static {
    Image = new beh("Image", 2);
    Null = new beh("Null", 3);
    Shape = new beh("Shape", 4);
    Text = new beh("Text", 5);
    Unknown = new beh("Unknown", 6);
    $VALUES = new beh[] { PreComp, Solid, Image, Null, Shape, Text, Unknown };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\beh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */