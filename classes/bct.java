public enum bct {
  Add, ExcludeIntersections, Intersect, Merge, Subtract;
  
  static {
    Add = new bct("Add", 1);
    Subtract = new bct("Subtract", 2);
    Intersect = new bct("Intersect", 3);
    ExcludeIntersections = new bct("ExcludeIntersections", 4);
    $VALUES = new bct[] { Merge, Add, Subtract, Intersect, ExcludeIntersections };
  }
  
  private static bct forId(int paramInt) {
    switch (paramInt) {
      default:
        return Merge;
      case 1:
        return Merge;
      case 2:
        return Add;
      case 3:
        return Subtract;
      case 4:
        return Intersect;
      case 5:
        break;
    } 
    return ExcludeIntersections;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bct.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */