.class public Lmhj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "dd/MM/yyyy"

.field public static final b:Ljava/lang/String; = "print.jpg"

.field private static final c:Ljava/lang/String; = "##,###,###,##0.00"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/lang/String;)Ljava/lang/Double;
    .locals 1

    .prologue
    .line 1323
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1327
    :goto_0
    return-object v0

    .line 1324
    :catch_0
    move-exception v0

    .line 1325
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1327
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static B(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1332
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1336
    :goto_0
    return-object v0

    .line 1333
    :catch_0
    move-exception v0

    .line 1334
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1336
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static C(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 1341
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1345
    :goto_0
    return-object v0

    .line 1342
    :catch_0
    move-exception v0

    .line 1343
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1345
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static D(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 1426
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 1427
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1428
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static E(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1433
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1437
    :goto_0
    return v0

    .line 1434
    :catch_0
    move-exception v0

    .line 1435
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1437
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static F(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1442
    :try_start_0
    const-string v0, "ISO-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1443
    invoke-static {v1}, Lmhj;->b([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1450
    :goto_0
    return-object p0

    .line 1445
    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    goto :goto_0

    .line 1446
    :catch_0
    move-exception v0

    .line 1449
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static G(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1548
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1549
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1550
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1555
    :goto_0
    return-object v0

    .line 1551
    :catch_0
    move-exception v0

    .line 1552
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1555
    const-string v0, "0"

    goto :goto_0
.end method

.method public static H(Ljava/lang/String;)Lkqn;
    .locals 6

    .prologue
    .line 1559
    const/4 v1, 0x0

    .line 1561
    invoke-static {}, Lkqn;->values()[Lkqn;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 1562
    invoke-virtual {v0}, Lkqn;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1561
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 1566
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public static I(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1570
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 1572
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    move v2, v3

    .line 1577
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1579
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1582
    const/16 v7, 0x2e

    if-eq v4, v7, :cond_0

    const/16 v7, 0x3f

    if-eq v4, v7, :cond_0

    const/16 v7, 0x21

    if-eq v4, v7, :cond_0

    const/16 v7, 0x3b

    if-ne v4, v7, :cond_2

    :cond_0
    move v2, v3

    .line 1594
    :cond_1
    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1577
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1586
    :cond_2
    if-eqz v2, :cond_1

    invoke-static {v4}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1588
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    move v4, v2

    move v2, v1

    .line 1590
    goto :goto_1

    .line 1597
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static J(Ljava/lang/String;)I
    .locals 5

    .prologue
    const v3, 0x7f090301

    const v1, 0x7f0902fe

    const v2, 0x7f0902fa

    .line 1608
    const/4 v0, -0x1

    .line 1610
    invoke-static {p0}, Lmgt;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1611
    const v0, 0x7f0902fb

    .line 1655
    :cond_0
    :goto_0
    return v0

    .line 1614
    :cond_1
    invoke-static {}, Lmzr;->d()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1645
    :pswitch_0
    invoke-static {p0}, Lmgt;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1646
    const v0, 0x7f0902fc

    goto :goto_0

    .line 1616
    :pswitch_1
    invoke-static {p0}, Lmgt;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1617
    const v0, 0x7f0902fd

    goto :goto_0

    .line 1618
    :cond_2
    invoke-static {p0}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1619
    const v0, 0x7f0902f9

    goto :goto_0

    .line 1620
    :cond_3
    invoke-static {p0}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1621
    const v0, 0x7f090300

    goto :goto_0

    .line 1626
    :pswitch_2
    invoke-static {p0}, Lmgt;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v1

    .line 1627
    goto :goto_0

    .line 1628
    :cond_4
    invoke-static {p0}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v0, v2

    .line 1629
    goto :goto_0

    .line 1630
    :cond_5
    invoke-static {p0}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v3

    .line 1631
    goto :goto_0

    .line 1635
    :pswitch_3
    invoke-static {p0}, Lmgt;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v1

    .line 1636
    goto :goto_0

    .line 1637
    :cond_6
    invoke-static {p0}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v0, v2

    .line 1638
    goto :goto_0

    .line 1639
    :cond_7
    invoke-static {p0}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v3

    .line 1640
    goto :goto_0

    .line 1647
    :cond_8
    invoke-static {p0}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1648
    const v0, 0x7f0902f8

    goto :goto_0

    .line 1649
    :cond_9
    invoke-static {p0}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1650
    const v0, 0x7f0902ff

    goto :goto_0

    .line 1614
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;F)F
    .locals 1

    .prologue
    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 280
    div-float v0, p1, v0

    return v0
.end method

.method public static a(ILandroid/content/Context;)I
    .locals 4

    .prologue
    .line 1506
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1507
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1508
    int-to-float v1, p0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static a(Ljava/util/Date;Ljava/util/Date;)I
    .locals 6

    .prologue
    .line 837
    invoke-virtual {p0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    const/4 v0, 0x0

    .line 846
    :goto_0
    return v0

    .line 841
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 842
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 843
    const-wide/32 v4, 0x5265c00

    .line 844
    sub-long v0, v2, v0

    div-long/2addr v0, v4

    .line 846
    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Lgrs;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 1502
    invoke-static {p0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1378
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1379
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1380
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;FII)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1386
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1387
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1388
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1391
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 1393
    div-int/lit8 v2, p2, 0x2

    div-int/lit8 v3, p3, 0x2

    sub-int/2addr v2, v3

    invoke-static {v0, v2, v1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1402
    :goto_0
    return-object v0

    :cond_0
    div-int/lit8 v2, p2, 0x2

    div-int/lit8 v3, p3, 0x2

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 707
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lgrs;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 14

    .prologue
    const-wide v12, 0x41324f8000000000L    # 1200000.0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1155
    .line 1158
    :try_start_0
    invoke-virtual {p0}, Lgrs;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 1161
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1162
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1163
    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1164
    if-eqz v0, :cond_0

    .line 1165
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    move v0, v2

    .line 1170
    :goto_0
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v4, v5

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    int-to-double v8, v0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    mul-double/2addr v4, v6

    cmpl-double v4, v4, v12

    if-lez v4, :cond_1

    .line 1172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1177
    :cond_1
    invoke-virtual {p0}, Lgrs;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 1178
    if-le v0, v2, :cond_3

    .line 1179
    add-int/lit8 v0, v0, -0x1

    .line 1182
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1183
    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1184
    const/4 v0, 0x0

    invoke-static {v3, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1187
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1188
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 1191
    int-to-double v6, v4

    int-to-double v8, v0

    div-double/2addr v6, v8

    div-double v6, v12, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 1193
    int-to-double v8, v0

    div-double v8, v6, v8

    int-to-double v4, v4

    mul-double/2addr v4, v8

    .line 1195
    double-to-int v0, v4

    double-to-int v4, v6

    const/4 v5, 0x1

    invoke-static {v2, v0, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1197
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1200
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1204
    :goto_1
    if-eqz v3, :cond_2

    .line 1205
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1212
    :cond_2
    :goto_2
    return-object v0

    .line 1202
    :cond_3
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 1210
    :catch_0
    move-exception v0

    .line 1211
    const-string v2, ""

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 1212
    goto :goto_2
.end method

.method public static a(Lgrs;Landroid/net/Uri;Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 1350
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1351
    const-string v1, "Orientation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 1353
    packed-switch v0, :pswitch_data_0

    .line 1363
    :pswitch_0
    invoke-static {p0, p1}, Lmhj;->a(Lgrs;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1368
    :goto_0
    return-object v0

    .line 1355
    :pswitch_1
    invoke-static {p0, p1}, Lmhj;->a(Lgrs;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-static {v0, v1}, Lmhj;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 1357
    :pswitch_2
    invoke-static {p0, p1}, Lmhj;->a(Lgrs;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/high16 v1, 0x43340000    # 180.0f

    invoke-static {v0, v1}, Lmhj;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 1359
    :pswitch_3
    invoke-static {p0, p1}, Lmhj;->a(Lgrs;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/high16 v1, 0x43870000    # 270.0f

    invoke-static {v0, v1}, Lmhj;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 1361
    :pswitch_4
    invoke-static {p0, p1}, Lmhj;->a(Lgrs;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1365
    :catch_0
    move-exception v0

    .line 1366
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1368
    invoke-static {p0, p1}, Lmhj;->a(Lgrs;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 1353
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;I)Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 1528
    packed-switch p1, :pswitch_data_0

    .line 1542
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/opensans_regular.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1530
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/opensans_bold.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 1533
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/opensans_italic.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 1536
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/opensans_bolditalic.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 1539
    :pswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/opensans_light.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 1528
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;
    .locals 3

    .prologue
    .line 619
    invoke-static {p0, p1, p2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/support/design/widget/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 621
    if-eqz p0, :cond_0

    .line 622
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object v1

    .line 623
    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 624
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar;->setActionTextColor(I)Landroid/support/design/widget/Snackbar;

    .line 625
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 627
    :cond_0
    return-object v0
.end method

.method public static varargs a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;)Landroid/text/Spannable;
    .locals 8
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    const/16 v7, 0x21

    .line 1024
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1026
    array-length v2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p3, v0

    .line 1027
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1028
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1029
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v4

    .line 1033
    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1, v5, v4, v3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1034
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_0

    .line 1035
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v5, v4, v3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1026
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1040
    :cond_1
    return-object v1
.end method

.method public static varargs a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;)Landroid/text/Spannable;
    .locals 9
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 1006
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1008
    array-length v3, p4

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, p4, v0

    .line 1009
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1010
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1011
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v5

    .line 1012
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-static {v6, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    .line 1013
    new-instance v7, Lcom/santander/app/seguros/utils/CustomTypefaceSpan;

    const-string v8, ""

    invoke-direct {v7, v8, v6}, Lcom/santander/app/seguros/utils/CustomTypefaceSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    invoke-virtual {v2, v7, v5, v4, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1014
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_0

    .line 1015
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v7, 0x21

    invoke-virtual {v2, v6, v5, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1008
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1020
    :cond_1
    return-object v2
.end method

.method public static a(Landroid/view/View;Landroid/content/Context;)Ljava/io/File;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1045
    .line 1052
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1053
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1054
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1055
    invoke-static {p1}, Lmhj;->b(Landroid/content/Context;)V

    .line 1056
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "print.jpg"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1058
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1059
    const/16 v4, 0x64

    .line 1060
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v5, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1061
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 1062
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1071
    :goto_0
    return-object v0

    .line 1064
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 1066
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1067
    if-eqz v2, :cond_0

    .line 1068
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    move-object v0, v1

    .line 1071
    goto :goto_0

    .line 1064
    :catch_1
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_1
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    const-string v0, "-"

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 112
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 114
    new-array v1, v1, [B

    .line 115
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 116
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 117
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-object v0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 120
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 698
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 703
    :goto_0
    return-object v0

    .line 699
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 700
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 701
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 703
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lgrs;Lis;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1497
    const-string v1, "ERROR_SERVICE"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 1497
    :cond_0
    const-string v0, "0"

    goto :goto_0

    .line 1498
    :cond_1
    invoke-virtual {p0}, Lgrs;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090362

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Ljava/lang/Double;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 196
    new-instance v0, Ljava/util/Locale;

    const-string v1, "pt"

    const-string v2, "BR"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lmhj;->a(Ljava/lang/Double;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Double;Ljava/util/Locale;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 157
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v0

    .line 158
    if-nez p0, :cond_0

    .line 159
    invoke-static {}, Lmhj;->a()Ljava/lang/String;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    .line 162
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    neg-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1, p1}, Lmhj;->b(Ljava/lang/Double;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 165
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lmhj;->b(Ljava/lang/Double;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Float;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 188
    new-instance v0, Ljava/util/Locale;

    const-string v1, "pt"

    const-string v2, "BR"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lmhj;->a(Ljava/lang/Float;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Float;Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 171
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v0

    .line 172
    if-nez p0, :cond_0

    .line 173
    invoke-static {}, Lmhj;->a()Ljava/lang/String;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    .line 176
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    neg-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1, p1}, Lmhj;->b(Ljava/lang/Float;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 179
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lmhj;->b(Ljava/lang/Float;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 201
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    const-string v0, "R$"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lmhj;->a(Ljava/lang/Double;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 208
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;CI)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1288
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int v0, p2, v0

    .line 1289
    :goto_0
    if-lez v0, :cond_0

    .line 1290
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1291
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1294
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1298
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1299
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1300
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v3, p1, v0

    .line 1301
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 1302
    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1303
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 455
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 457
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 458
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 461
    :goto_0
    return-object v0

    .line 460
    :catch_0
    move-exception v0

    .line 461
    const-string v0, ""

    goto :goto_0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 751
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 752
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 753
    const-string v0, "\\s+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v0, v1

    .line 754
    :goto_0
    array-length v2, v4

    if-ge v0, v2, :cond_4

    .line 755
    aget-object v2, v4, v0

    .line 757
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 758
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    :goto_1
    array-length v2, v4

    if-lez v2, :cond_3

    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-ge v0, v2, :cond_0

    .line 764
    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 760
    :cond_1
    invoke-virtual {v2, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_2

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v2, ""

    goto :goto_3

    :cond_3
    move v2, v1

    .line 763
    goto :goto_2

    .line 768
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 770
    :goto_4
    return-object v0

    :cond_5
    const-string v0, ""

    goto :goto_4
.end method

.method public static a(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    const-string v0, "dd/MM/yyyy"

    invoke-static {p0, v0}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 444
    if-eqz p0, :cond_0

    .line 445
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "pt"

    const-string v3, "BR"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 451
    :goto_0
    return-object v0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 451
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1312
    if-eqz p0, :cond_0

    .line 1313
    const/4 v0, 0x2

    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1318
    :goto_0
    return-object v0

    .line 1315
    :catch_0
    move-exception v0

    .line 1316
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 1318
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 941
    const-string v1, ""

    .line 942
    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 943
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 944
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 945
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 942
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 949
    :cond_1
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 4

    .prologue
    .line 862
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 863
    new-instance v0, Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "pt"

    const-string v3, "BR"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 868
    :goto_0
    return-object v0

    .line 864
    :catch_0
    move-exception v0

    .line 865
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 868
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(ILandroid/app/Activity;)V
    .locals 2
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 147
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 148
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 150
    :cond_0
    return-void
.end method

.method public static a(ILjava/lang/String;Landroid/app/Activity;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 368
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    const/4 v1, 0x0

    .line 369
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 370
    invoke-virtual {p2, v0}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 371
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 973
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x7f0b0224

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 974
    const v0, 0x7f04027a

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 975
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 976
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x7f0b021e

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 978
    const v0, 0x7f1002da

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 979
    const v2, 0x7f100d61

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 984
    const-string v3, "Confirmar"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 985
    new-instance v4, Lmhq;

    invoke-direct {v4, v1, p2, p0}, Lmhq;-><init>(Landroid/app/Dialog;Ljava/lang/String;Landroid/app/Activity;)V

    .line 994
    const-string v0, "Cancelar"

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 995
    new-instance v5, Lmhr;

    invoke-direct {v5, v1}, Lmhr;-><init>(Landroid/app/Dialog;)V

    .line 1002
    const-string v2, "Aten\u00e7\u00e3o"

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lmxn;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    .line 1003
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1095
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1096
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1097
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1098
    const-string v1, "image/jpg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1099
    invoke-static {v0, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1100
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 486
    :try_start_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 487
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :goto_0
    return-void

    .line 488
    :catch_0
    move-exception v0

    .line 489
    const-string v1, "AndroidUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occurred trying to hide the keyboard. Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 330
    if-eqz p0, :cond_0

    .line 331
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 332
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 333
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 334
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lmhm;

    invoke-direct {v2, p2}, Lmhm;-><init>(Ljava/lang/Runnable;)V

    .line 335
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 345
    new-instance v1, Lmhn;

    invoke-direct {v1, v0, p0}, Lmhn;-><init>(Landroid/support/v7/app/AlertDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 357
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 359
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 674
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 675
    if-nez v0, :cond_0

    .line 677
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 678
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 680
    :cond_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 681
    const v1, 0x4008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 683
    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    .line 684
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 687
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 688
    return-void
.end method

.method public static a(Landroid/support/design/widget/TextInputEditText;)V
    .locals 2

    .prologue
    .line 637
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputEditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 639
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 644
    :goto_0
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputEditText;->setSelection(I)V

    .line 645
    return-void

    .line 642
    :cond_0
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1250
    invoke-static {p0, p1}, Lmhj;->f(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1263
    return-void
.end method

.method public static a(Landroid/support/v7/app/AppCompatActivity;Ljava/io/File;)V
    .locals 3

    .prologue
    .line 1412
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1413
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/pdf"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1414
    const v1, 0x44008000    # 514.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1415
    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    .line 1416
    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmhj;->a(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    .line 375
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 378
    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    .line 379
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 381
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 382
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 383
    new-instance v1, Lmho;

    invoke-direct {v1, p0, v0}, Lmho;-><init>(Landroid/view/View;I)V

    .line 399
    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x64

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 400
    if-eqz p1, :cond_0

    .line 401
    invoke-virtual {v1, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 403
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 404
    return-void
.end method

.method public static a(Lgrs;Ljava/io/File;)V
    .locals 3

    .prologue
    .line 1419
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1420
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/pdf"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1421
    const v1, 0x44008000    # 514.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1422
    invoke-virtual {p0, v0}, Lgrs;->startActivity(Landroid/content/Intent;)V

    .line 1423
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1601
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1602
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1603
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1604
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1605
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 805
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 806
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 807
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 809
    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 813
    :try_start_0
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 814
    const-string v6, "checkOpNoThrow"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 815
    const-string v7, "OP_POST_NOTIFICATION"

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 816
    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 817
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v8

    const/4 v1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v1

    const/4 v1, 0x2

    aput-object v4, v7, v1

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 831
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 817
    goto :goto_0

    .line 819
    :catch_0
    move-exception v0

    .line 820
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_1
    move v0, v3

    .line 831
    goto :goto_0

    .line 821
    :catch_1
    move-exception v0

    .line 822
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 823
    :catch_2
    move-exception v0

    .line 824
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 825
    :catch_3
    move-exception v0

    .line 826
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 827
    :catch_4
    move-exception v0

    .line 828
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Ljava/io/File;)[B
    .locals 1

    .prologue
    .line 931
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->readFileToByteArray(Ljava/io/File;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 937
    :goto_0
    return-object v0

    .line 933
    :catch_0
    move-exception v0

    .line 934
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 937
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;F)F
    .locals 1

    .prologue
    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, p1, v0

    return v0
.end method

.method public static b(Ljava/io/File;)F
    .locals 5

    .prologue
    const/high16 v4, 0x44800000    # 1024.0f

    .line 1104
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1106
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-float v0, v0

    .line 1108
    div-float/2addr v0, v4

    .line 1110
    div-float/2addr v0, v4

    .line 1114
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 969
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 662
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Double;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 225
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    const-string v2, "US"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lmhj;->a(Ljava/lang/Double;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Double;Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 265
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##,###,###,##0.00"

    new-instance v2, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v2, p1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v0, v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 266
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 267
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setParseBigDecimal(Z)V

    .line 268
    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Float;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 217
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    const-string v2, "US"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lmhj;->a(Ljava/lang/Float;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Float;Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 272
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##,###,###,##0.00"

    new-instance v2, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v2, p1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v0, v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 273
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 274
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setParseBigDecimal(Z)V

    .line 275
    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 237
    const-string v0, "R$"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    new-instance v1, Ljava/util/Locale;

    const-string v2, "pt"

    const-string v3, "BR"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lmhj;->b(Ljava/lang/Double;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 1075
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "print.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1076
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1077
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1078
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "print.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1080
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 603
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 604
    return-void
.end method

.method public static b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmhj;->b(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    .line 408
    return-void
.end method

.method public static b(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4

    .prologue
    .line 411
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 413
    new-instance v1, Lmhp;

    invoke-direct {v1, p0, v0}, Lmhp;-><init>(Landroid/view/View;I)V

    .line 431
    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x64

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 432
    if-eqz p1, :cond_0

    .line 433
    invoke-virtual {v1, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 435
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 436
    return-void
.end method

.method public static b([B)Z
    .locals 7

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1457
    .line 1459
    array-length v0, p0

    if-lt v0, v3, :cond_9

    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v4, 0xef

    if-ne v0, v4, :cond_9

    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v4, 0xbb

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_0
    const/4 v4, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xbf

    if-ne v4, v5, :cond_2

    move v4, v1

    :goto_1
    and-int/2addr v0, v4

    if-eqz v0, :cond_9

    move v0, v3

    .line 1465
    :goto_2
    array-length v4, p0

    :goto_3
    if-ge v0, v4, :cond_8

    .line 1466
    aget-byte v3, p0, v0

    .line 1467
    and-int/lit16 v5, v3, 0x80

    if-nez v5, :cond_3

    .line 1465
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1
    move v0, v2

    .line 1459
    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_1

    .line 1472
    :cond_3
    and-int/lit16 v5, v3, 0xe0

    const/16 v6, 0xc0

    if-ne v5, v6, :cond_6

    .line 1473
    add-int/lit8 v3, v0, 0x1

    .line 1483
    :cond_4
    :goto_4
    if-ge v0, v3, :cond_0

    .line 1484
    add-int/lit8 v0, v0, 0x1

    .line 1485
    aget-byte v5, p0, v0

    .line 1486
    and-int/lit16 v5, v5, 0xc0

    const/16 v6, 0x80

    if-eq v5, v6, :cond_4

    .line 1492
    :cond_5
    :goto_5
    return v2

    .line 1474
    :cond_6
    and-int/lit16 v5, v3, 0xf0

    const/16 v6, 0xe0

    if-ne v5, v6, :cond_7

    .line 1475
    add-int/lit8 v3, v0, 0x2

    goto :goto_4

    .line 1476
    :cond_7
    and-int/lit16 v3, v3, 0xf8

    const/16 v5, 0xf0

    if-ne v3, v5, :cond_5

    .line 1477
    add-int/lit8 v3, v0, 0x3

    goto :goto_4

    :cond_8
    move v2, v1

    .line 1492
    goto :goto_5

    :cond_9
    move v0, v2

    goto :goto_2
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 128
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 130
    new-array v0, v0, [B

    .line 131
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    .line 132
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-object v0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 136
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;F)F
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    return v0
.end method

.method public static c(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 1084
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1085
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1086
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    :goto_0
    return-object v0

    .line 1088
    :catch_0
    move-exception v0

    .line 1089
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1091
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Landroid/graphics/ColorMatrixColorFilter;
    .locals 2

    .prologue
    .line 852
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 853
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 854
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 856
    return-object v1
.end method

.method public static c(Ljava/lang/Double;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 245
    new-instance v0, Ljava/util/Locale;

    const-string v1, "pt"

    const-string v2, "BR"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lmhj;->b(Ljava/lang/Double;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/Float;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 233
    new-instance v0, Ljava/util/Locale;

    const-string v1, "pt"

    const-string v2, "BR"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lmhj;->b(Ljava/lang/Float;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 1679
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1680
    const-string v1, "tipo"

    sget-object v2, Lnat;->USUARIO_CONSULTIVO:Lnat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1681
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1682
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 296
    if-eqz p0, :cond_0

    .line 297
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 298
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 299
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 300
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lmhk;

    invoke-direct {v2}, Lmhk;-><init>()V

    .line 301
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 310
    new-instance v1, Lmhl;

    invoke-direct {v1, v0, p0}, Lmhl;-><init>(Landroid/support/v7/app/AlertDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 321
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 323
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 467
    const/4 v0, 0x0

    .line 469
    const-string v1, "^[\\w\\.-]+@([\\w\\-]+\\.)+[A-Z]{2,4}$"

    .line 472
    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 473
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 474
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    const/4 v0, 0x1

    .line 477
    :cond_0
    return v0
.end method

.method public static c(Landroid/graphics/Bitmap;)[B
    .locals 3

    .prologue
    .line 1221
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1222
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x32

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1223
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/io/File;)[B
    .locals 1

    .prologue
    .line 1228
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->readFileToByteArray(Ljava/io/File;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1232
    :goto_0
    return-object v0

    .line 1229
    :catch_0
    move-exception v0

    .line 1230
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1232
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1236
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1238
    :try_start_0
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1240
    :goto_0
    return-object v0

    .line 1239
    :catch_0
    move-exception v0

    .line 1240
    const-string v0, ""

    goto :goto_0
.end method

.method public static d(Ljava/lang/Double;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 261
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    const-string v2, "US"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lmhj;->b(Ljava/lang/Double;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/Float;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 253
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    const-string v2, "US"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lmhj;->b(Ljava/lang/Float;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/util/Locale;
    .locals 3

    .prologue
    .line 873
    new-instance v0, Ljava/util/Locale;

    const-string v1, "pt"

    const-string v2, "BR"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static d(Landroid/view/View;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1512
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1513
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 1514
    invoke-virtual {p0, v0}, Landroid/view/View;->setActivated(Z)V

    .line 1515
    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 607
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 610
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :goto_0
    return v0

    .line 612
    :catch_0
    move-exception v0

    .line 613
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/16 v1, 0x30

    const/16 v8, 0x9

    const/16 v4, 0xb

    const/16 v7, 0xa

    const/4 v2, 0x0

    .line 498
    const-string v0, "00000000000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "11111111111"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "22222222222"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "33333333333"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "44444444444"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "55555555555"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "66666666666"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "77777777777"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "88888888888"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "99999999999"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 527
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v0, v7

    move v3, v2

    move v5, v2

    .line 505
    :goto_1
    if-ge v3, v8, :cond_2

    .line 506
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    .line 507
    mul-int/2addr v6, v0

    add-int/2addr v5, v6

    .line 508
    add-int/lit8 v0, v0, -0x1

    .line 505
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 510
    :cond_2
    rem-int/lit8 v0, v5, 0xb

    rsub-int/lit8 v0, v0, 0xb

    .line 511
    if-eq v0, v7, :cond_3

    if-ne v0, v4, :cond_4

    :cond_3
    move v0, v1

    :goto_2
    move v3, v4

    move v5, v2

    move v6, v2

    .line 516
    :goto_3
    if-ge v5, v7, :cond_5

    .line 517
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, -0x30

    .line 518
    mul-int/2addr v8, v3

    add-int/2addr v6, v8

    .line 519
    add-int/lit8 v3, v3, -0x1

    .line 516
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 513
    :cond_4
    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    goto :goto_2

    .line 521
    :cond_5
    rem-int/lit8 v3, v6, 0xb

    rsub-int/lit8 v3, v3, 0xb

    .line 522
    if-eq v3, v7, :cond_6

    if-ne v3, v4, :cond_7

    .line 525
    :cond_6
    :goto_4
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v0, v3, :cond_8

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/util/InputMismatchException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v1, v0, :cond_8

    const/4 v0, 0x1

    :goto_5
    move v2, v0

    goto :goto_0

    .line 524
    :cond_7
    add-int/lit8 v1, v3, 0x30

    int-to-char v1, v1

    goto :goto_4

    :cond_8
    move v0, v2

    .line 525
    goto :goto_5

    .line 526
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static e(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1372
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1373
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/Float;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 712
    if-eqz p0, :cond_0

    .line 713
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Float;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 720
    :goto_0
    return-object v0

    .line 717
    :cond_0
    const-string v0, "0%"

    goto :goto_0

    .line 720
    :cond_1
    new-instance v0, Ljava/util/Locale;

    const-string v1, "pt"

    const-string v2, "BR"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "%.2f%%"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 536
    const-string v0, "\\."

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 631
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 632
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 633
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 634
    return-void
.end method

.method public static e(Landroid/view/View;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1518
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1519
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 1520
    invoke-virtual {p0, v0}, Landroid/view/View;->setActivated(Z)V

    .line 1521
    return-void
.end method

.method public static e()Z
    .locals 9

    .prologue
    const/16 v8, 0xe

    const/16 v7, 0xd

    const/16 v6, 0xc

    const/16 v5, 0xb

    const/4 v0, 0x0

    .line 1659
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1661
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1662
    const/16 v3, 0x13

    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 1663
    const/16 v3, 0x1e

    invoke-virtual {v2, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 1664
    invoke-virtual {v2, v7, v0}, Ljava/util/Calendar;->set(II)V

    .line 1665
    invoke-virtual {v2, v8, v0}, Ljava/util/Calendar;->set(II)V

    .line 1666
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 1668
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1669
    const/4 v4, 0x7

    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 1670
    invoke-virtual {v3, v6, v0}, Ljava/util/Calendar;->set(II)V

    .line 1671
    invoke-virtual {v3, v7, v0}, Ljava/util/Calendar;->set(II)V

    .line 1672
    invoke-virtual {v3, v8, v0}, Ljava/util/Calendar;->set(II)V

    .line 1673
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 1675
    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private f(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/16 v5, 0x46

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 1122
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1123
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1124
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1131
    :goto_0
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    if-lt v2, v5, :cond_0

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    if-lt v2, v5, :cond_0

    .line 1133
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1137
    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1138
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1139
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1145
    :goto_1
    return-object v4

    .line 1142
    :catch_0
    move-exception v0

    .line 1143
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 544
    const-string v0, "\\("

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\)"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 794
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 795
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 796
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    const/4 v0, 0x1

    .line 799
    :goto_0
    return v0

    .line 798
    :catch_0
    move-exception v0

    .line 799
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 552
    const/4 v1, 0x0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 560
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, " "

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 568
    invoke-static {p0}, Lmhj;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 576
    const-string v0, "."

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static k(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 585
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v4, v0, [I

    move v0, v1

    .line 586
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_0

    .line 587
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v0

    .line 586
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    move v2, v1

    .line 590
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_2

    .line 591
    rem-int/lit8 v5, v0, 0x2

    if-ne v5, v3, :cond_1

    .line 592
    aget v5, v4, v0

    mul-int/lit8 v5, v5, 0x2

    aput v5, v4, v0

    .line 593
    aget v5, v4, v0

    const/16 v6, 0x9

    if-le v5, v6, :cond_1

    .line 594
    aget v5, v4, v0

    add-int/lit8 v5, v5, -0x9

    aput v5, v4, v0

    .line 597
    :cond_1
    aget v5, v4, v0

    add-int/2addr v2, v5

    .line 590
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 599
    :cond_2
    rem-int/lit8 v0, v2, 0xa

    if-nez v0, :cond_3

    move v1, v3

    :cond_3
    return v1
.end method

.method public static l(Ljava/lang/String;)Lejm;
    .locals 3

    .prologue
    .line 648
    new-instance v0, Leju;

    invoke-direct {v0}, Leju;-><init>()V

    .line 649
    const-class v1, Ljava/util/Date;

    new-instance v2, Lmgj;

    invoke-direct {v2, p0}, Lmgj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Leju;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Leju;

    .line 650
    invoke-virtual {v0}, Leju;->j()Lejm;

    move-result-object v0

    return-object v0
.end method

.method public static m(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 654
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 655
    sget-object v0, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^\\p{ASCII}]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 658
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static n(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 666
    const-string v0, "(\\d{3})(\\d{3})(\\d{3})(\\d{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 667
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 668
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 669
    const-string v1, "$1.$2.$3-$4"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 670
    :cond_0
    return-object p0
.end method

.method public static o(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 691
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 694
    :goto_0
    return-object v0

    .line 692
    :cond_0
    const-string v0, "^data:image/[^;]*;base64,?"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 693
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 694
    array-length v1, v0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static p(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 724
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 725
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 726
    const-string v0, "\\s+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v0, v1

    .line 727
    :goto_0
    array-length v2, v4

    if-ge v0, v2, :cond_3

    .line 728
    aget-object v2, v4, v0

    .line 729
    invoke-virtual {v2, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    array-length v2, v4

    if-lez v2, :cond_2

    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-ge v0, v2, :cond_0

    .line 731
    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 729
    :cond_1
    const-string v2, ""

    goto :goto_1

    :cond_2
    move v2, v1

    .line 730
    goto :goto_2

    .line 735
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 737
    :goto_3
    return-object v0

    :cond_4
    const-string v0, ""

    goto :goto_3
.end method

.method public static q(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 742
    return-object v0
.end method

.method public static r(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 747
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SCP"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "RD"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "AP"

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lmhj;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static s(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 774
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 789
    :goto_0
    return-object v0

    .line 775
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 776
    const-string v0, "\\s+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v0, v1

    .line 777
    :goto_1
    array-length v2, v4

    if-ge v0, v2, :cond_6

    .line 778
    aget-object v2, v4, v0

    .line 779
    array-length v5, v4

    if-le v5, v7, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_4

    .line 780
    :cond_1
    invoke-virtual {v2, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_3

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    :goto_3
    array-length v2, v4

    if-lez v2, :cond_5

    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    :goto_4
    if-ge v0, v2, :cond_2

    .line 785
    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 780
    :cond_3
    const-string v2, ""

    goto :goto_2

    .line 782
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    move v2, v1

    .line 784
    goto :goto_4

    .line 789
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static t(Ljava/lang/String;)Ljava/lang/Double;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 877
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 878
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 891
    :goto_0
    return-object v0

    .line 881
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_2

    .line 882
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 884
    :cond_2
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##,###,###,##0.00"

    new-instance v2, Ljava/text/DecimalFormatSymbols;

    invoke-static {}, Lmhj;->d()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v0, v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 886
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 887
    :catch_0
    move-exception v0

    .line 889
    :try_start_1
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 890
    :catch_1
    move-exception v0

    .line 891
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public static u(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 898
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 899
    const-string v0, "."

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 905
    :goto_0
    return-object v0

    .line 901
    :catch_0
    move-exception v0

    .line 902
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 905
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 909
    const/4 v0, 0x0

    .line 910
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 911
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 913
    :try_start_0
    invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v1

    .line 915
    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 925
    :cond_0
    :goto_0
    return-object v0

    .line 918
    :catch_0
    move-exception v1

    .line 919
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 955
    :try_start_0
    invoke-static {p0}, Lmhj;->f(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 956
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 957
    const-string v1, "(%s) %s - %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x7

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x7

    const/16 v5, 0xb

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 965
    :cond_0
    :goto_0
    return-object v0

    .line 958
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 959
    const-string v1, "(%s) %s - %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x6

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x6

    const/16 v5, 0xa

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 962
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p0

    .line 963
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 962
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static x(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1266
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static y(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 1270
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 1277
    :goto_0
    return-object v0

    .line 1271
    :cond_0
    const-string v0, "\\s+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1272
    const-string v1, ""

    .line 1273
    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 1274
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1273
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1277
    :cond_1
    invoke-static {v1}, Lmhj;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static z(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 1307
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method
