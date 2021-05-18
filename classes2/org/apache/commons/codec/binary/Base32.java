package org.apache.commons.codec.binary;

public class Base32 extends BaseNCodec {
  private static final int BITS_PER_ENCODED_BYTE = 5;
  
  private static final int BYTES_PER_ENCODED_BLOCK = 8;
  
  private static final int BYTES_PER_UNENCODED_BLOCK = 5;
  
  private static final byte[] CHUNK_SEPARATOR = new byte[] { 13, 10 };
  
  private static final byte[] DECODE_TABLE = new byte[] { 
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
      -1, -1, -1, -1, -1, -1, -1, 63, -1, -1, 
      26, 27, 28, 29, 30, 31, -1, -1, -1, -1, 
      -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 
      5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 
      15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 
      25 };
  
  private static final byte[] ENCODE_TABLE = new byte[] { 
      65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
      75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
      85, 86, 87, 88, 89, 90, 50, 51, 52, 53, 
      54, 55 };
  
  private static final byte[] HEX_DECODE_TABLE = new byte[] { 
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
      -1, -1, -1, -1, -1, -1, -1, 63, 0, 1, 
      2, 3, 4, 5, 6, 7, 8, 9, -1, -1, 
      -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 
      15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 
      25, 26, 27, 28, 29, 30, 31, 32 };
  
  private static final byte[] HEX_ENCODE_TABLE = new byte[] { 
      48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 
      65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
      75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
      85, 86 };
  
  private static final int MASK_5BITS = 31;
  
  private long bitWorkArea;
  
  private final int decodeSize;
  
  private final byte[] decodeTable;
  
  private final int encodeSize;
  
  private final byte[] encodeTable;
  
  private final byte[] lineSeparator;
  
  public Base32() {
    this(false);
  }
  
  public Base32(int paramInt) {
    this(paramInt, CHUNK_SEPARATOR);
  }
  
  public Base32(int paramInt, byte[] paramArrayOfbyte) {
    this(paramInt, paramArrayOfbyte, false);
  }
  
  public Base32(int paramInt, byte[] paramArrayOfbyte, boolean paramBoolean) {
    super(5, 8, paramInt, i);
    int i;
    if (paramBoolean) {
      this.encodeTable = HEX_ENCODE_TABLE;
      this.decodeTable = HEX_DECODE_TABLE;
    } else {
      this.encodeTable = ENCODE_TABLE;
      this.decodeTable = DECODE_TABLE;
    } 
    if (paramInt > 0) {
      String str;
      if (paramArrayOfbyte == null)
        throw new IllegalArgumentException("lineLength " + paramInt + " > 0, but lineSeparator is null"); 
      if (containsAlphabetOrPad(paramArrayOfbyte)) {
        str = StringUtils.newStringUtf8(paramArrayOfbyte);
        throw new IllegalArgumentException("lineSeparator must not contain Base32 characters: [" + str + "]");
      } 
      this.encodeSize = str.length + 8;
      this.lineSeparator = new byte[str.length];
      System.arraycopy(str, 0, this.lineSeparator, 0, str.length);
    } else {
      this.encodeSize = 8;
      this.lineSeparator = null;
    } 
    this.decodeSize = this.encodeSize - 1;
  }
  
  public Base32(boolean paramBoolean) {
    this(0, (byte[])null, paramBoolean);
  }
  
  void decode(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    if (!this.eof) {
      if (paramInt2 < 0)
        this.eof = true; 
      int i = 0;
      while (true) {
        if (i < paramInt2) {
          byte b = paramArrayOfbyte[paramInt1];
          if (b == 61) {
            this.eof = true;
          } else {
            ensureBufferSize(this.decodeSize);
            if (b >= 0 && b < this.decodeTable.length) {
              b = this.decodeTable[b];
              if (b >= 0) {
                this.modulus = (this.modulus + 1) % 8;
                long l = this.bitWorkArea;
                this.bitWorkArea = b + (l << 5L);
                if (this.modulus == 0) {
                  byte[] arrayOfByte = this.buffer;
                  int j = this.pos;
                  this.pos = j + 1;
                  arrayOfByte[j] = (byte)(int)(this.bitWorkArea >> 32L & 0xFFL);
                  arrayOfByte = this.buffer;
                  j = this.pos;
                  this.pos = j + 1;
                  arrayOfByte[j] = (byte)(int)(this.bitWorkArea >> 24L & 0xFFL);
                  arrayOfByte = this.buffer;
                  j = this.pos;
                  this.pos = j + 1;
                  arrayOfByte[j] = (byte)(int)(this.bitWorkArea >> 16L & 0xFFL);
                  arrayOfByte = this.buffer;
                  j = this.pos;
                  this.pos = j + 1;
                  arrayOfByte[j] = (byte)(int)(this.bitWorkArea >> 8L & 0xFFL);
                  arrayOfByte = this.buffer;
                  j = this.pos;
                  this.pos = j + 1;
                  arrayOfByte[j] = (byte)(int)(this.bitWorkArea & 0xFFL);
                } 
              } 
            } 
            i++;
            paramInt1++;
            continue;
          } 
        } 
        if (this.eof && this.modulus >= 2) {
          ensureBufferSize(this.decodeSize);
          switch (this.modulus) {
            default:
              return;
            case 2:
              paramArrayOfbyte = this.buffer;
              paramInt1 = this.pos;
              this.pos = paramInt1 + 1;
              paramArrayOfbyte[paramInt1] = (byte)(int)(this.bitWorkArea >> 2L & 0xFFL);
              return;
            case 3:
              paramArrayOfbyte = this.buffer;
              paramInt1 = this.pos;
              this.pos = paramInt1 + 1;
              paramArrayOfbyte[paramInt1] = (byte)(int)(this.bitWorkArea >> 7L & 0xFFL);
              return;
            case 4:
              this.bitWorkArea >>= 4L;
              paramArrayOfbyte = this.buffer;
              paramInt1 = this.pos;
              this.pos = paramInt1 + 1;
              paramArrayOfbyte[paramInt1] = (byte)(int)(this.bitWorkArea >> 8L & 0xFFL);
              paramArrayOfbyte = this.buffer;
              paramInt1 = this.pos;
              this.pos = paramInt1 + 1;
              paramArrayOfbyte[paramInt1] = (byte)(int)(this.bitWorkArea & 0xFFL);
              return;
            case 5:
              this.bitWorkArea >>= 1L;
              paramArrayOfbyte = this.buffer;
              paramInt1 = this.pos;
              this.pos = paramInt1 + 1;
              paramArrayOfbyte[paramInt1] = (byte)(int)(this.bitWorkArea >> 16L & 0xFFL);
              paramArrayOfbyte = this.buffer;
              paramInt1 = this.pos;
              this.pos = paramInt1 + 1;
              paramArrayOfbyte[paramInt1] = (byte)(int)(this.bitWorkArea >> 8L & 0xFFL);
              paramArrayOfbyte = this.buffer;
              paramInt1 = this.pos;
              this.pos = paramInt1 + 1;
              paramArrayOfbyte[paramInt1] = (byte)(int)(this.bitWorkArea & 0xFFL);
              return;
            case 6:
              this.bitWorkArea >>= 6L;
              paramArrayOfbyte = this.buffer;
              paramInt1 = this.pos;
              this.pos = paramInt1 + 1;
              paramArrayOfbyte[paramInt1] = (byte)(int)(this.bitWorkArea >> 16L & 0xFFL);
              paramArrayOfbyte = this.buffer;
              paramInt1 = this.pos;
              this.pos = paramInt1 + 1;
              paramArrayOfbyte[paramInt1] = (byte)(int)(this.bitWorkArea >> 8L & 0xFFL);
              paramArrayOfbyte = this.buffer;
              paramInt1 = this.pos;
              this.pos = paramInt1 + 1;
              paramArrayOfbyte[paramInt1] = (byte)(int)(this.bitWorkArea & 0xFFL);
              return;
            case 7:
              break;
          } 
          this.bitWorkArea >>= 3L;
          paramArrayOfbyte = this.buffer;
          paramInt1 = this.pos;
          this.pos = paramInt1 + 1;
          paramArrayOfbyte[paramInt1] = (byte)(int)(this.bitWorkArea >> 24L & 0xFFL);
          paramArrayOfbyte = this.buffer;
          paramInt1 = this.pos;
          this.pos = paramInt1 + 1;
          paramArrayOfbyte[paramInt1] = (byte)(int)(this.bitWorkArea >> 16L & 0xFFL);
          paramArrayOfbyte = this.buffer;
          paramInt1 = this.pos;
          this.pos = paramInt1 + 1;
          paramArrayOfbyte[paramInt1] = (byte)(int)(this.bitWorkArea >> 8L & 0xFFL);
          paramArrayOfbyte = this.buffer;
          paramInt1 = this.pos;
          this.pos = paramInt1 + 1;
          paramArrayOfbyte[paramInt1] = (byte)(int)(this.bitWorkArea & 0xFFL);
          return;
        } 
        return;
      } 
    } 
  }
  
  void encode(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    if (!this.eof) {
      if (paramInt2 < 0) {
        this.eof = true;
        if (this.modulus != 0 || this.lineLength != 0) {
          ensureBufferSize(this.encodeSize);
          paramInt1 = this.pos;
          switch (this.modulus) {
            default:
              paramInt2 = this.currentLinePos;
              this.currentLinePos = this.pos - paramInt1 + paramInt2;
              if (this.lineLength > 0 && this.currentLinePos > 0) {
                System.arraycopy(this.lineSeparator, 0, this.buffer, this.pos, this.lineSeparator.length);
                this.pos += this.lineSeparator.length;
                return;
              } 
              return;
            case 1:
              paramArrayOfbyte = this.buffer;
              paramInt2 = this.pos;
              this.pos = paramInt2 + 1;
              paramArrayOfbyte[paramInt2] = this.encodeTable[(int)(this.bitWorkArea >> 3L) & 0x1F];
              paramArrayOfbyte = this.buffer;
              paramInt2 = this.pos;
              this.pos = paramInt2 + 1;
              paramArrayOfbyte[paramInt2] = this.encodeTable[(int)(this.bitWorkArea << 2L) & 0x1F];
              paramArrayOfbyte = this.buffer;
              paramInt2 = this.pos;
              this.pos = paramInt2 + 1;
              paramArrayOfbyte[paramInt2] = 61;
              paramArrayOfbyte = this.buffer;
              paramInt2 = this.pos;
              this.pos = paramInt2 + 1;
              paramArrayOfbyte[paramInt2] = 61;
              paramArrayOfbyte = this.buffer;
              paramInt2 = this.pos;
              this.pos = paramInt2 + 1;
              paramArrayOfbyte[paramInt2] = 61;
              paramArrayOfbyte = this.buffer;
              paramInt2 = this.pos;
              this.pos = paramInt2 + 1;
              paramArrayOfbyte[paramInt2] = 61;
              paramArrayOfbyte = this.buffer;
              paramInt2 = this.pos;
              this.pos = paramInt2 + 1;
              paramArrayOfbyte[paramInt2] = 61;
              paramArrayOfbyte = this.buffer;
              paramInt2 = this.pos;
              this.pos = paramInt2 + 1;
              paramArrayOfbyte[paramInt2] = 61;
            case 2:
              paramArrayOfbyte = this.buffer;
              paramInt2 = this.pos;
              this.pos = paramInt2 + 1;
              paramArrayOfbyte[paramInt2] = this.encodeTable[(int)(this.bitWorkArea >> 11L) & 0x1F];
              paramArrayOfbyte = this.buffer;
              paramInt2 = this.pos;
              this.pos = paramInt2 + 1;
              paramArrayOfbyte[paramInt2] = this.encodeTable[(int)(this.bitWorkArea >> 6L) & 0x1F];
              paramArrayOfbyte = this.buffer;
              paramInt2 = this.pos;
              this.pos = paramInt2 + 1;
              paramArrayOfbyte[paramInt2] = this.encodeTable[(int)(this.bitWorkArea >> 1L) & 0x1F];
              paramArrayOfbyte = this.buffer;
              paramInt2 = this.pos;
              this.pos = paramInt2 + 1;
              paramArrayOfbyte[paramInt2] = this.encodeTable[(int)(this.bitWorkArea << 4L) & 0x1F];
              paramArrayOfbyte = this.buffer;
              paramInt2 = this.pos;
              this.pos = paramInt2 + 1;
              paramArrayOfbyte[paramInt2] = 61;
              paramArrayOfbyte = this.buffer;
              paramInt2 = this.pos;
              this.pos = paramInt2 + 1;
              paramArrayOfbyte[paramInt2] = 61;
              paramArrayOfbyte = this.buffer;
              paramInt2 = this.pos;
              this.pos = paramInt2 + 1;
              paramArrayOfbyte[paramInt2] = 61;
              paramArrayOfbyte = this.buffer;
              paramInt2 = this.pos;
              this.pos = paramInt2 + 1;
              paramArrayOfbyte[paramInt2] = 61;
            case 3:
              paramArrayOfbyte = this.buffer;
              paramInt2 = this.pos;
              this.pos = paramInt2 + 1;
              paramArrayOfbyte[paramInt2] = this.encodeTable[(int)(this.bitWorkArea >> 19L) & 0x1F];
              paramArrayOfbyte = this.buffer;
              paramInt2 = this.pos;
              this.pos = paramInt2 + 1;
              paramArrayOfbyte[paramInt2] = this.encodeTable[(int)(this.bitWorkArea >> 14L) & 0x1F];
              paramArrayOfbyte = this.buffer;
              paramInt2 = this.pos;
              this.pos = paramInt2 + 1;
              paramArrayOfbyte[paramInt2] = this.encodeTable[(int)(this.bitWorkArea >> 9L) & 0x1F];
              paramArrayOfbyte = this.buffer;
              paramInt2 = this.pos;
              this.pos = paramInt2 + 1;
              paramArrayOfbyte[paramInt2] = this.encodeTable[(int)(this.bitWorkArea >> 4L) & 0x1F];
              paramArrayOfbyte = this.buffer;
              paramInt2 = this.pos;
              this.pos = paramInt2 + 1;
              paramArrayOfbyte[paramInt2] = this.encodeTable[(int)(this.bitWorkArea << 1L) & 0x1F];
              paramArrayOfbyte = this.buffer;
              paramInt2 = this.pos;
              this.pos = paramInt2 + 1;
              paramArrayOfbyte[paramInt2] = 61;
              paramArrayOfbyte = this.buffer;
              paramInt2 = this.pos;
              this.pos = paramInt2 + 1;
              paramArrayOfbyte[paramInt2] = 61;
              paramArrayOfbyte = this.buffer;
              paramInt2 = this.pos;
              this.pos = paramInt2 + 1;
              paramArrayOfbyte[paramInt2] = 61;
            case 4:
              break;
          } 
          paramArrayOfbyte = this.buffer;
          paramInt2 = this.pos;
          this.pos = paramInt2 + 1;
          paramArrayOfbyte[paramInt2] = this.encodeTable[(int)(this.bitWorkArea >> 27L) & 0x1F];
          paramArrayOfbyte = this.buffer;
          paramInt2 = this.pos;
          this.pos = paramInt2 + 1;
          paramArrayOfbyte[paramInt2] = this.encodeTable[(int)(this.bitWorkArea >> 22L) & 0x1F];
          paramArrayOfbyte = this.buffer;
          paramInt2 = this.pos;
          this.pos = paramInt2 + 1;
          paramArrayOfbyte[paramInt2] = this.encodeTable[(int)(this.bitWorkArea >> 17L) & 0x1F];
          paramArrayOfbyte = this.buffer;
          paramInt2 = this.pos;
          this.pos = paramInt2 + 1;
          paramArrayOfbyte[paramInt2] = this.encodeTable[(int)(this.bitWorkArea >> 12L) & 0x1F];
          paramArrayOfbyte = this.buffer;
          paramInt2 = this.pos;
          this.pos = paramInt2 + 1;
          paramArrayOfbyte[paramInt2] = this.encodeTable[(int)(this.bitWorkArea >> 7L) & 0x1F];
          paramArrayOfbyte = this.buffer;
          paramInt2 = this.pos;
          this.pos = paramInt2 + 1;
          paramArrayOfbyte[paramInt2] = this.encodeTable[(int)(this.bitWorkArea >> 2L) & 0x1F];
          paramArrayOfbyte = this.buffer;
          paramInt2 = this.pos;
          this.pos = paramInt2 + 1;
          paramArrayOfbyte[paramInt2] = this.encodeTable[(int)(this.bitWorkArea << 3L) & 0x1F];
          paramArrayOfbyte = this.buffer;
          paramInt2 = this.pos;
          this.pos = paramInt2 + 1;
          paramArrayOfbyte[paramInt2] = 61;
        } 
        return;
      } 
      int i = 0;
      while (true) {
        if (i < paramInt2) {
          ensureBufferSize(this.encodeSize);
          this.modulus = (this.modulus + 1) % 5;
          byte b = paramArrayOfbyte[paramInt1];
          int j = b;
          if (b < 0)
            j = b + 256; 
          this.bitWorkArea = (this.bitWorkArea << 8L) + j;
          if (this.modulus == 0) {
            byte[] arrayOfByte = this.buffer;
            j = this.pos;
            this.pos = j + 1;
            arrayOfByte[j] = this.encodeTable[(int)(this.bitWorkArea >> 35L) & 0x1F];
            arrayOfByte = this.buffer;
            j = this.pos;
            this.pos = j + 1;
            arrayOfByte[j] = this.encodeTable[(int)(this.bitWorkArea >> 30L) & 0x1F];
            arrayOfByte = this.buffer;
            j = this.pos;
            this.pos = j + 1;
            arrayOfByte[j] = this.encodeTable[(int)(this.bitWorkArea >> 25L) & 0x1F];
            arrayOfByte = this.buffer;
            j = this.pos;
            this.pos = j + 1;
            arrayOfByte[j] = this.encodeTable[(int)(this.bitWorkArea >> 20L) & 0x1F];
            arrayOfByte = this.buffer;
            j = this.pos;
            this.pos = j + 1;
            arrayOfByte[j] = this.encodeTable[(int)(this.bitWorkArea >> 15L) & 0x1F];
            arrayOfByte = this.buffer;
            j = this.pos;
            this.pos = j + 1;
            arrayOfByte[j] = this.encodeTable[(int)(this.bitWorkArea >> 10L) & 0x1F];
            arrayOfByte = this.buffer;
            j = this.pos;
            this.pos = j + 1;
            arrayOfByte[j] = this.encodeTable[(int)(this.bitWorkArea >> 5L) & 0x1F];
            arrayOfByte = this.buffer;
            j = this.pos;
            this.pos = j + 1;
            arrayOfByte[j] = this.encodeTable[(int)this.bitWorkArea & 0x1F];
            this.currentLinePos += 8;
            if (this.lineLength > 0 && this.lineLength <= this.currentLinePos) {
              System.arraycopy(this.lineSeparator, 0, this.buffer, this.pos, this.lineSeparator.length);
              this.pos += this.lineSeparator.length;
              this.currentLinePos = 0;
            } 
          } 
          i++;
          paramInt1++;
          continue;
        } 
        return;
      } 
    } 
  }
  
  public boolean isInAlphabet(byte paramByte) {
    return (paramByte >= 0 && paramByte < this.decodeTable.length && this.decodeTable[paramByte] != -1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\codec\binary\Base32.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */