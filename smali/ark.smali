.class public Lark;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/util/Observer;


# instance fields
.field private a:Ljava/util/UUID;

.field private b:J

.field private c:Laqb;

.field private d:Lapu;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:Ljava/lang/String;

.field private i:Ljava/util/Date;

.field private volatile j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Ljava/util/Date;

.field private q:Larj;

.field private r:Larh;

.field private volatile s:Z

.field private t:Larc;

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Z

.field private x:Ljava/util/Observable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lark;->i:Ljava/util/Date;

    .line 71
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lark;->a:Ljava/util/UUID;

    .line 72
    return-void
.end method

.method public constructor <init>(JLaqb;Lapu;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-wide p1, p0, Lark;->b:J

    .line 88
    iput-object p3, p0, Lark;->c:Laqb;

    .line 89
    iput-object p4, p0, Lark;->d:Lapu;

    .line 90
    iput-object p5, p0, Lark;->e:Ljava/lang/String;

    .line 91
    iput-object p6, p0, Lark;->f:Ljava/lang/String;

    .line 92
    iput-wide p7, p0, Lark;->g:J

    .line 93
    iput-object p9, p0, Lark;->h:Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lark;->a(Larj;)V

    .line 96
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lark;->i:Ljava/util/Date;

    .line 98
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lark;->a:Ljava/util/UUID;

    .line 99
    return-void
.end method

.method public constructor <init>(JLaqb;Lapu;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Larj;)V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-wide p1, p0, Lark;->b:J

    .line 116
    iput-object p3, p0, Lark;->c:Laqb;

    .line 117
    iput-object p4, p0, Lark;->d:Lapu;

    .line 118
    iput-object p5, p0, Lark;->e:Ljava/lang/String;

    .line 119
    iput-object p6, p0, Lark;->f:Ljava/lang/String;

    .line 120
    iput-wide p7, p0, Lark;->g:J

    .line 121
    iput-object p9, p0, Lark;->h:Ljava/lang/String;

    .line 122
    invoke-virtual {p0, p10}, Lark;->a(Larj;)V

    .line 124
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lark;->i:Ljava/util/Date;

    .line 126
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lark;->a:Ljava/util/UUID;

    .line 127
    return-void
.end method

.method private c(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lark;->p:Ljava/util/Date;

    .line 511
    return-void
.end method

.method private w()V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lark;->x:Ljava/util/Observable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lark;->x:Ljava/util/Observable;

    invoke-virtual {v0}, Ljava/util/Observable;->countObservers()I

    move-result v0

    if-lez v0, :cond_0

    .line 492
    iget-object v0, p0, Lark;->x:Ljava/util/Observable;

    invoke-virtual {v0, p0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 493
    const/4 v0, 0x0

    iput-boolean v0, p0, Lark;->w:Z

    .line 495
    :cond_0
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lark;->b:J

    return-wide v0
.end method

.method public a(Ljava/util/Date;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 271
    invoke-static {}, Lase;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 272
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 274
    const/16 v1, 0xd

    iget-wide v2, p0, Lark;->g:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 276
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 277
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v2, v0

    .line 279
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_0

    const-string v0, "0"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v4, :cond_1

    const-string v1, "0"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 282
    :goto_1
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 279
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 280
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 144
    iput-wide p1, p0, Lark;->b:J

    .line 145
    return-void
.end method

.method public a(Lapu;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lark;->d:Lapu;

    .line 181
    return-void
.end method

.method public a(Laqb;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lark;->c:Laqb;

    .line 163
    return-void
.end method

.method public a(Larc;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lark;->t:Larc;

    .line 528
    return-void
.end method

.method public a(Larh;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lark;->r:Larh;

    .line 354
    return-void
.end method

.method public a(Larj;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lark;->q:Larj;

    .line 370
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lark;->e:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 319
    iput-boolean p1, p0, Lark;->j:Z

    .line 320
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 627
    if-eqz p1, :cond_0

    instance-of v1, p1, Lark;

    if-eqz v1, :cond_0

    .line 628
    iget-object v1, p0, Lark;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lark;->f:Ljava/lang/String;

    check-cast p1, Lark;

    iget-object v2, p1, Lark;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 630
    :cond_0
    return v0
.end method

.method public b()Laqb;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lark;->c:Laqb;

    return-object v0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 234
    iput-wide p1, p0, Lark;->g:J

    .line 235
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lark;->f:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public b(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lark;->i:Ljava/util/Date;

    .line 379
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 337
    iput-boolean p1, p0, Lark;->m:Z

    .line 338
    return-void
.end method

.method public c()Lapu;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lark;->d:Lapu;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lark;->h:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 394
    iput-boolean p1, p0, Lark;->k:Z

    .line 395
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 572
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lark;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lark;->u:Ljava/lang/String;

    .line 545
    return-void
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 410
    iput-boolean p1, p0, Lark;->l:Z

    .line 411
    iput-boolean p1, p0, Lark;->m:Z

    .line 412
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lark;->c(Ljava/util/Date;)V

    .line 413
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lark;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 433
    iput-boolean p1, p0, Lark;->n:Z

    .line 435
    if-eqz p1, :cond_0

    .line 436
    invoke-virtual {p0}, Lark;->l()Larj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {p0}, Lark;->l()Larj;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Larj;->e(Z)V

    .line 440
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 563
    if-eqz p1, :cond_0

    instance-of v1, p1, Lark;

    if-eqz v1, :cond_0

    .line 564
    invoke-virtual {p0}, Lark;->a()J

    move-result-wide v2

    check-cast p1, Lark;

    invoke-virtual {p1}, Lark;->a()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 566
    :cond_0
    return v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 225
    iget-wide v0, p0, Lark;->g:J

    return-wide v0
.end method

.method public f(Z)V
    .locals 1

    .prologue
    .line 455
    iput-boolean p1, p0, Lark;->o:Z

    .line 457
    iget-object v0, p0, Lark;->q:Larj;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lark;->w:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lark;->w:Z

    .line 459
    iget-object v0, p0, Lark;->q:Larj;

    iput-object v0, p0, Lark;->x:Ljava/util/Observable;

    .line 460
    iget-object v0, p0, Lark;->x:Ljava/util/Observable;

    invoke-virtual {v0, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 462
    :cond_0
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lark;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g(Z)V
    .locals 1

    .prologue
    .line 483
    invoke-virtual {p0}, Lark;->l()Larj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {p0}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0, p1}, Larj;->h(Z)V

    .line 487
    :cond_0
    iput-boolean p1, p0, Lark;->s:Z

    .line 488
    return-void
.end method

.method public h()Ljava/util/Date;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lark;->i:Ljava/util/Date;

    return-object v0
.end method

.method public h(Z)V
    .locals 0

    .prologue
    .line 638
    iput-boolean p1, p0, Lark;->v:Z

    .line 639
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lark;->j:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Lark;->m:Z

    return v0
.end method

.method public k()Larh;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lark;->r:Larh;

    return-object v0
.end method

.method public l()Larj;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lark;->q:Larj;

    return-object v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lark;->k:Z

    return v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lark;->l:Z

    return v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 421
    invoke-virtual {p0}, Lark;->l()Larj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lark;->n:Z

    .line 425
    :cond_0
    iget-boolean v0, p0, Lark;->n:Z

    return v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 447
    iget-boolean v0, p0, Lark;->o:Z

    return v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 470
    invoke-virtual {p0}, Lark;->l()Larj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    const/4 v0, 0x1

    .line 474
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lark;->s:Z

    goto :goto_0
.end method

.method public r()Ljava/util/Date;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lark;->p:Ljava/util/Date;

    return-object v0
.end method

.method public s()Larc;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lark;->t:Larc;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lark;->u:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transcript{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lark;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lark;->c:Laqb;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lark;->d:Lapu;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lark;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nickName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lark;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lark;->g:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", peerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lark;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lark;->i:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", showed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lark;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", newEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lark;->s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", received="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lark;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 299
    invoke-virtual {p0}, Lark;->l()Larj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lark;->l()Larj;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", jsonData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lark;->u:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lark;->u:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    return-object v0

    .line 299
    :cond_0
    const-string v0, "NULL"

    goto :goto_0

    :cond_1
    const-string v0, "NULL"

    goto :goto_1
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lark;->q:Larj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lark;->q:Larj;

    invoke-virtual {v0}, Larj;->p()Lari;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lark;->q:Larj;

    invoke-virtual {v0}, Larj;->p()Lari;

    move-result-object v0

    invoke-virtual {v0}, Lari;->c()Ljava/lang/String;

    move-result-object v0

    .line 557
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 591
    instance-of v0, p1, Larj;

    if-eqz v0, :cond_2

    .line 593
    check-cast p1, Larj;

    .line 595
    invoke-virtual {p1}, Larj;->n()Z

    move-result v0

    invoke-virtual {p0, v0}, Lark;->f(Z)V

    .line 596
    invoke-virtual {p1}, Larj;->e()Z

    move-result v0

    invoke-virtual {p0, v0}, Lark;->d(Z)V

    .line 597
    invoke-virtual {p1}, Larj;->f()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lark;->c(Ljava/util/Date;)V

    .line 598
    invoke-virtual {p1}, Larj;->g()Z

    move-result v0

    invoke-virtual {p0, v0}, Lark;->b(Z)V

    .line 599
    invoke-virtual {p1}, Larj;->l()Z

    move-result v0

    invoke-virtual {p0, v0}, Lark;->e(Z)V

    .line 601
    invoke-virtual {p1}, Larj;->m()Larh;

    move-result-object v0

    invoke-virtual {p0, v0}, Lark;->a(Larh;)V

    .line 603
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lark;->g(Z)V

    .line 605
    iget-boolean v0, p0, Lark;->o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lark;->p:Ljava/util/Date;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lark;->r:Larh;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lark;->o()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Larj;->w()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Larj;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 606
    :cond_1
    invoke-direct {p0}, Lark;->w()V

    .line 609
    :cond_2
    return-void
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 634
    iget-boolean v0, p0, Lark;->v:Z

    return v0
.end method
