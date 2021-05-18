.class Lbav;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbbv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbbv",
        "<",
        "Lbce;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lbav;->a:I

    .line 55
    return-void
.end method

.method synthetic constructor <init>(ILbat;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lbav;-><init>(I)V

    return-void
.end method

.method private a(D[D[D)I
    .locals 11
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
        to = 0xffL
    .end annotation

    .prologue
    const-wide v8, 0x406fe00000000000L    # 255.0

    .line 157
    const/4 v0, 0x1

    move v2, v0

    :goto_0
    array-length v0, p3

    if-ge v2, v0, :cond_1

    .line 158
    add-int/lit8 v0, v2, -0x1

    aget-wide v0, p3, v0

    .line 159
    aget-wide v4, p3, v2

    .line 160
    aget-wide v6, p3, v2

    cmpl-double v3, v6, p1

    if-ltz v3, :cond_0

    .line 161
    sub-double v6, p1, v0

    sub-double v0, v4, v0

    div-double v4, v6, v0

    .line 162
    add-int/lit8 v0, v2, -0x1

    aget-wide v0, p4, v0

    aget-wide v2, p4, v2

    invoke-static/range {v0 .. v5}, Lbex;->a(DDD)D

    move-result-wide v0

    mul-double/2addr v0, v8

    double-to-int v0, v0

    .line 165
    :goto_1
    return v0

    .line 157
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 165
    :cond_1
    array-length v0, p4

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, p4, v0

    mul-double/2addr v0, v8

    double-to-int v0, v0

    goto :goto_1
.end method

.method private a(Lbce;Lorg/json/JSONArray;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 125
    iget v0, p0, Lbav;->a:I

    mul-int/lit8 v0, v0, 0x4

    .line 126
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gt v2, v0, :cond_1

    .line 153
    :cond_0
    return-void

    .line 130
    :cond_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 131
    new-array v3, v2, [D

    .line 132
    new-array v4, v2, [D

    move v2, v0

    move v0, v1

    .line 134
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 135
    rem-int/lit8 v5, v2, 0x2

    if-nez v5, :cond_2

    .line 136
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v6

    aput-wide v6, v3, v0

    .line 134
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v6

    aput-wide v6, v4, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 143
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lbce;->c()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 144
    invoke-virtual {p1}, Lbce;->b()[I

    move-result-object v0

    aget v0, v0, v1

    .line 146
    invoke-virtual {p1}, Lbce;->a()[F

    move-result-object v2

    aget v2, v2, v1

    float-to-double v6, v2

    invoke-direct {p0, v6, v7, v3, v4}, Lbav;->a(D[D[D)I

    move-result v2

    .line 147
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v5

    .line 148
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v6

    .line 149
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 145
    invoke-static {v2, v5, v6, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 151
    invoke-virtual {p1}, Lbce;->b()[I

    move-result-object v2

    aput v0, v2, v1

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method public a(Ljava/lang/Object;F)Lbce;
    .locals 12

    .prologue
    const/4 v0, 0x0

    const-wide v10, 0x406fe00000000000L    # 255.0

    .line 78
    check-cast p1, Lorg/json/JSONArray;

    .line 79
    iget v1, p0, Lbav;->a:I

    new-array v3, v1, [F

    .line 80
    iget v1, p0, Lbav;->a:I

    new-array v4, v1, [I

    .line 81
    new-instance v5, Lbce;

    invoke-direct {v5, v3, v4}, Lbce;-><init>([F[I)V

    .line 84
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    iget v2, p0, Lbav;->a:I

    mul-int/lit8 v2, v2, 0x4

    if-eq v1, v2, :cond_0

    .line 85
    const-string v1, "LOTTIE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected gradient length: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ". Expected "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p0, Lbav;->a:I

    mul-int/lit8 v6, v6, 0x4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ". This may affect the appearance of the gradient. "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "Make sure to save your After Effects file before exporting an animation with "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "gradients."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v1, v0

    move v2, v0

    .line 90
    :goto_0
    iget v6, p0, Lbav;->a:I

    mul-int/lit8 v6, v6, 0x4

    if-ge v0, v6, :cond_1

    .line 91
    div-int/lit8 v6, v0, 0x4

    .line 92
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v8

    .line 93
    rem-int/lit8 v7, v0, 0x4

    packed-switch v7, :pswitch_data_0

    .line 90
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :pswitch_0
    double-to-float v7, v8

    aput v7, v3, v6

    goto :goto_1

    .line 99
    :pswitch_1
    mul-double v6, v8, v10

    double-to-int v2, v6

    .line 100
    goto :goto_1

    .line 102
    :pswitch_2
    mul-double v6, v8, v10

    double-to-int v1, v6

    .line 103
    goto :goto_1

    .line 105
    :pswitch_3
    mul-double/2addr v8, v10

    double-to-int v7, v8

    .line 106
    const/16 v8, 0xff

    invoke-static {v8, v2, v1, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v4, v6

    goto :goto_1

    .line 111
    :cond_1
    invoke-direct {p0, v5, p1}, Lbav;->a(Lbce;Lorg/json/JSONArray;)V

    .line 112
    return-object v5

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public synthetic b(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2}, Lbav;->a(Ljava/lang/Object;F)Lbce;

    move-result-object v0

    return-object v0
.end method
