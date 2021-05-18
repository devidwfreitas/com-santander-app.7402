.class public Lfqq;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final d:I = 0x1


# instance fields
.field final synthetic a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:[Ljava/lang/String;

.field private final f:[I

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/TextView;

.field private final l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;Landroid/content/Context;III)V
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x7

    const/4 v3, 0x5

    .line 207
    iput-object p1, p0, Lfqq;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    .line 208
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 196
    new-array v0, v5, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Janeiro"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Fevereiro"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Mar\u00e7o"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Abril"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Maio"

    aput-object v2, v0, v1

    const-string v1, "Junho"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "Julho"

    aput-object v2, v0, v1

    const-string v1, "Agosto"

    aput-object v1, v0, v4

    const/16 v1, 0x8

    const-string v2, "Setembro"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Outubro"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Novembro"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Dezembro"

    aput-object v2, v0, v1

    iput-object v0, p0, Lfqq;->e:[Ljava/lang/String;

    .line 198
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lfqq;->f:[I

    .line 209
    iput-object p2, p0, Lfqq;->b:Landroid/content/Context;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfqq;->c:Ljava/util/List;

    .line 212
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 213
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v1}, Lfqq;->e(I)V

    .line 214
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lfqq;->b(I)V

    .line 217
    invoke-direct {p0, p4, p5}, Lfqq;->a(II)V

    .line 220
    invoke-direct {p0, p5, p4}, Lfqq;->b(II)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lfqq;->l:Ljava/util/HashMap;

    .line 221
    return-void

    .line 198
    nop

    :array_0
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data
.end method

.method private a(II)V
    .locals 11

    .prologue
    .line 247
    .line 254
    add-int/lit8 v6, p1, -0x1

    .line 255
    invoke-direct {p0, v6}, Lfqq;->d(I)I

    move-result v0

    iput v0, p0, Lfqq;->g:I

    .line 257
    new-instance v5, Ljava/util/GregorianCalendar;

    const/4 v0, 0x1

    invoke-direct {v5, p2, v6, v0}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 258
    const/16 v0, 0xb

    if-ne v6, v0, :cond_1

    .line 259
    add-int/lit8 v2, v6, -0x1

    .line 260
    invoke-direct {p0, v2}, Lfqq;->d(I)I

    move-result v3

    .line 261
    const/4 v1, 0x0

    .line 263
    add-int/lit8 v0, p2, 0x1

    move v4, v3

    move v3, v2

    move v2, p2

    .line 278
    :goto_0
    const/4 v7, 0x7

    invoke-virtual {v5, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .line 281
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 282
    const/4 v5, 0x2

    if-ne p1, v5, :cond_3

    .line 283
    iget v5, p0, Lfqq;->g:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lfqq;->g:I

    .line 287
    :cond_0
    :goto_1
    iget-object v5, p0, Lfqq;->c:Ljava/util/List;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "D-WHITE-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v5, p0, Lfqq;->c:Ljava/util/List;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "S-WHITE-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v5, p0, Lfqq;->c:Ljava/util/List;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "T-WHITE-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v5, p0, Lfqq;->c:Ljava/util/List;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Q-WHITE-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v5, p0, Lfqq;->c:Ljava/util/List;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Q-WHITE-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v5, p0, Lfqq;->c:Ljava/util/List;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "S-WHITE-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v5, p0, Lfqq;->c:Ljava/util/List;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "S-WHITE-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v7, :cond_4

    .line 297
    iget-object v8, p0, Lfqq;->c:Ljava/util/List;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sub-int v10, v4, v7

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v10, v5

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-GREY-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 298
    invoke-direct {p0, v3}, Lfqq;->c(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 297
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 264
    :cond_1
    if-nez v6, :cond_2

    .line 265
    const/16 v2, 0xb

    .line 266
    add-int/lit8 v1, p2, -0x1

    .line 268
    invoke-direct {p0, v2}, Lfqq;->d(I)I

    move-result v3

    .line 269
    const/4 v0, 0x1

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    move v0, p2

    goto/16 :goto_0

    .line 271
    :cond_2
    add-int/lit8 v1, v6, -0x1

    .line 272
    add-int/lit8 v0, v6, 0x1

    .line 275
    invoke-direct {p0, v1}, Lfqq;->d(I)I

    move-result v2

    move v3, v1

    move v4, v2

    move v2, p2

    move v1, v0

    move v0, p2

    goto/16 :goto_0

    .line 284
    :cond_3
    const/4 v5, 0x3

    if-ne p1, v5, :cond_0

    .line 285
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 302
    :cond_4
    const/4 v2, 0x1

    :goto_3
    iget v3, p0, Lfqq;->g:I

    if-gt v2, v3, :cond_9

    .line 304
    const/16 v3, 0xa

    if-ge v2, v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 305
    :goto_4
    add-int/lit8 v3, v6, 0x1

    const/16 v5, 0xa

    if-ge v3, v5, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 307
    :goto_5
    const-string v5, "%s%s%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    const/4 v8, 0x2

    aput-object v4, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 309
    invoke-direct {p0, v5}, Lfqq;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 310
    iget-object v5, p0, Lfqq;->c:Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "-BLUE-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 304
    :cond_5
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    goto :goto_4

    .line 305
    :cond_6
    add-int/lit8 v3, v6, 0x1

    .line 306
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 311
    :cond_7
    invoke-direct {p0, v5}, Lfqq;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 312
    iget-object v5, p0, Lfqq;->c:Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "-ATUAL-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 314
    :cond_8
    iget-object v5, p0, Lfqq;->c:Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "-WHITE-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 319
    :cond_9
    const/4 v2, 0x0

    :goto_7
    iget-object v3, p0, Lfqq;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int/lit8 v3, v3, 0x7

    if-ge v2, v3, :cond_a

    .line 320
    iget-object v3, p0, Lfqq;->c:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v2, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-GREY-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v1}, Lfqq;->c(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 324
    :cond_a
    invoke-direct {p0}, Lfqq;->c()V

    .line 326
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 343
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 345
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 346
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 348
    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 349
    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 350
    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 351
    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 353
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 360
    :cond_0
    :goto_0
    return v0

    .line 355
    :catch_0
    move-exception v1

    .line 357
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private b(II)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 388
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 390
    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 364
    const/4 v1, 0x0

    .line 365
    iget-object v0, p0, Lfqq;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    invoke-static {v0}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->b(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)Lfrc;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lfqq;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    invoke-static {v0}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->b(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)Lfrc;

    move-result-object v0

    invoke-virtual {v0}, Lfrc;->ai()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfrb;

    .line 367
    invoke-virtual {v0}, Lfrb;->J()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 368
    invoke-virtual {v0}, Lfrb;->J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    const/4 v0, 0x1

    .line 375
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private c(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lfqq;->e:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 329
    iget-object v0, p0, Lfqq;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 330
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 331
    const-string v2, "BLUE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lfqq;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    invoke-static {v0}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->a(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 339
    :cond_0
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Lfqq;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    invoke-static {v0}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->a(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private d(I)I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lfqq;->f:[I

    aget v0, v0, p1

    return v0
.end method

.method private e(I)V
    .locals 0

    .prologue
    .line 480
    iput p1, p0, Lfqq;->h:I

    .line 481
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lfqq;->h:I

    return v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lfqq;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Lfqq;->i:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 484
    iput p1, p0, Lfqq;->i:I

    .line 485
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lfqq;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lfqq;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 395
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const v9, 0x7f020289

    const v8, 0x7f020288

    const/16 v7, 0x10

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 401
    .line 402
    if-nez p2, :cond_0

    .line 403
    iget-object v0, p0, Lfqq;->b:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 404
    const v1, 0x7f040385

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 408
    :cond_0
    const v0, 0x7f101175

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lfqq;->j:Landroid/widget/Button;

    .line 409
    iget-object v0, p0, Lfqq;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    iget-object v0, p0, Lfqq;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 413
    aget-object v2, v1, v2

    .line 414
    const/4 v0, 0x2

    aget-object v3, v1, v0

    .line 415
    const/4 v0, 0x3

    aget-object v4, v1, v0

    .line 416
    iget-object v0, p0, Lfqq;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lfqq;->l:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lfqq;->l:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    const v0, 0x7f101176

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfqq;->k:Landroid/widget/TextView;

    .line 419
    iget-object v0, p0, Lfqq;->l:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 420
    iget-object v5, p0, Lfqq;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    :cond_1
    iget-object v0, p0, Lfqq;->j:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 426
    iget-object v0, p0, Lfqq;->j:Landroid/widget/Button;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 428
    aget-object v0, v1, v6

    const-string v2, "GREY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 429
    iget-object v0, p0, Lfqq;->j:Landroid/widget/Button;

    iget-object v2, p0, Lfqq;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    invoke-virtual {v2}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e013c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 432
    :cond_2
    aget-object v0, v1, v6

    const-string v2, "WHITE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 433
    iget-object v0, p0, Lfqq;->j:Landroid/widget/Button;

    iget-object v2, p0, Lfqq;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    invoke-virtual {v2}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 436
    :cond_3
    aget-object v0, v1, v6

    const-string v2, "BLUE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 437
    iget-object v0, p0, Lfqq;->j:Landroid/widget/Button;

    iget-object v2, p0, Lfqq;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    invoke-virtual {v2}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 438
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v7, :cond_6

    .line 439
    iget-object v0, p0, Lfqq;->j:Landroid/widget/Button;

    iget-object v2, p0, Lfqq;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    invoke-virtual {v2}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 445
    :cond_4
    :goto_0
    aget-object v0, v1, v6

    const-string v1, "ATUAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 446
    iget-object v0, p0, Lfqq;->j:Landroid/widget/Button;

    iget-object v1, p0, Lfqq;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    invoke-virtual {v1}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 447
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v7, :cond_7

    .line 448
    iget-object v0, p0, Lfqq;->j:Landroid/widget/Button;

    iget-object v1, p0, Lfqq;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    invoke-virtual {v1}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 453
    :cond_5
    :goto_1
    return-object p2

    .line 441
    :cond_6
    iget-object v0, p0, Lfqq;->j:Landroid/widget/Button;

    iget-object v2, p0, Lfqq;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    invoke-virtual {v2}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 450
    :cond_7
    iget-object v0, p0, Lfqq;->j:Landroid/widget/Button;

    iget-object v1, p0, Lfqq;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    invoke-virtual {v1}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 458
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 460
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lfqq;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    invoke-virtual {v2}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 461
    iget-object v2, p0, Lfqq;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    invoke-static {v2}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->c(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 462
    iget-object v0, p0, Lfqq;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->a(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;Lfrc;)Lfrc;

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lfqq;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    invoke-static {v3}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->c(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 465
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 467
    const-string v0, "agendamentos"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 468
    const-string v0, "indexConta"

    iget-object v2, p0, Lfqq;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    invoke-static {v2}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->d(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 470
    iget-object v0, p0, Lfqq;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    invoke-virtual {v0, v1}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
