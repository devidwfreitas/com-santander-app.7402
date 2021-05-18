public enum cew {
  EaseInBack, EaseInBounce, EaseInCirc, EaseInCubic, EaseInElastic, EaseInExpo, EaseInOutBack, EaseInOutBounce, EaseInOutCirc, EaseInOutCubic, EaseInOutElastic, EaseInOutExpo, EaseInOutQuad, EaseInOutQuart, EaseInOutSine, EaseInQuad, EaseInQuart, EaseInSine, EaseOutBack, EaseOutBounce, EaseOutCirc, EaseOutCubic, EaseOutElastic, EaseOutExpo, EaseOutQuad, EaseOutQuart, EaseOutSine, Linear;
  
  static {
    EaseInQuad = new cew("EaseInQuad", 1);
    EaseOutQuad = new cew("EaseOutQuad", 2);
    EaseInOutQuad = new cew("EaseInOutQuad", 3);
    EaseInCubic = new cew("EaseInCubic", 4);
    EaseOutCubic = new cew("EaseOutCubic", 5);
    EaseInOutCubic = new cew("EaseInOutCubic", 6);
    EaseInQuart = new cew("EaseInQuart", 7);
    EaseOutQuart = new cew("EaseOutQuart", 8);
    EaseInOutQuart = new cew("EaseInOutQuart", 9);
    EaseInSine = new cew("EaseInSine", 10);
    EaseOutSine = new cew("EaseOutSine", 11);
    EaseInOutSine = new cew("EaseInOutSine", 12);
    EaseInExpo = new cew("EaseInExpo", 13);
    EaseOutExpo = new cew("EaseOutExpo", 14);
    EaseInOutExpo = new cew("EaseInOutExpo", 15);
    EaseInCirc = new cew("EaseInCirc", 16);
    EaseOutCirc = new cew("EaseOutCirc", 17);
    EaseInOutCirc = new cew("EaseInOutCirc", 18);
    EaseInElastic = new cew("EaseInElastic", 19);
    EaseOutElastic = new cew("EaseOutElastic", 20);
    EaseInOutElastic = new cew("EaseInOutElastic", 21);
    EaseInBack = new cew("EaseInBack", 22);
    EaseOutBack = new cew("EaseOutBack", 23);
    EaseInOutBack = new cew("EaseInOutBack", 24);
    EaseInBounce = new cew("EaseInBounce", 25);
    EaseOutBounce = new cew("EaseOutBounce", 26);
    EaseInOutBounce = new cew("EaseInOutBounce", 27);
    $VALUES = new cew[] { 
        Linear, EaseInQuad, EaseOutQuad, EaseInOutQuad, EaseInCubic, EaseOutCubic, EaseInOutCubic, EaseInQuart, EaseOutQuart, EaseInOutQuart, 
        EaseInSine, EaseOutSine, EaseInOutSine, EaseInExpo, EaseOutExpo, EaseInOutExpo, EaseInCirc, EaseOutCirc, EaseInOutCirc, EaseInElastic, 
        EaseOutElastic, EaseInOutElastic, EaseInBack, EaseOutBack, EaseInOutBack, EaseInBounce, EaseOutBounce, EaseInOutBounce };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cew.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */