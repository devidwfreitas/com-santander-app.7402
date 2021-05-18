.class public Lfps;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lfuu;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:I

.field private d:[Ljava/lang/Number;

.field private e:[Ljava/lang/String;

.field private f:[Ljava/util/Date;

.field private g:[Ljava/lang/Number;

.field private h:[Ljava/lang/Number;

.field private i:[Ljava/lang/Number;

.field private j:[Ljava/lang/Number;

.field private k:[Ljava/lang/Number;

.field private l:[Ljava/lang/Number;

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<+",
            "Lfuu;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x5

    const/4 v0, 0x0

    const/4 v8, 0x7

    .line 54
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 40
    const/16 v1, 0xc

    iput v1, p0, Lfps;->c:I

    .line 50
    iput v0, p0, Lfps;->m:I

    .line 51
    const/4 v1, 0x4

    iput v1, p0, Lfps;->n:I

    .line 56
    iput-object p1, p0, Lfps;->b:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lfps;->a:Ljava/util/List;

    .line 59
    new-array v1, v8, [Ljava/lang/Number;

    iput-object v1, p0, Lfps;->d:[Ljava/lang/Number;

    .line 60
    new-array v1, v8, [Ljava/lang/String;

    iput-object v1, p0, Lfps;->e:[Ljava/lang/String;

    .line 61
    new-array v1, v8, [Ljava/util/Date;

    iput-object v1, p0, Lfps;->f:[Ljava/util/Date;

    .line 63
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 64
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 66
    const/4 v1, 0x6

    .line 67
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "MMM"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 68
    :goto_0
    if-ge v0, v8, :cond_0

    .line 69
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 70
    neg-int v4, v1

    invoke-virtual {v2, v9, v4}, Ljava/util/Calendar;->add(II)V

    .line 71
    iget-object v4, p0, Lfps;->d:[Ljava/lang/Number;

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    .line 72
    iget-object v4, p0, Lfps;->e:[Ljava/lang/String;

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 73
    iget-object v4, p0, Lfps;->f:[Ljava/util/Date;

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    aput-object v5, v4, v0

    .line 74
    add-int/lit8 v1, v1, -0x1

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lfuy;)Z
    .locals 12

    .prologue
    const/16 v11, 0xd4

    const/16 v10, 0xd3

    const/high16 v3, 0x43480000    # 200.0f

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 134
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    move v2, v4

    .line 135
    :goto_0
    invoke-virtual {p1}, Lfuy;->y()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 136
    invoke-virtual {p1}, Lfuy;->y()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfve;

    .line 137
    invoke-virtual {v0}, Lfve;->getHistorico()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lfve;->getHistorico()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 138
    invoke-virtual {v0}, Lfve;->getHistorico()Ljava/lang/String;

    move-result-object v5

    const-string v7, "SALDO ANTERIOR"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 139
    :cond_0
    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 143
    :cond_2
    iget-object v0, p0, Lfps;->d:[Ljava/lang/Number;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Number;

    iput-object v0, p0, Lfps;->g:[Ljava/lang/Number;

    .line 144
    iget-object v0, p0, Lfps;->d:[Ljava/lang/Number;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Number;

    iput-object v0, p0, Lfps;->h:[Ljava/lang/Number;

    .line 145
    iget-object v0, p0, Lfps;->d:[Ljava/lang/Number;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Number;

    iput-object v0, p0, Lfps;->i:[Ljava/lang/Number;

    .line 146
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v0, "dd/MM/yyyy"

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move v2, v4

    .line 147
    :goto_1
    iget-object v0, p0, Lfps;->d:[Ljava/lang/Number;

    array-length v0, v0

    if-ge v2, v0, :cond_6

    .line 148
    iget-object v0, p0, Lfps;->i:[Ljava/lang/Number;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v2

    .line 149
    iget-object v0, p0, Lfps;->g:[Ljava/lang/Number;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v2

    .line 150
    iget-object v0, p0, Lfps;->h:[Ljava/lang/Number;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v2

    move v5, v4

    .line 151
    :goto_2
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v5, v0, :cond_5

    .line 154
    invoke-virtual {v6, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfve;

    invoke-virtual {v0}, Lfve;->getData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lfps;->f:[Ljava/util/Date;

    aget-object v0, v0, v2

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfve;

    invoke-virtual {v0}, Lfve;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    invoke-virtual {v6, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfve;

    invoke-virtual {v0}, Lfve;->getValor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v6, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfve;

    invoke-virtual {v0}, Lfve;->getValor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 158
    :try_start_0
    invoke-virtual {v6, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfve;

    invoke-virtual {v0}, Lfve;->getValor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "\\."

    const-string v9, ""

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, ","

    const-string v9, "."

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 159
    iget-object v8, p0, Lfps;->i:[Ljava/lang/Number;

    iget-object v9, p0, Lfps;->i:[Ljava/lang/Number;

    aget-object v9, v9, v2

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    add-float/2addr v9, v0

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v2

    .line 160
    cmpl-float v8, v0, v1

    if-lez v8, :cond_3

    .line 161
    iget-object v8, p0, Lfps;->g:[Ljava/lang/Number;

    iget-object v9, p0, Lfps;->g:[Ljava/lang/Number;

    aget-object v9, v9, v2

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    add-float/2addr v9, v0

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v2

    .line 162
    :cond_3
    cmpg-float v8, v0, v1

    if-gez v8, :cond_4

    .line 163
    iget-object v8, p0, Lfps;->h:[Ljava/lang/Number;

    iget-object v9, p0, Lfps;->h:[Ljava/lang/Number;

    aget-object v9, v9, v2

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    add-float/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v8, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_4
    :goto_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_2

    .line 164
    :catch_0
    move-exception v0

    .line 165
    const-string v8, "Error"

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 173
    :cond_5
    iget-object v0, p0, Lfps;->i:[Ljava/lang/Number;

    iget-object v5, p0, Lfps;->h:[Ljava/lang/Number;

    aget-object v5, v5, v2

    aput-object v5, v0, v2

    .line 147
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 176
    :cond_6
    iget-object v0, p0, Lfps;->d:[Ljava/lang/Number;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Number;

    iput-object v0, p0, Lfps;->j:[Ljava/lang/Number;

    move v0, v4

    .line 177
    :goto_4
    iget-object v2, p0, Lfps;->d:[Ljava/lang/Number;

    array-length v2, v2

    if-ge v0, v2, :cond_8

    .line 178
    iget-object v2, p0, Lfps;->i:[Ljava/lang/Number;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_7

    .line 179
    iget-object v2, p0, Lfps;->j:[Ljava/lang/Number;

    iget-object v5, p0, Lfps;->i:[Ljava/lang/Number;

    aget-object v5, v5, v0

    aput-object v5, v2, v0

    .line 177
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 181
    :cond_7
    iget-object v2, p0, Lfps;->j:[Ljava/lang/Number;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v0

    goto :goto_5

    .line 185
    :cond_8
    iget-object v0, p0, Lfps;->d:[Ljava/lang/Number;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Number;

    iput-object v0, p0, Lfps;->l:[Ljava/lang/Number;

    move v0, v4

    .line 186
    :goto_6
    iget-object v2, p0, Lfps;->d:[Ljava/lang/Number;

    array-length v2, v2

    if-ge v0, v2, :cond_a

    .line 187
    iget-object v2, p0, Lfps;->g:[Ljava/lang/Number;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_9

    .line 188
    iget-object v2, p0, Lfps;->l:[Ljava/lang/Number;

    iget-object v5, p0, Lfps;->g:[Ljava/lang/Number;

    aget-object v5, v5, v0

    aput-object v5, v2, v0

    .line 186
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 190
    :cond_9
    iget-object v2, p0, Lfps;->l:[Ljava/lang/Number;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v0

    goto :goto_7

    .line 195
    :cond_a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    iget-object v0, p0, Lfps;->g:[Ljava/lang/Number;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, v0

    move v0, v4

    .line 199
    :goto_8
    iget-object v5, p0, Lfps;->d:[Ljava/lang/Number;

    array-length v5, v5

    if-ge v0, v5, :cond_c

    .line 200
    iget-object v5, p0, Lfps;->g:[Ljava/lang/Number;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_b

    .line 201
    iget-object v2, p0, Lfps;->g:[Ljava/lang/Number;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 199
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 204
    :cond_c
    iget-object v0, p0, Lfps;->h:[Ljava/lang/Number;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v5, v0

    move v0, v4

    .line 205
    :goto_9
    iget-object v6, p0, Lfps;->d:[Ljava/lang/Number;

    array-length v6, v6

    if-ge v0, v6, :cond_e

    .line 206
    iget-object v6, p0, Lfps;->h:[Ljava/lang/Number;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_d

    .line 207
    iget-object v5, p0, Lfps;->h:[Ljava/lang/Number;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 205
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 212
    :cond_e
    if-ne v5, v2, :cond_11

    .line 213
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    float-to-double v6, v0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 223
    :cond_f
    :goto_a
    iget-object v0, p0, Lfps;->d:[Ljava/lang/Number;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Number;

    iput-object v0, p0, Lfps;->k:[Ljava/lang/Number;

    move v0, v4

    .line 224
    :goto_b
    iget-object v6, p0, Lfps;->d:[Ljava/lang/Number;

    array-length v6, v6

    if-ge v0, v6, :cond_13

    .line 225
    iget-object v6, p0, Lfps;->k:[Ljava/lang/Number;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    .line 226
    iget-object v6, p0, Lfps;->i:[Ljava/lang/Number;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    cmpg-float v6, v6, v1

    if-gtz v6, :cond_10

    .line 227
    iget-object v6, p0, Lfps;->k:[Ljava/lang/Number;

    iget-object v7, p0, Lfps;->i:[Ljava/lang/Number;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v0

    .line 224
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 215
    :cond_11
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v6

    neg-float v6, v6

    cmpg-float v0, v0, v6

    if-gez v0, :cond_12

    .line 216
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v0

    neg-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_a

    .line 217
    :cond_12
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v6

    neg-float v6, v6

    cmpl-float v0, v0, v6

    if-lez v0, :cond_f

    .line 218
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    neg-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    goto :goto_a

    .line 232
    :cond_13
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/high16 v6, 0x447a0000    # 1000.0f

    cmpl-float v0, v0, v6

    if-gtz v0, :cond_14

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/high16 v6, -0x3b860000    # -1000.0f

    cmpg-float v0, v0, v6

    if-gez v0, :cond_15

    :cond_14
    move v0, v4

    .line 233
    :goto_c
    iget-object v6, p0, Lfps;->d:[Ljava/lang/Number;

    array-length v6, v6

    if-ge v0, v6, :cond_15

    .line 234
    iget-object v6, p0, Lfps;->j:[Ljava/lang/Number;

    iget-object v7, p0, Lfps;->j:[Ljava/lang/Number;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    .line 235
    iget-object v6, p0, Lfps;->k:[Ljava/lang/Number;

    iget-object v7, p0, Lfps;->k:[Ljava/lang/Number;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    .line 236
    iget-object v6, p0, Lfps;->l:[Ljava/lang/Number;

    iget-object v7, p0, Lfps;->l:[Ljava/lang/Number;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    .line 237
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 238
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_15
    move v0, v4

    .line 243
    :goto_d
    iget-object v6, p0, Lfps;->d:[Ljava/lang/Number;

    array-length v6, v6

    if-ge v0, v6, :cond_16

    .line 244
    iget-object v6, p0, Lfps;->j:[Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v7

    iget-object v8, p0, Lfps;->k:[Ljava/lang/Number;

    aget-object v8, v8, v0

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v0

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 246
    :cond_16
    :goto_e
    iget-object v0, p0, Lfps;->d:[Ljava/lang/Number;

    array-length v0, v0

    if-ge v4, v0, :cond_17

    .line 247
    iget-object v0, p0, Lfps;->l:[Ljava/lang/Number;

    iget-object v5, p0, Lfps;->l:[Ljava/lang/Number;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v0, v4

    .line 246
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 250
    :cond_17
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 251
    const/16 v0, 0xff

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 252
    new-instance v0, Landroid/graphics/LinearGradient;

    const/16 v2, 0xdc

    invoke-static {v2, v11, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/16 v2, 0xdc

    invoke-static {v2, v11, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 80
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 81
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lfps;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 97
    iget-object v0, p0, Lfps;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04012f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 98
    iget-object v0, p0, Lfps;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfuu;

    .line 100
    const v1, 0x7f100629

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 101
    const v2, 0x7f10062a

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 102
    const v3, 0x7f10062d

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 103
    const v4, 0x7f10062e

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 105
    iput v7, p0, Lfps;->m:I

    .line 107
    invoke-virtual {v0}, Lfuu;->getExtracto()Lfuy;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 108
    invoke-virtual {v0}, Lfuu;->getExtracto()Lfuy;

    move-result-object v6

    invoke-virtual {v6}, Lfuy;->y()Ljava/util/Vector;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 109
    invoke-virtual {v0}, Lfuu;->getExtracto()Lfuy;

    move-result-object v6

    invoke-virtual {v6}, Lfuy;->y()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 111
    invoke-virtual {v0}, Lfuu;->getExtracto()Lfuy;

    move-result-object v6

    invoke-virtual {p0, v6}, Lfps;->a(Lfuy;)Z

    .line 114
    :cond_0
    const-string v6, "Conta Santander"

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {v0}, Lfuu;->getAgencia()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {v0}, Lfuu;->getCuenta()Ljava/lang/String;

    move-result-object v6

    .line 116
    invoke-static {v1, v6}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v1, p0, Lfps;->a:Ljava/util/List;

    .line 119
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfuu;

    invoke-virtual {v1}, Lfuu;->getExtractoHome()Lfuy;

    move-result-object v1

    invoke-virtual {v1}, Lfuy;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {v0}, Lfuu;->getValor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {p1, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 129
    return-object v5
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 92
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
