public final class fag {
  private static final int[] a = new int[] { 
      31892, 34236, 39577, 42195, 48118, 51042, 55367, 58893, 63784, 68472, 
      70749, 76311, 79154, 84390, 87683, 92361, 96236, 102084, 102881, 110507, 
      110734, 117786, 119615, 126325, 127568, 133589, 136944, 141498, 145311, 150283, 
      152622, 158308, 161089, 167017 };
  
  private static final fag[] b = f();
  
  private final int c;
  
  private final int[] d;
  
  private final fai[] e;
  
  private final int f;
  
  private fag(int paramInt, int[] paramArrayOfint, fai... paramVarArgs) {
    this.c = paramInt;
    this.d = paramArrayOfint;
    this.e = paramVarArgs;
    int k = paramVarArgs[0].a();
    fah[] arrayOfFah = paramVarArgs[0].d();
    int m = arrayOfFah.length;
    int i = 0;
    for (paramInt = j; paramInt < m; paramInt++) {
      fah fah = arrayOfFah[paramInt];
      j = fah.a();
      i += (fah.b() + k) * j;
    } 
    this.f = i;
  }
  
  public static fag a(int paramInt) {
    if (paramInt % 4 != 1)
      throw eqb.a(); 
    try {
      return b((paramInt - 17) / 4);
    } catch (IllegalArgumentException illegalArgumentException) {
      throw eqb.a();
    } 
  }
  
  public static fag b(int paramInt) {
    if (paramInt < 1 || paramInt > 40)
      throw new IllegalArgumentException(); 
    return b[paramInt - 1];
  }
  
  static fag c(int paramInt) {
    int i = 0;
    int j = Integer.MAX_VALUE;
    int k = 0;
    while (i < a.length) {
      int m = a[i];
      if (m == paramInt)
        return b(i + 7); 
      int n = fad.a(paramInt, m);
      m = j;
      if (n < j) {
        k = i + 7;
        m = n;
      } 
      i++;
      j = m;
    } 
    return (j <= 3) ? b(k) : null;
  }
  
  private static fag[] f() {
    fai fai1 = new fai(7, new fah[] { new fah(1, 19) });
    fai fai2 = new fai(10, new fah[] { new fah(1, 16) });
    fai fai3 = new fai(13, new fah[] { new fah(1, 13) });
    fai fai4 = new fai(17, new fah[] { new fah(1, 9) });
    fag fag1 = new fag(1, new int[0], new fai[] { fai1, fai2, fai3, fai4 });
    fai2 = new fai(10, new fah[] { new fah(1, 34) });
    fai3 = new fai(16, new fah[] { new fah(1, 28) });
    fai4 = new fai(22, new fah[] { new fah(1, 22) });
    fai fai5 = new fai(28, new fah[] { new fah(1, 16) });
    fag fag2 = new fag(2, new int[] { 6, 18 }, new fai[] { fai2, fai3, fai4, fai5 });
    fai3 = new fai(15, new fah[] { new fah(1, 55) });
    fai4 = new fai(26, new fah[] { new fah(1, 44) });
    fai5 = new fai(18, new fah[] { new fah(2, 17) });
    fai fai6 = new fai(22, new fah[] { new fah(2, 13) });
    fag fag3 = new fag(3, new int[] { 6, 22 }, new fai[] { fai3, fai4, fai5, fai6 });
    fai4 = new fai(20, new fah[] { new fah(1, 80) });
    fai5 = new fai(18, new fah[] { new fah(2, 32) });
    fai6 = new fai(26, new fah[] { new fah(2, 24) });
    fai fai7 = new fai(16, new fah[] { new fah(4, 9) });
    fag fag4 = new fag(4, new int[] { 6, 26 }, new fai[] { fai4, fai5, fai6, fai7 });
    fai5 = new fai(26, new fah[] { new fah(1, 108) });
    fai6 = new fai(24, new fah[] { new fah(2, 43) });
    fai7 = new fai(18, new fah[] { new fah(2, 15), new fah(2, 16) });
    fai fai8 = new fai(22, new fah[] { new fah(2, 11), new fah(2, 12) });
    fag fag5 = new fag(5, new int[] { 6, 30 }, new fai[] { fai5, fai6, fai7, fai8 });
    fai6 = new fai(18, new fah[] { new fah(2, 68) });
    fai7 = new fai(16, new fah[] { new fah(4, 27) });
    fai8 = new fai(24, new fah[] { new fah(4, 19) });
    fai fai9 = new fai(28, new fah[] { new fah(4, 15) });
    fag fag6 = new fag(6, new int[] { 6, 34 }, new fai[] { fai6, fai7, fai8, fai9 });
    fai7 = new fai(20, new fah[] { new fah(2, 78) });
    fai8 = new fai(18, new fah[] { new fah(4, 31) });
    fai9 = new fai(18, new fah[] { new fah(2, 14), new fah(4, 15) });
    fai fai10 = new fai(26, new fah[] { new fah(4, 13), new fah(1, 14) });
    fag fag7 = new fag(7, new int[] { 6, 22, 38 }, new fai[] { fai7, fai8, fai9, fai10 });
    fai8 = new fai(24, new fah[] { new fah(2, 97) });
    fai9 = new fai(22, new fah[] { new fah(2, 38), new fah(2, 39) });
    fai10 = new fai(22, new fah[] { new fah(4, 18), new fah(2, 19) });
    fai fai11 = new fai(26, new fah[] { new fah(4, 14), new fah(2, 15) });
    fag fag8 = new fag(8, new int[] { 6, 24, 42 }, new fai[] { fai8, fai9, fai10, fai11 });
    fai9 = new fai(30, new fah[] { new fah(2, 116) });
    fai10 = new fai(22, new fah[] { new fah(3, 36), new fah(2, 37) });
    fai11 = new fai(20, new fah[] { new fah(4, 16), new fah(4, 17) });
    fai fai12 = new fai(24, new fah[] { new fah(4, 12), new fah(4, 13) });
    fag fag9 = new fag(9, new int[] { 6, 26, 46 }, new fai[] { fai9, fai10, fai11, fai12 });
    fai10 = new fai(18, new fah[] { new fah(2, 68), new fah(2, 69) });
    fai11 = new fai(26, new fah[] { new fah(4, 43), new fah(1, 44) });
    fai12 = new fai(24, new fah[] { new fah(6, 19), new fah(2, 20) });
    fai fai13 = new fai(28, new fah[] { new fah(6, 15), new fah(2, 16) });
    fag fag10 = new fag(10, new int[] { 6, 28, 50 }, new fai[] { fai10, fai11, fai12, fai13 });
    fai11 = new fai(20, new fah[] { new fah(4, 81) });
    fai12 = new fai(30, new fah[] { new fah(1, 50), new fah(4, 51) });
    fai13 = new fai(28, new fah[] { new fah(4, 22), new fah(4, 23) });
    fai fai14 = new fai(24, new fah[] { new fah(3, 12), new fah(8, 13) });
    fag fag11 = new fag(11, new int[] { 6, 30, 54 }, new fai[] { fai11, fai12, fai13, fai14 });
    fai12 = new fai(24, new fah[] { new fah(2, 92), new fah(2, 93) });
    fai13 = new fai(22, new fah[] { new fah(6, 36), new fah(2, 37) });
    fai14 = new fai(26, new fah[] { new fah(4, 20), new fah(6, 21) });
    fai fai15 = new fai(28, new fah[] { new fah(7, 14), new fah(4, 15) });
    fag fag12 = new fag(12, new int[] { 6, 32, 58 }, new fai[] { fai12, fai13, fai14, fai15 });
    fai13 = new fai(26, new fah[] { new fah(4, 107) });
    fai14 = new fai(22, new fah[] { new fah(8, 37), new fah(1, 38) });
    fai15 = new fai(24, new fah[] { new fah(8, 20), new fah(4, 21) });
    fai fai16 = new fai(22, new fah[] { new fah(12, 11), new fah(4, 12) });
    fag fag13 = new fag(13, new int[] { 6, 34, 62 }, new fai[] { fai13, fai14, fai15, fai16 });
    fai14 = new fai(30, new fah[] { new fah(3, 115), new fah(1, 116) });
    fai15 = new fai(24, new fah[] { new fah(4, 40), new fah(5, 41) });
    fai16 = new fai(20, new fah[] { new fah(11, 16), new fah(5, 17) });
    fai fai17 = new fai(24, new fah[] { new fah(11, 12), new fah(5, 13) });
    fag fag14 = new fag(14, new int[] { 6, 26, 46, 66 }, new fai[] { fai14, fai15, fai16, fai17 });
    fai15 = new fai(22, new fah[] { new fah(5, 87), new fah(1, 88) });
    fai16 = new fai(24, new fah[] { new fah(5, 41), new fah(5, 42) });
    fai17 = new fai(30, new fah[] { new fah(5, 24), new fah(7, 25) });
    fai fai18 = new fai(24, new fah[] { new fah(11, 12), new fah(7, 13) });
    fag fag15 = new fag(15, new int[] { 6, 26, 48, 70 }, new fai[] { fai15, fai16, fai17, fai18 });
    fai16 = new fai(24, new fah[] { new fah(5, 98), new fah(1, 99) });
    fai17 = new fai(28, new fah[] { new fah(7, 45), new fah(3, 46) });
    fai18 = new fai(24, new fah[] { new fah(15, 19), new fah(2, 20) });
    fai fai19 = new fai(30, new fah[] { new fah(3, 15), new fah(13, 16) });
    fag fag16 = new fag(16, new int[] { 6, 26, 50, 74 }, new fai[] { fai16, fai17, fai18, fai19 });
    fai17 = new fai(28, new fah[] { new fah(1, 107), new fah(5, 108) });
    fai18 = new fai(28, new fah[] { new fah(10, 46), new fah(1, 47) });
    fai19 = new fai(28, new fah[] { new fah(1, 22), new fah(15, 23) });
    fai fai20 = new fai(28, new fah[] { new fah(2, 14), new fah(17, 15) });
    fag fag17 = new fag(17, new int[] { 6, 30, 54, 78 }, new fai[] { fai17, fai18, fai19, fai20 });
    fai18 = new fai(30, new fah[] { new fah(5, 120), new fah(1, 121) });
    fai19 = new fai(26, new fah[] { new fah(9, 43), new fah(4, 44) });
    fai20 = new fai(28, new fah[] { new fah(17, 22), new fah(1, 23) });
    fai fai21 = new fai(28, new fah[] { new fah(2, 14), new fah(19, 15) });
    fag fag18 = new fag(18, new int[] { 6, 30, 56, 82 }, new fai[] { fai18, fai19, fai20, fai21 });
    fai19 = new fai(28, new fah[] { new fah(3, 113), new fah(4, 114) });
    fai20 = new fai(26, new fah[] { new fah(3, 44), new fah(11, 45) });
    fai21 = new fai(26, new fah[] { new fah(17, 21), new fah(4, 22) });
    fai fai22 = new fai(26, new fah[] { new fah(9, 13), new fah(16, 14) });
    fag fag19 = new fag(19, new int[] { 6, 30, 58, 86 }, new fai[] { fai19, fai20, fai21, fai22 });
    fai20 = new fai(28, new fah[] { new fah(3, 107), new fah(5, 108) });
    fai21 = new fai(26, new fah[] { new fah(3, 41), new fah(13, 42) });
    fai22 = new fai(30, new fah[] { new fah(15, 24), new fah(5, 25) });
    fai fai23 = new fai(28, new fah[] { new fah(15, 15), new fah(10, 16) });
    fag fag20 = new fag(20, new int[] { 6, 34, 62, 90 }, new fai[] { fai20, fai21, fai22, fai23 });
    fai21 = new fai(28, new fah[] { new fah(4, 116), new fah(4, 117) });
    fai22 = new fai(26, new fah[] { new fah(17, 42) });
    fai23 = new fai(28, new fah[] { new fah(17, 22), new fah(6, 23) });
    fai fai24 = new fai(30, new fah[] { new fah(19, 16), new fah(6, 17) });
    fag fag21 = new fag(21, new int[] { 6, 28, 50, 72, 94 }, new fai[] { fai21, fai22, fai23, fai24 });
    fai22 = new fai(28, new fah[] { new fah(2, 111), new fah(7, 112) });
    fai23 = new fai(28, new fah[] { new fah(17, 46) });
    fai24 = new fai(30, new fah[] { new fah(7, 24), new fah(16, 25) });
    fai fai25 = new fai(24, new fah[] { new fah(34, 13) });
    fag fag22 = new fag(22, new int[] { 6, 26, 50, 74, 98 }, new fai[] { fai22, fai23, fai24, fai25 });
    fai23 = new fai(30, new fah[] { new fah(4, 121), new fah(5, 122) });
    fai24 = new fai(28, new fah[] { new fah(4, 47), new fah(14, 48) });
    fai25 = new fai(30, new fah[] { new fah(11, 24), new fah(14, 25) });
    fai fai26 = new fai(30, new fah[] { new fah(16, 15), new fah(14, 16) });
    fag fag23 = new fag(23, new int[] { 6, 30, 54, 78, 102 }, new fai[] { fai23, fai24, fai25, fai26 });
    fai24 = new fai(30, new fah[] { new fah(6, 117), new fah(4, 118) });
    fai25 = new fai(28, new fah[] { new fah(6, 45), new fah(14, 46) });
    fai26 = new fai(30, new fah[] { new fah(11, 24), new fah(16, 25) });
    fai fai27 = new fai(30, new fah[] { new fah(30, 16), new fah(2, 17) });
    fag fag24 = new fag(24, new int[] { 6, 28, 54, 80, 106 }, new fai[] { fai24, fai25, fai26, fai27 });
    fai25 = new fai(26, new fah[] { new fah(8, 106), new fah(4, 107) });
    fai26 = new fai(28, new fah[] { new fah(8, 47), new fah(13, 48) });
    fai27 = new fai(30, new fah[] { new fah(7, 24), new fah(22, 25) });
    fai fai28 = new fai(30, new fah[] { new fah(22, 15), new fah(13, 16) });
    fag fag25 = new fag(25, new int[] { 6, 32, 58, 84, 110 }, new fai[] { fai25, fai26, fai27, fai28 });
    fai26 = new fai(28, new fah[] { new fah(10, 114), new fah(2, 115) });
    fai27 = new fai(28, new fah[] { new fah(19, 46), new fah(4, 47) });
    fai28 = new fai(28, new fah[] { new fah(28, 22), new fah(6, 23) });
    fai fai29 = new fai(30, new fah[] { new fah(33, 16), new fah(4, 17) });
    fag fag26 = new fag(26, new int[] { 6, 30, 58, 86, 114 }, new fai[] { fai26, fai27, fai28, fai29 });
    fai27 = new fai(30, new fah[] { new fah(8, 122), new fah(4, 123) });
    fai28 = new fai(28, new fah[] { new fah(22, 45), new fah(3, 46) });
    fai29 = new fai(30, new fah[] { new fah(8, 23), new fah(26, 24) });
    fai fai30 = new fai(30, new fah[] { new fah(12, 15), new fah(28, 16) });
    fag fag27 = new fag(27, new int[] { 6, 34, 62, 90, 118 }, new fai[] { fai27, fai28, fai29, fai30 });
    fai28 = new fai(30, new fah[] { new fah(3, 117), new fah(10, 118) });
    fai29 = new fai(28, new fah[] { new fah(3, 45), new fah(23, 46) });
    fai30 = new fai(30, new fah[] { new fah(4, 24), new fah(31, 25) });
    fai fai31 = new fai(30, new fah[] { new fah(11, 15), new fah(31, 16) });
    fag fag28 = new fag(28, new int[] { 6, 26, 50, 74, 98, 122 }, new fai[] { fai28, fai29, fai30, fai31 });
    fai29 = new fai(30, new fah[] { new fah(7, 116), new fah(7, 117) });
    fai30 = new fai(28, new fah[] { new fah(21, 45), new fah(7, 46) });
    fai31 = new fai(30, new fah[] { new fah(1, 23), new fah(37, 24) });
    fai fai32 = new fai(30, new fah[] { new fah(19, 15), new fah(26, 16) });
    fag fag29 = new fag(29, new int[] { 6, 30, 54, 78, 102, 126 }, new fai[] { fai29, fai30, fai31, fai32 });
    fai30 = new fai(30, new fah[] { new fah(5, 115), new fah(10, 116) });
    fai31 = new fai(28, new fah[] { new fah(19, 47), new fah(10, 48) });
    fai32 = new fai(30, new fah[] { new fah(15, 24), new fah(25, 25) });
    fai fai33 = new fai(30, new fah[] { new fah(23, 15), new fah(25, 16) });
    fag fag30 = new fag(30, new int[] { 6, 26, 52, 78, 104, 130 }, new fai[] { fai30, fai31, fai32, fai33 });
    fai31 = new fai(30, new fah[] { new fah(13, 115), new fah(3, 116) });
    fai32 = new fai(28, new fah[] { new fah(2, 46), new fah(29, 47) });
    fai33 = new fai(30, new fah[] { new fah(42, 24), new fah(1, 25) });
    fai fai34 = new fai(30, new fah[] { new fah(23, 15), new fah(28, 16) });
    fag fag31 = new fag(31, new int[] { 6, 30, 56, 82, 108, 134 }, new fai[] { fai31, fai32, fai33, fai34 });
    fai32 = new fai(30, new fah[] { new fah(17, 115) });
    fai33 = new fai(28, new fah[] { new fah(10, 46), new fah(23, 47) });
    fai34 = new fai(30, new fah[] { new fah(10, 24), new fah(35, 25) });
    fai fai35 = new fai(30, new fah[] { new fah(19, 15), new fah(35, 16) });
    fag fag32 = new fag(32, new int[] { 6, 34, 60, 86, 112, 138 }, new fai[] { fai32, fai33, fai34, fai35 });
    fai33 = new fai(30, new fah[] { new fah(17, 115), new fah(1, 116) });
    fai34 = new fai(28, new fah[] { new fah(14, 46), new fah(21, 47) });
    fai35 = new fai(30, new fah[] { new fah(29, 24), new fah(19, 25) });
    fai fai36 = new fai(30, new fah[] { new fah(11, 15), new fah(46, 16) });
    fag fag33 = new fag(33, new int[] { 6, 30, 58, 86, 114, 142 }, new fai[] { fai33, fai34, fai35, fai36 });
    fai34 = new fai(30, new fah[] { new fah(13, 115), new fah(6, 116) });
    fai35 = new fai(28, new fah[] { new fah(14, 46), new fah(23, 47) });
    fai36 = new fai(30, new fah[] { new fah(44, 24), new fah(7, 25) });
    fai fai37 = new fai(30, new fah[] { new fah(59, 16), new fah(1, 17) });
    fag fag34 = new fag(34, new int[] { 6, 34, 62, 90, 118, 146 }, new fai[] { fai34, fai35, fai36, fai37 });
    fai35 = new fai(30, new fah[] { new fah(12, 121), new fah(7, 122) });
    fai36 = new fai(28, new fah[] { new fah(12, 47), new fah(26, 48) });
    fai37 = new fai(30, new fah[] { new fah(39, 24), new fah(14, 25) });
    fai fai38 = new fai(30, new fah[] { new fah(22, 15), new fah(41, 16) });
    fag fag35 = new fag(35, new int[] { 6, 30, 54, 78, 102, 126, 150 }, new fai[] { fai35, fai36, fai37, fai38 });
    fai36 = new fai(30, new fah[] { new fah(6, 121), new fah(14, 122) });
    fai37 = new fai(28, new fah[] { new fah(6, 47), new fah(34, 48) });
    fai38 = new fai(30, new fah[] { new fah(46, 24), new fah(10, 25) });
    fai fai39 = new fai(30, new fah[] { new fah(2, 15), new fah(64, 16) });
    fag fag36 = new fag(36, new int[] { 6, 24, 50, 76, 102, 128, 154 }, new fai[] { fai36, fai37, fai38, fai39 });
    fai37 = new fai(30, new fah[] { new fah(17, 122), new fah(4, 123) });
    fai38 = new fai(28, new fah[] { new fah(29, 46), new fah(14, 47) });
    fai39 = new fai(30, new fah[] { new fah(49, 24), new fah(10, 25) });
    fai fai40 = new fai(30, new fah[] { new fah(24, 15), new fah(46, 16) });
    fag fag37 = new fag(37, new int[] { 6, 28, 54, 80, 106, 132, 158 }, new fai[] { fai37, fai38, fai39, fai40 });
    fai38 = new fai(30, new fah[] { new fah(4, 122), new fah(18, 123) });
    fai39 = new fai(28, new fah[] { new fah(13, 46), new fah(32, 47) });
    fai40 = new fai(30, new fah[] { new fah(48, 24), new fah(14, 25) });
    fai fai41 = new fai(30, new fah[] { new fah(42, 15), new fah(32, 16) });
    fag fag38 = new fag(38, new int[] { 6, 32, 58, 84, 110, 136, 162 }, new fai[] { fai38, fai39, fai40, fai41 });
    fai39 = new fai(30, new fah[] { new fah(20, 117), new fah(4, 118) });
    fai40 = new fai(28, new fah[] { new fah(40, 47), new fah(7, 48) });
    fai41 = new fai(30, new fah[] { new fah(43, 24), new fah(22, 25) });
    fai fai42 = new fai(30, new fah[] { new fah(10, 15), new fah(67, 16) });
    fag fag39 = new fag(39, new int[] { 6, 26, 54, 82, 110, 138, 166 }, new fai[] { fai39, fai40, fai41, fai42 });
    fai40 = new fai(30, new fah[] { new fah(19, 118), new fah(6, 119) });
    fai41 = new fai(28, new fah[] { new fah(18, 47), new fah(31, 48) });
    fai42 = new fai(30, new fah[] { new fah(34, 24), new fah(34, 25) });
    fai fai43 = new fai(30, new fah[] { new fah(20, 15), new fah(61, 16) });
    return new fag[] { 
        fag1, fag2, fag3, fag4, fag5, fag6, fag7, fag8, fag9, fag10, 
        fag11, fag12, fag13, fag14, fag15, fag16, fag17, fag18, fag19, fag20, 
        fag21, fag22, fag23, fag24, fag25, fag26, fag27, fag28, fag29, fag30, 
        fag31, fag32, fag33, fag34, fag35, fag36, fag37, fag38, fag39, new fag(40, new int[] { 6, 30, 58, 86, 114, 142, 170 }, new fai[] { fai40, fai41, fai42, fai43 }) };
  }
  
  public int a() {
    return this.c;
  }
  
  public fai a(fac paramfac) {
    return this.e[paramfac.ordinal()];
  }
  
  public int[] b() {
    return this.d;
  }
  
  public int c() {
    return this.f;
  }
  
  public int d() {
    return this.c * 4 + 17;
  }
  
  ett e() {
    int j = d();
    ett ett = new ett(j);
    ett.a(0, 0, 9, 9);
    ett.a(j - 8, 0, 8, 9);
    ett.a(0, j - 8, 9, 8);
    int k = this.d.length;
    for (int i = 0; i < k; i++) {
      int n = this.d[i];
      for (int m = 0; m < k; m++) {
        if ((i != 0 || (m != 0 && m != k - 1)) && (i != k - 1 || m != 0))
          ett.a(this.d[m] - 2, n - 2, 5, 5); 
      } 
    } 
    ett.a(6, 9, 1, j - 17);
    ett.a(9, 6, j - 17, 1);
    if (this.c > 6) {
      ett.a(j - 11, 0, 3, 6);
      ett.a(0, j - 11, 6, 3);
    } 
    return ett;
  }
  
  public String toString() {
    return String.valueOf(this.c);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fag.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */