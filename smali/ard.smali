.class public Lard;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:Ljava/lang/String; = "[ChatBase]"

.field private static final b:J = 0x1c2238ff6c0e0fc9L

.field private static volatile c:Lard;


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/Integer;

.field private L:Ljava/lang/Integer;

.field private M:Z

.field private N:Ljava/lang/String;

.field private O:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lapw;

.field private k:Landroid/content/Context;

.field private l:Larb;

.field private m:Laqw;

.field private n:Lchat/santander/com/modulochatsantander/receiver/ChatEventReceiver;

.field private o:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

.field private p:Larf;

.field private q:Lapa;

.field private r:Larv;

.field private s:Ljava/util/Date;

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Ljava/lang/Integer;

.field private y:Ljava/lang/Integer;

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method static synthetic U()Lard;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lard;->c:Lard;

    return-object v0
.end method

.method private V()Z
    .locals 2

    .prologue
    .line 256
    iget v0, p0, Lard;->u:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()Lard;
    .locals 2

    .prologue
    .line 91
    sget-object v0, Lard;->c:Lard;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lard;

    invoke-direct {v0}, Lard;-><init>()V

    sput-object v0, Lard;->c:Lard;

    .line 93
    sget-object v0, Lard;->c:Lard;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lard;->s:Ljava/util/Date;

    .line 97
    :cond_0
    sget-object v0, Lard;->c:Lard;

    return-object v0
.end method

.method private j(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 235
    iget v0, p0, Lard;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lard;->u:I

    .line 237
    const-string v0, "[ChatBase]"

    const-string v1, "Add tolerance error count +1 from : "

    invoke-static {p1}, Lase;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Lard;->v:I

    return v0
.end method

.method public B()I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lard;->w:I

    return v0
.end method

.method public C()Larv;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lard;->r:Larv;

    return-object v0
.end method

.method public D()Larb;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lard;->l:Larb;

    return-object v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lard;->F:Ljava/lang/String;

    return-object v0
.end method

.method public F()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;"
        }
    .end annotation

    .prologue
    .line 502
    iget-object v0, p0, Lard;->A:Ljava/util/List;

    return-object v0
.end method

.method public G()Z
    .locals 1

    .prologue
    .line 510
    iget-boolean v0, p0, Lard;->i:Z

    return v0
.end method

.method public H()Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lard;->o:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    return-object v0
.end method

.method public I()Laqw;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lard;->m:Laqw;

    return-object v0
.end method

.method public J()Ljava/lang/String;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lard;->I:Ljava/lang/String;

    return-object v0
.end method

.method public K()Lchat/santander/com/modulochatsantander/receiver/ChatEventReceiver;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lard;->n:Lchat/santander/com/modulochatsantander/receiver/ChatEventReceiver;

    return-object v0
.end method

.method public L()Z
    .locals 1

    .prologue
    .line 555
    iget-boolean v0, p0, Lard;->d:Z

    return v0
.end method

.method public M()Ljava/lang/String;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lard;->J:Ljava/lang/String;

    return-object v0
.end method

.method public N()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lard;->K:Ljava/lang/Integer;

    return-object v0
.end method

.method public O()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lard;->L:Ljava/lang/Integer;

    return-object v0
.end method

.method public P()Z
    .locals 1

    .prologue
    .line 583
    iget-boolean v0, p0, Lard;->O:Z

    return v0
.end method

.method public Q()Lapa;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lard;->q:Lapa;

    return-object v0
.end method

.method R()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 633
    invoke-virtual {p0}, Lard;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    invoke-virtual {p0, v1}, Lard;->b(Z)V

    .line 638
    invoke-virtual {p0, v1}, Lard;->a(Z)V

    .line 641
    iget-object v0, p0, Lard;->k:Landroid/content/Context;

    invoke-static {v0}, Lase;->a(Landroid/content/Context;)V

    .line 643
    const-string v0, "[ChatBase]"

    invoke-virtual {p0, v1, v0}, Lard;->b(ZLjava/lang/String;)V

    .line 644
    const-string v0, "[ChatBase]"

    invoke-virtual {p0, v1, v0}, Lard;->a(ZLjava/lang/String;)V

    .line 646
    :cond_0
    return-void
.end method

.method public S()Z
    .locals 1

    .prologue
    .line 661
    iget-boolean v0, p0, Lard;->M:Z

    return v0
.end method

.method public T()Ljava/lang/String;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lard;->N:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 242
    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 248
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lard;->u:I

    .line 250
    const-string v0, "[ChatBase]"

    const-string v1, "Http Success, tolerance error restarted."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lard;->k:Landroid/content/Context;

    .line 434
    return-void
.end method

.method public a(Lapa;)V
    .locals 0

    .prologue
    .line 595
    iput-object p1, p0, Lard;->q:Lapa;

    .line 596
    return-void
.end method

.method public a(Lapw;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lard;->j:Lapw;

    .line 378
    return-void
.end method

.method public a(Laqw;)V
    .locals 0

    .prologue
    .line 531
    iput-object p1, p0, Lard;->m:Laqw;

    .line 532
    return-void
.end method

.method public a(Larb;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lard;->l:Larb;

    .line 491
    return-void
.end method

.method public a(Lark;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 203
    invoke-virtual {p1}, Lark;->b()Laqb;

    move-result-object v0

    sget-object v1, Laqb;->Agent:Laqb;

    if-ne v0, v1, :cond_1

    .line 205
    const-string v0, "[ChatBase]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTranscriptManagerTyping 1 | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lard;->A:Ljava/util/List;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lard;->A:Ljava/util/List;

    .line 211
    :cond_0
    new-instance v0, Laro;

    sget-object v1, Lard;->c:Lard;

    iget-object v2, p0, Lard;->A:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Laro;-><init>(Lard;Ljava/util/List;)V

    .line 212
    iget-object v1, p0, Lard;->A:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Laro;->a(Ljava/util/List;Lark;)Lark;

    move-result-object v0

    .line 213
    const-string v1, "[ChatBase]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTranscriptManagerTyping 2 | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    if-nez v0, :cond_2

    invoke-virtual {p1}, Lark;->c()Lapu;

    move-result-object v1

    sget-object v2, Lapu;->TypingStarted:Lapu;

    if-ne v1, v2, :cond_2

    .line 217
    const-string v1, "[ChatBase]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTranscriptManagerTyping 3 add "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lard;->A:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iput-boolean v4, p0, Lard;->d:Z

    .line 230
    :cond_1
    :goto_0
    return-void

    .line 221
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lark;->c()Lapu;

    move-result-object v1

    sget-object v2, Lapu;->TypingStopped:Lapu;

    if-ne v1, v2, :cond_3

    .line 222
    const-string v1, "[ChatBase]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTranscriptManagerTyping 3 remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v1, p0, Lard;->A:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 224
    iput-boolean v4, p0, Lard;->d:Z

    goto :goto_0

    .line 226
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lard;->d:Z

    goto :goto_0
.end method

.method public a(Larv;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lard;->r:Larv;

    .line 478
    return-void
.end method

.method public a(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lard;->o:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    .line 524
    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lard;->x:Ljava/lang/Integer;

    .line 362
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lard;->D:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 317
    const-string v0, "[ChatBase]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "**** setSessionChatId-> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iput-object p1, p0, Lard;->E:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Larb;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-virtual {p0}, Lard;->q()Lapw;

    move-result-object v0

    if-nez v0, :cond_0

    .line 104
    sget-object v0, Lapw;->Indisponivel:Lapw;

    invoke-virtual {p0, v0}, Lard;->a(Lapw;)V

    .line 107
    :cond_0
    invoke-virtual {p0, p1}, Lard;->c(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, p2}, Lard;->d(Ljava/lang/String;)V

    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lard;->a(Ljava/lang/Integer;)V

    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lard;->b(Ljava/lang/Integer;)V

    .line 112
    invoke-virtual {p0}, Lard;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lard;->z:Ljava/util/List;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lard;->A:Ljava/util/List;

    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lard;->b(Z)V

    .line 118
    :cond_1
    iput-object p3, p0, Lard;->l:Larb;

    .line 119
    invoke-virtual {p0}, Lard;->c()V

    .line 120
    return-void
.end method

.method public a(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lard;->s:Ljava/util/Date;

    .line 394
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 506
    iput-object p1, p0, Lard;->A:Ljava/util/List;

    .line 507
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 423
    iput-boolean p1, p0, Lard;->g:Z

    .line 424
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 402
    const-string v0, "==> SET Chatbase memory polling "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    monitor-enter p0

    .line 405
    :try_start_0
    iput-boolean p1, p0, Lard;->h:Z

    .line 406
    monitor-exit p0

    .line 407
    return-void

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lard;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lard;->z:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lard;->A:Ljava/util/List;

    .line 127
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lard;->b(Z)V

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lard;->e(Z)V

    .line 130
    :cond_0
    invoke-virtual {p0}, Lard;->c()V

    .line 131
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 328
    iput p1, p0, Lard;->t:I

    .line 329
    const-string v0, "[ChatBase]"

    invoke-direct {p0, v0}, Lard;->j(Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public b(Lark;)V
    .locals 3

    .prologue
    .line 600
    iget-object v0, p0, Lard;->z:Ljava/util/List;

    if-nez v0, :cond_0

    .line 601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lard;->z:Ljava/util/List;

    .line 604
    :cond_0
    if-eqz p1, :cond_2

    .line 605
    invoke-virtual {p1}, Lark;->b()Laqb;

    move-result-object v0

    sget-object v1, Laqb;->User:Laqb;

    invoke-virtual {v0, v1}, Laqb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 607
    iget-object v0, p0, Lard;->z:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 608
    iget-object v0, p0, Lard;->z:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    :cond_1
    const-string v0, "[ChatBase]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "List addTranscriptChecked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_2
    :goto_0
    return-void

    .line 613
    :cond_3
    const-string v0, "[ChatBase]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "List addTranscriptChecked not: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lard;->y:Ljava/lang/Integer;

    .line 370
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lard;->G:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 445
    iput-boolean p1, p0, Lard;->f:Z

    .line 446
    return-void
.end method

.method public b(ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 414
    const-string v0, "[ChatBase]"

    const-string v1, " ==> Minimized "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iput-boolean p1, p0, Lard;->e:Z

    .line 416
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lard;->n:Lchat/santander/com/modulochatsantander/receiver/ChatEventReceiver;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lchat/santander/com/modulochatsantander/receiver/ChatEventReceiver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lchat/santander/com/modulochatsantander/receiver/ChatEventReceiver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lard;->n:Lchat/santander/com/modulochatsantander/receiver/ChatEventReceiver;

    .line 136
    new-instance v0, Larf;

    invoke-direct {v0}, Larf;-><init>()V

    iput-object v0, p0, Lard;->p:Larf;

    .line 137
    iget-object v0, p0, Lard;->n:Lchat/santander/com/modulochatsantander/receiver/ChatEventReceiver;

    iget-object v1, p0, Lard;->p:Larf;

    invoke-virtual {v0, v1}, Lchat/santander/com/modulochatsantander/receiver/ChatEventReceiver;->a(Larp;)V

    .line 139
    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 461
    iput p1, p0, Lard;->v:I

    .line 462
    return-void
.end method

.method public c(Lark;)V
    .locals 3

    .prologue
    .line 620
    iget-object v0, p0, Lard;->z:Ljava/util/List;

    if-nez v0, :cond_0

    .line 621
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lard;->z:Ljava/util/List;

    .line 624
    :cond_0
    if-eqz p1, :cond_1

    .line 626
    iget-object v0, p0, Lard;->z:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    const-string v0, "[ChatBase]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "List addTranscriptUnchecked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_1
    return-void
.end method

.method public c(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Lard;->K:Ljava/lang/Integer;

    .line 572
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lard;->B:Ljava/lang/String;

    .line 346
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 482
    iput-boolean p1, p0, Lard;->d:Z

    .line 483
    return-void
.end method

.method public d()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 142
    const-string v0, "[ChatBase]"

    const-string v1, "==> Chatbase memory END called end()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lard;->E:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    sget-object v0, Lard;->c:Lard;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lard;->a(Ljava/lang/Integer;)V

    .line 149
    sget-object v0, Lard;->c:Lard;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lard;->b(Ljava/lang/Integer;)V

    .line 150
    sget-object v0, Lard;->c:Lard;

    invoke-virtual {v0}, Lard;->g()V

    .line 151
    sget-object v0, Lard;->c:Lard;

    invoke-virtual {v0, v5}, Lard;->b(Z)V

    .line 152
    sget-object v0, Lard;->c:Lard;

    const-string v1, "[ChatBase]"

    invoke-virtual {v0, v4, v1}, Lard;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget-object v0, Lard;->c:Lard;

    invoke-virtual {v0, v3}, Lard;->a(Z)V

    .line 154
    sget-object v0, Lard;->c:Lard;

    invoke-virtual {v0, v3}, Lard;->b(I)V

    .line 155
    sget-object v0, Lard;->c:Lard;

    invoke-virtual {v0, v4}, Lard;->b(Ljava/lang/String;)V

    .line 156
    sget-object v0, Lard;->c:Lard;

    invoke-virtual {v0, v4}, Lard;->e(Ljava/lang/String;)V

    .line 157
    sget-object v0, Lard;->c:Lard;

    const-string v1, "[ChatBase]"

    invoke-virtual {v0, v3, v1}, Lard;->a(ZLjava/lang/String;)V

    .line 158
    sget-object v0, Lard;->c:Lard;

    invoke-virtual {v0, v3}, Lard;->a(Z)V

    .line 159
    sget-object v0, Lard;->c:Lard;

    invoke-virtual {v0, v5}, Lard;->e(Z)V

    .line 160
    const-string v0, "[ChatBase]"

    const-string v1, "==> Chatbase memory END destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    :try_start_1
    const-string v1, "[ChatBase]"

    const-string v2, "==> Chatbase memory polling end exception "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    sget-object v0, Lard;->c:Lard;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lard;->a(Ljava/lang/Integer;)V

    .line 149
    sget-object v0, Lard;->c:Lard;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lard;->b(Ljava/lang/Integer;)V

    .line 150
    sget-object v0, Lard;->c:Lard;

    invoke-virtual {v0}, Lard;->g()V

    .line 151
    sget-object v0, Lard;->c:Lard;

    invoke-virtual {v0, v5}, Lard;->b(Z)V

    .line 152
    sget-object v0, Lard;->c:Lard;

    const-string v1, "[ChatBase]"

    invoke-virtual {v0, v4, v1}, Lard;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget-object v0, Lard;->c:Lard;

    invoke-virtual {v0, v3}, Lard;->a(Z)V

    .line 154
    sget-object v0, Lard;->c:Lard;

    invoke-virtual {v0, v3}, Lard;->b(I)V

    .line 155
    sget-object v0, Lard;->c:Lard;

    invoke-virtual {v0, v4}, Lard;->b(Ljava/lang/String;)V

    .line 156
    sget-object v0, Lard;->c:Lard;

    invoke-virtual {v0, v4}, Lard;->e(Ljava/lang/String;)V

    .line 157
    sget-object v0, Lard;->c:Lard;

    const-string v1, "[ChatBase]"

    invoke-virtual {v0, v3, v1}, Lard;->a(ZLjava/lang/String;)V

    .line 158
    sget-object v0, Lard;->c:Lard;

    invoke-virtual {v0, v3}, Lard;->a(Z)V

    .line 159
    sget-object v0, Lard;->c:Lard;

    invoke-virtual {v0, v5}, Lard;->e(Z)V

    .line 160
    const-string v0, "[ChatBase]"

    const-string v1, "==> Chatbase memory END destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    sget-object v1, Lard;->c:Lard;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lard;->a(Ljava/lang/Integer;)V

    .line 149
    sget-object v1, Lard;->c:Lard;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lard;->b(Ljava/lang/Integer;)V

    .line 150
    sget-object v1, Lard;->c:Lard;

    invoke-virtual {v1}, Lard;->g()V

    .line 151
    sget-object v1, Lard;->c:Lard;

    invoke-virtual {v1, v5}, Lard;->b(Z)V

    .line 152
    sget-object v1, Lard;->c:Lard;

    const-string v2, "[ChatBase]"

    invoke-virtual {v1, v4, v2}, Lard;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget-object v1, Lard;->c:Lard;

    invoke-virtual {v1, v3}, Lard;->a(Z)V

    .line 154
    sget-object v1, Lard;->c:Lard;

    invoke-virtual {v1, v3}, Lard;->b(I)V

    .line 155
    sget-object v1, Lard;->c:Lard;

    invoke-virtual {v1, v4}, Lard;->b(Ljava/lang/String;)V

    .line 156
    sget-object v1, Lard;->c:Lard;

    invoke-virtual {v1, v4}, Lard;->e(Ljava/lang/String;)V

    .line 157
    sget-object v1, Lard;->c:Lard;

    const-string v2, "[ChatBase]"

    invoke-virtual {v1, v3, v2}, Lard;->a(ZLjava/lang/String;)V

    .line 158
    sget-object v1, Lard;->c:Lard;

    invoke-virtual {v1, v3}, Lard;->a(Z)V

    .line 159
    sget-object v1, Lard;->c:Lard;

    invoke-virtual {v1, v5}, Lard;->e(Z)V

    .line 160
    const-string v1, "[ChatBase]"

    const-string v2, "==> Chatbase memory END destroyed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 469
    iput p1, p0, Lard;->w:I

    .line 470
    return-void
.end method

.method public d(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Lard;->L:Ljava/lang/Integer;

    .line 580
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lard;->C:Ljava/lang/String;

    .line 354
    return-void
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 514
    iput-boolean p1, p0, Lard;->i:Z

    .line 515
    return-void
.end method

.method public e()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 167
    const-string v0, "[ChatBase]"

    const-string v1, "==> Chatbase purge init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {}, Lary;->b()Lary;

    move-result-object v0

    invoke-virtual {v0}, Lary;->a()V

    .line 176
    :try_start_0
    sget-object v0, Lard;->c:Lard;

    invoke-static {v0}, Lase;->d(Lard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Lare;

    invoke-direct {v0, p0}, Lare;-><init>(Lard;)V

    .line 186
    invoke-virtual {v0}, Lare;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :cond_0
    const-string v0, "[ChatBase]"

    invoke-virtual {p0, v4, v0}, Lard;->a(ZLjava/lang/String;)V

    .line 193
    const-string v0, "[ChatBase]"

    invoke-virtual {p0, v4, v0}, Lard;->b(ZLjava/lang/String;)V

    .line 194
    sget-object v0, Lard;->c:Lard;

    invoke-virtual {v0}, Lard;->d()V

    .line 195
    const-string v0, "[ChatBase]"

    const-string v1, "==> Chatbase purge end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    :try_start_1
    const-string v1, "[ChatBase]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==> Chatbase purge Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    const-string v0, "[ChatBase]"

    invoke-virtual {p0, v4, v0}, Lard;->a(ZLjava/lang/String;)V

    .line 193
    const-string v0, "[ChatBase]"

    invoke-virtual {p0, v4, v0}, Lard;->b(ZLjava/lang/String;)V

    .line 194
    sget-object v0, Lard;->c:Lard;

    invoke-virtual {v0}, Lard;->d()V

    .line 195
    const-string v0, "[ChatBase]"

    const-string v1, "==> Chatbase purge end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v0

    const-string v1, "[ChatBase]"

    invoke-virtual {p0, v4, v1}, Lard;->a(ZLjava/lang/String;)V

    .line 193
    const-string v1, "[ChatBase]"

    invoke-virtual {p0, v4, v1}, Lard;->b(ZLjava/lang/String;)V

    .line 194
    sget-object v1, Lard;->c:Lard;

    invoke-virtual {v1}, Lard;->d()V

    .line 195
    const-string v1, "[ChatBase]"

    const-string v2, "==> Chatbase purge end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lard;->H:Ljava/lang/String;

    .line 454
    return-void
.end method

.method public e(Z)V
    .locals 0

    .prologue
    .line 587
    iput-boolean p1, p0, Lard;->O:Z

    .line 588
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lard;->F:Ljava/lang/String;

    .line 499
    return-void
.end method

.method public f(Z)V
    .locals 3

    .prologue
    .line 650
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lard;->x()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lchat/santander/com/modulochatsantander/tasks/EndSession;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 651
    const-string v1, "END_SESSION_EVENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 652
    invoke-virtual {p0}, Lard;->x()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 653
    return-void
.end method

.method public f()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 261
    const/4 v0, 0x1

    .line 263
    iget-object v2, p0, Lard;->E:Ljava/lang/String;

    invoke-static {v2}, Lase;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 268
    :cond_0
    invoke-direct {p0}, Lard;->V()Z

    move-result v2

    if-nez v2, :cond_1

    .line 272
    :goto_0
    const-string v0, "[ChatBase]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidChatSession: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return v1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 277
    const/16 v0, 0xb

    iput v0, p0, Lard;->u:I

    .line 278
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lard;->I:Ljava/lang/String;

    .line 548
    return-void
.end method

.method public g(Z)V
    .locals 0

    .prologue
    .line 657
    iput-boolean p1, p0, Lard;->M:Z

    .line 658
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lard;->J:Ljava/lang/String;

    .line 564
    return-void
.end method

.method public h()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 283
    .line 285
    iget-object v0, p0, Lard;->z:Ljava/util/List;

    invoke-static {v0}, Lase;->g(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-boolean v0, p0, Lard;->f:Z

    if-eqz v0, :cond_3

    move v0, v1

    .line 289
    :goto_0
    const-string v3, "[ChatBase]"

    const-string v4, "==> Join do gerente true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :goto_1
    iget-object v3, p0, Lard;->z:Ljava/util/List;

    invoke-static {v3}, Lase;->h(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 295
    const-string v3, "[ChatBase]"

    const-string v4, "==> nova mensagem do gerente true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :goto_2
    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lard;->e:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lard;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_3
    return v1

    .line 291
    :cond_0
    const-string v0, "[ChatBase]"

    const-string v3, "==> Join do gerente false"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_1

    .line 297
    :cond_1
    const-string v3, "[ChatBase]"

    const-string v4, "==> nova mensagem do gerente false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    move v1, v2

    .line 300
    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lard;->D:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 669
    iput-object p1, p0, Lard;->N:Ljava/lang/String;

    .line 670
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lard;->E:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lard;->t:I

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lard;->G:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lard;->B:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lard;->C:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lard;->x:Ljava/lang/Integer;

    return-object v0
.end method

.method public p()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lard;->y:Ljava/lang/Integer;

    return-object v0
.end method

.method public q()Lapw;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lard;->j:Lapw;

    return-object v0
.end method

.method public r()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lard;->z:Ljava/util/List;

    if-nez v0, :cond_0

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lard;->z:Ljava/util/List;

    .line 385
    :cond_0
    iget-object v0, p0, Lard;->z:Ljava/util/List;

    return-object v0
.end method

.method public s()Ljava/util/Date;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lard;->s:Ljava/util/Date;

    return-object v0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 397
    iget-boolean v0, p0, Lard;->h:Z

    return v0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 410
    iget-boolean v0, p0, Lard;->e:Z

    return v0
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lard;->g:Z

    return v0
.end method

.method public w()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 427
    iput v1, p0, Lard;->t:I

    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Lard;->G:Ljava/lang/String;

    .line 429
    iput v1, p0, Lard;->u:I

    .line 430
    return-void
.end method

.method public x()Landroid/content/Context;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lard;->k:Landroid/content/Context;

    return-object v0
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 441
    iget-boolean v0, p0, Lard;->f:Z

    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lard;->H:Ljava/lang/String;

    return-object v0
.end method
