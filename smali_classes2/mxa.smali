.class public Lmxa;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;FFLjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/16 v7, 0x3e8

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 104
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 105
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 110
    if-le v3, v7, :cond_0

    .line 112
    int-to-float v0, v4

    int-to-float v2, v3

    int-to-float v5, v7

    div-float/2addr v2, v5

    div-float/2addr v0, v2

    .line 113
    int-to-float v2, v7

    .line 114
    int-to-float v5, v3

    div-float/2addr v2, v5

    .line 115
    int-to-float v5, v4

    div-float/2addr v0, v5

    .line 126
    :goto_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 127
    invoke-virtual {v5, v2, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object v0, p0

    move v2, v1

    .line 131
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 134
    return-object v0

    .line 116
    :cond_0
    const-string v0, "_thumb"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "_220"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    int-to-float v0, v3

    .line 118
    int-to-float v5, v4

    .line 119
    int-to-float v2, v3

    div-float v2, v0, v2

    .line 120
    int-to-float v0, v4

    div-float v0, v5, v0

    goto :goto_0

    .line 122
    :cond_1
    int-to-float v0, v3

    div-float v2, p1, v0

    .line 123
    int-to-float v0, v4

    div-float v0, p2, v0

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 187
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 188
    const/16 v1, 0x320

    const/16 v2, 0x258

    invoke-static {p0, v1, v2, v0}, Lmxa;->a(Ljava/io/File;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 190
    return-object v0
.end method

.method public static a(Ljava/io/File;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    .line 138
    const/4 v7, 0x0

    .line 140
    :try_start_0
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 141
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 144
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 146
    new-instance v0, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 147
    const-string v1, "Orientation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    int-to-float v0, p1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 151
    int-to-float v1, p2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 153
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 155
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 157
    :try_start_1
    invoke-static {p0, v1}, Lmxa;->a(Ljava/io/File;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    .line 160
    :cond_0
    :try_start_2
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 162
    int-to-float v0, p2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 163
    int-to-float v0, p1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 170
    :goto_1
    invoke-virtual {v5, v1, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 171
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 167
    :cond_1
    int-to-float v0, p1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 168
    int-to-float v0, p2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    goto :goto_1

    .line 174
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    .line 175
    :goto_2
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    .line 178
    :goto_3
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    .line 181
    :goto_4
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    :catch_3
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_4

    .line 177
    :catch_4
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_3

    .line 174
    :catch_5
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_2
.end method

.method private static a(Ljava/io/File;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 194
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 196
    new-instance v0, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 197
    const-string v2, "Orientation"

    invoke-virtual {v0, v2, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 200
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 218
    :goto_0
    if-nez v0, :cond_0

    .line 228
    :goto_1
    return-object p1

    .line 202
    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    move v0, v6

    .line 204
    goto :goto_0

    .line 206
    :pswitch_2
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    move v0, v6

    .line 208
    goto :goto_0

    .line 210
    :pswitch_3
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    move v0, v6

    .line 212
    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 225
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, v0

    .line 228
    goto :goto_1

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 47
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 50
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 51
    const/16 v2, 0x8

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 52
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 55
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 56
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 57
    sget-object v4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    iput-object v4, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 60
    if-le v2, p2, :cond_0

    .line 62
    int-to-float v0, v2

    int-to-float v2, p2

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 64
    :cond_0
    div-int v2, v3, v0

    .line 66
    if-le v2, p1, :cond_1

    .line 69
    int-to-float v0, v3

    int-to-float v2, p1

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 72
    :cond_1
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    const-string v2, "ERROR DECODE BITMAP"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 98
    sget-object v0, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    .line 99
    const-string v1, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 100
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 3

    .prologue
    .line 85
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 86
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 87
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 88
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    const-string v1, "ERROR COMPACTAR BITMAP"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)Z
    .locals 5

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    new-instance v0, Landroid/graphics/BitmapFactory;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory;-><init>()V

    .line 35
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 36
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 37
    const/high16 v2, 0x438c0000    # 280.0f

    const/high16 v3, 0x43520000    # 210.0f

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lmxa;->a(Landroid/graphics/Bitmap;FFLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 38
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 39
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 40
    const/4 v0, 0x1

    .line 42
    :cond_1
    return v0
.end method
