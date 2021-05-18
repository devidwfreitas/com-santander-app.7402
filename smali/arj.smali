.class public Larj;
.super Ljava/util/Observable;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Observable;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Larj;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Laqa;

.field private c:Ljava/io/File;

.field private volatile d:I

.field private e:Z

.field private volatile f:Z

.field private volatile g:Z

.field private volatile h:Z

.field private volatile i:Z

.field private volatile j:Ljava/util/Date;

.field private volatile k:Z

.field private volatile l:Ljava/util/Date;

.field private m:Ljava/util/Date;

.field private volatile n:Z

.field private o:Larh;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Lari;

.field private s:Lapy;

.field private t:Ljava/lang/String;

.field private volatile u:Z

.field private volatile v:Z

.field private volatile w:Z

.field private volatile x:Z

.field private y:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Laqa;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 75
    iput-object p1, p0, Larj;->c:Ljava/io/File;

    .line 77
    iput-object p2, p0, Larj;->b:Laqa;

    .line 79
    iput v1, p0, Larj;->d:I

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Larj;->e:Z

    .line 81
    iput-boolean v1, p0, Larj;->f:Z

    .line 82
    iput-boolean v1, p0, Larj;->g:Z

    .line 83
    iput-object v2, p0, Larj;->j:Ljava/util/Date;

    .line 84
    iput-boolean v1, p0, Larj;->k:Z

    .line 85
    iput-boolean v1, p0, Larj;->h:Z

    .line 86
    iput-boolean v1, p0, Larj;->i:Z

    .line 87
    iput-object v2, p0, Larj;->l:Ljava/util/Date;

    .line 88
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Larj;->m:Ljava/util/Date;

    .line 89
    iput-boolean v1, p0, Larj;->n:Z

    .line 90
    iput-object v2, p0, Larj;->o:Larh;

    .line 91
    iput-boolean v1, p0, Larj;->u:Z

    .line 93
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Larj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 164
    iput p1, p0, Larj;->d:I

    .line 166
    if-lez p1, :cond_0

    .line 167
    invoke-virtual {p0}, Larj;->setChanged()V

    .line 168
    invoke-virtual {p0}, Larj;->notifyObservers()V

    .line 170
    :cond_0
    return-void
.end method

.method public a(Lapy;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Larj;->s:Lapy;

    .line 407
    return-void
.end method

.method public a(Laqa;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Larj;->b:Laqa;

    .line 129
    return-void
.end method

.method public a(Larh;)V
    .locals 1

    .prologue
    .line 337
    iput-object p1, p0, Larj;->o:Larh;

    .line 339
    if-eqz p1, :cond_0

    .line 340
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Larj;->f(Z)V

    .line 341
    invoke-virtual {p0}, Larj;->setChanged()V

    .line 342
    invoke-virtual {p0}, Larj;->notifyObservers()V

    .line 344
    :cond_0
    return-void
.end method

.method public a(Lari;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Larj;->r:Lari;

    .line 389
    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Larj;->c:Ljava/io/File;

    .line 147
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Larj;->a:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public a(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Larj;->j:Ljava/util/Date;

    .line 211
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 187
    iput-boolean p1, p0, Larj;->f:Z

    .line 189
    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p0}, Larj;->setChanged()V

    .line 191
    invoke-virtual {p0}, Larj;->notifyObservers()V

    .line 193
    :cond_0
    return-void
.end method

.method public b()Laqa;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Larj;->b:Laqa;

    return-object v0
.end method

.method public b(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Larj;->y:Ljava/io/File;

    .line 545
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Larj;->t:Ljava/lang/String;

    .line 423
    return-void
.end method

.method public b(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Larj;->l:Ljava/util/Date;

    .line 247
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 228
    iput-boolean p1, p0, Larj;->k:Z

    .line 229
    return-void
.end method

.method public c()Ljava/io/File;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Larj;->c:Ljava/io/File;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Larj;->q:Ljava/lang/String;

    .line 438
    return-void
.end method

.method public c(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Larj;->m:Ljava/util/Date;

    .line 265
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 282
    iput-boolean p1, p0, Larj;->n:Z

    .line 283
    return-void
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Larj;->s()Larj;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Larj;->d:I

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Larj;->p:Ljava/lang/String;

    .line 505
    return-void
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 301
    iput-boolean p1, p0, Larj;->e:Z

    .line 302
    return-void
.end method

.method public e(Z)V
    .locals 0

    .prologue
    .line 319
    iput-boolean p1, p0, Larj;->g:Z

    .line 320
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Larj;->f:Z

    return v0
.end method

.method public f()Ljava/util/Date;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Larj;->j:Ljava/util/Date;

    return-object v0
.end method

.method public f(Z)V
    .locals 0

    .prologue
    .line 361
    iput-boolean p1, p0, Larj;->h:Z

    .line 362
    return-void
.end method

.method public g(Z)V
    .locals 0

    .prologue
    .line 370
    iput-boolean p1, p0, Larj;->i:Z

    .line 371
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Larj;->k:Z

    return v0
.end method

.method public h()Ljava/util/Date;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Larj;->l:Ljava/util/Date;

    return-object v0
.end method

.method public h(Z)V
    .locals 0

    .prologue
    .line 512
    iput-boolean p1, p0, Larj;->u:Z

    .line 513
    return-void
.end method

.method public i()Ljava/util/Date;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Larj;->m:Ljava/util/Date;

    return-object v0
.end method

.method public i(Z)V
    .locals 0

    .prologue
    .line 520
    iput-boolean p1, p0, Larj;->v:Z

    .line 521
    return-void
.end method

.method public j(Z)V
    .locals 0

    .prologue
    .line 528
    iput-boolean p1, p0, Larj;->w:Z

    .line 529
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Larj;->n:Z

    return v0
.end method

.method public k(Z)V
    .locals 0

    .prologue
    .line 536
    iput-boolean p1, p0, Larj;->x:Z

    .line 537
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Larj;->e:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Larj;->g:Z

    return v0
.end method

.method public m()Larh;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Larj;->o:Larh;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Larj;->h:Z

    return v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Larj;->i:Z

    return v0
.end method

.method public p()Lari;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Larj;->r:Lari;

    return-object v0
.end method

.method public q()Lapy;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Larj;->s:Lapy;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Larj;->t:Ljava/lang/String;

    return-object v0
.end method

.method public s()Larj;
    .locals 0

    .prologue
    .line 433
    return-object p0
.end method

.method public t()Ljava/lang/String;
    .locals 12

    .prologue
    .line 447
    iget-object v0, p0, Larj;->q:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 449
    invoke-virtual {p0}, Larj;->c()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-double v0, v0

    .line 451
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_5

    .line 452
    iget-object v0, p0, Larj;->q:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    move-wide v2, v0

    .line 455
    :goto_0
    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    .line 456
    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    .line 457
    const-wide/high16 v8, 0x41d0000000000000L    # 1.073741824E9

    .line 458
    const-wide/high16 v10, 0x4270000000000000L    # 1.099511627776E12

    .line 464
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 465
    check-cast v0, Ljava/text/DecimalFormat;

    .line 467
    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 469
    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 494
    :goto_1
    return-object v0

    .line 472
    :cond_0
    cmpl-double v1, v2, v4

    if-ltz v1, :cond_1

    cmpg-double v1, v2, v6

    if-gez v1, :cond_1

    .line 474
    div-double/2addr v2, v4

    .line 475
    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 478
    :cond_1
    cmpl-double v1, v2, v6

    if-ltz v1, :cond_2

    cmpg-double v1, v2, v8

    if-gez v1, :cond_2

    .line 480
    div-double/2addr v2, v6

    .line 481
    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 482
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 484
    :cond_2
    cmpl-double v1, v2, v8

    if-ltz v1, :cond_3

    cmpg-double v1, v2, v10

    if-gez v1, :cond_3

    .line 486
    div-double/2addr v2, v8

    .line 487
    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 488
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  GB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 491
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 494
    :cond_4
    const-string v0, ""

    goto/16 :goto_1

    :cond_5
    move-wide v2, v0

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileWrapper{fileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Larj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Larj;->b:Laqa;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Larj;->c:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Larj;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toSend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Larj;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Larj;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", canceled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Larj;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Larj;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sendedDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Larj;->j:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", received="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Larj;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", receivedDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Larj;->l:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Larj;->m:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", showed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Larj;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Larj;->o:Larh;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Larj;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileSize=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Larj;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Larj;->r:Lari;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isNewFileEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Larj;->u:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFailed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Larj;->v:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isThumbnailFailed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Larj;->w:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Larj;->p:Ljava/lang/String;

    return-object v0
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 508
    iget-boolean v0, p0, Larj;->u:Z

    return v0
.end method

.method public w()Z
    .locals 1

    .prologue
    .line 516
    iget-boolean v0, p0, Larj;->v:Z

    return v0
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 524
    iget-boolean v0, p0, Larj;->w:Z

    return v0
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 532
    iget-boolean v0, p0, Larj;->x:Z

    return v0
.end method

.method public z()Ljava/io/File;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Larj;->y:Ljava/io/File;

    return-object v0
.end method
