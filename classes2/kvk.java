public enum kvk {
  FIVE_STARS,
  FOUR_STARS,
  ONE_STAR(1),
  THREE_STARS(1),
  TWO_STARS(2);
  
  private int numberStar;
  
  static {
    THREE_STARS = new kvk("THREE_STARS", 2, 3);
    FOUR_STARS = new kvk("FOUR_STARS", 3, 4);
    FIVE_STARS = new kvk("FIVE_STARS", 4, 5);
    $VALUES = new kvk[] { ONE_STAR, TWO_STARS, THREE_STARS, FOUR_STARS, FIVE_STARS };
  }
  
  kvk(int paramInt1) {
    this.numberStar = paramInt1;
  }
  
  public static kvk getEnum(int paramInt) {
    switch (paramInt) {
      default:
        return null;
      case 1:
        return ONE_STAR;
      case 2:
        return TWO_STARS;
      case 3:
        return THREE_STARS;
      case 4:
        return FOUR_STARS;
      case 5:
        break;
    } 
    return FIVE_STARS;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kvk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */