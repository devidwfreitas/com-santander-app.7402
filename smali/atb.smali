.class public Latb;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field b:I

.field private final d:Lata;

.field private final e:Lasz;

.field private f:Landroid/content/Context;

.field private g:Landroid/view/View;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lard;

.field private j:Lark;

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:I

.field private final r:I

.field private final s:I

.field private final t:I

.field private final u:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Latb;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Latb;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lata;Lasz;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;",
            "Lata;",
            "Lasz;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 45
    invoke-static {}, Lard;->a()Lard;

    move-result-object v0

    iput-object v0, p0, Latb;->i:Lard;

    .line 48
    iput v1, p0, Latb;->b:I

    .line 50
    iput v1, p0, Latb;->k:I

    const/4 v0, 0x1

    iput v0, p0, Latb;->l:I

    const/4 v0, 0x2

    iput v0, p0, Latb;->m:I

    const/4 v0, 0x3

    iput v0, p0, Latb;->n:I

    const/4 v0, 0x4

    iput v0, p0, Latb;->o:I

    const/4 v0, 0x5

    iput v0, p0, Latb;->p:I

    const/4 v0, 0x6

    iput v0, p0, Latb;->q:I

    const/4 v0, 0x7

    iput v0, p0, Latb;->r:I

    const/16 v0, 0x8

    iput v0, p0, Latb;->s:I

    const/16 v0, 0x9

    iput v0, p0, Latb;->t:I

    const/4 v0, -0x1

    iput v0, p0, Latb;->u:I

    .line 66
    iput-object p1, p0, Latb;->f:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Latb;->h:Ljava/util/List;

    .line 68
    iput-object p3, p0, Latb;->d:Lata;

    .line 69
    iput-object p4, p0, Latb;->e:Lasz;

    .line 70
    return-void
.end method

.method private a()I
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Laph;->ic_check_squadchat:I

    :goto_0
    return v0

    :cond_0
    sget v0, Laph;->ico_espera_squadchat:I

    goto :goto_0
.end method

.method static synthetic a(Latb;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Latb;->f:Landroid/content/Context;

    return-object v0
.end method

.method private a(Latf;I)V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Latb;->h:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    iput-object v0, p0, Latb;->j:Lark;

    .line 375
    invoke-direct {p0}, Latb;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Latf;->b(I)V

    .line 376
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Latf;->a(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Latb;->j:Lark;

    iget-object v1, p0, Latb;->i:Lard;

    invoke-virtual {v1}, Lard;->s()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lark;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Latf;->d(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->c()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Latf;->b(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Latf;->c(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {p1, v0}, Latf;->a(Lark;)V

    .line 381
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {p1, v0}, Latf;->c(Lark;)V

    .line 382
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Latf;->a(I)V

    .line 383
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {p1, v0}, Latf;->b(Lark;)V

    .line 384
    iget-object v0, p0, Latb;->j:Lark;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lark;->a(Z)V

    .line 385
    return-void
.end method

.method private a(Latg;I)V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Latb;->h:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    iput-object v0, p0, Latb;->j:Lark;

    .line 314
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Latg;->a(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Latg;->b(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Latb;->j:Lark;

    iget-object v1, p0, Latb;->i:Lard;

    invoke-virtual {v1}, Lard;->s()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lark;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Latg;->c(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Latb;->j:Lark;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lark;->a(Z)V

    .line 318
    return-void
.end method

.method private a(Lath;I)V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Latb;->h:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    iput-object v0, p0, Latb;->j:Lark;

    .line 323
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lath;->a(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Latb;->j:Lark;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lark;->a(Z)V

    .line 325
    return-void
.end method

.method private a(Lati;I)V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Latb;->h:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    iput-object v0, p0, Latb;->j:Lark;

    .line 391
    iget-object v0, p0, Latb;->j:Lark;

    iget-object v1, p0, Latb;->f:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lati;->a(Lark;Landroid/content/Context;)V

    .line 393
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lati;->a(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Latb;->j:Lark;

    iget-object v1, p0, Latb;->i:Lard;

    invoke-virtual {v1}, Lard;->s()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lark;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lati;->d(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->c()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lati;->b(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lati;->c(Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {p1, v0}, Lati;->c(Lark;)V

    .line 398
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {p1, v0}, Lati;->b(Lark;)V

    .line 399
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {p1, v0}, Lati;->a(Lark;)V

    .line 400
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Lati;->a(I)V

    .line 401
    iget-object v0, p0, Latb;->j:Lark;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lark;->a(Z)V

    .line 402
    return-void
.end method

.method private a(Latj;I)V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Latb;->h:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    iput-object v0, p0, Latb;->j:Lark;

    .line 359
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->c()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Latj;->a(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Latj;->b(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Latb;->j:Lark;

    iget-object v1, p0, Latb;->i:Lard;

    invoke-virtual {v1}, Lard;->s()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lark;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Latj;->c(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {p1, v0}, Latj;->c(Lark;)V

    .line 363
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Latj;->a(I)V

    .line 364
    iget-object v0, p0, Latb;->j:Lark;

    iget-object v1, p0, Latb;->f:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Latj;->a(Lark;Landroid/content/Context;)V

    .line 365
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {p1, v0}, Latj;->d(Lark;)V

    .line 366
    invoke-direct {p0}, Latb;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Latj;->b(I)V

    .line 367
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {p1, v0}, Latj;->a(Lark;)V

    .line 368
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {p1, v0}, Latj;->b(Lark;)V

    .line 369
    iget-object v0, p0, Latb;->j:Lark;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lark;->a(Z)V

    .line 370
    return-void
.end method

.method private a(Latk;I)V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Latb;->h:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    iput-object v0, p0, Latb;->j:Lark;

    .line 343
    invoke-direct {p0}, Latb;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Latk;->a(I)V

    .line 344
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->c()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Latk;->a(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {p1, v0}, Latk;->a(Lark;)V

    .line 346
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Latk;->b(I)V

    .line 347
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Latk;->b(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Latb;->j:Lark;

    iget-object v1, p0, Latb;->i:Lard;

    invoke-virtual {v1}, Lard;->s()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lark;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Latk;->c(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {p1, v0}, Latk;->b(Lark;)V

    .line 350
    invoke-direct {p0}, Latb;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Latk;->c(I)V

    .line 351
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {p1, v0}, Latk;->c(Lark;)V

    .line 352
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {p1, v0}, Latk;->d(Lark;)V

    .line 353
    iget-object v0, p0, Latb;->j:Lark;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lark;->a(Z)V

    .line 354
    return-void
.end method

.method private a(Latl;I)V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Latb;->h:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    iput-object v0, p0, Latb;->j:Lark;

    .line 297
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Latl;->a(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Latb;->j:Lark;

    iget-object v1, p0, Latb;->i:Lard;

    invoke-virtual {v1}, Lard;->s()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lark;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Latl;->b(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {p1, v0}, Latl;->a(Lark;)V

    .line 300
    invoke-direct {p0}, Latb;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Latl;->a(I)V

    .line 301
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {p1, v0}, Latl;->b(Lark;)V

    .line 302
    invoke-virtual {p1}, Latl;->a()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Latc;

    invoke-direct {v1, p0}, Latc;-><init>(Latb;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iget-object v0, p0, Latb;->j:Lark;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lark;->a(Z)V

    .line 310
    return-void
.end method

.method private b()I
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Laph;->ic_check_squadchat:I

    :goto_0
    return v0

    :cond_0
    sget v0, Laph;->ico_espera_squadchat:I

    goto :goto_0
.end method

.method static synthetic b(Latb;)Lark;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Latb;->j:Lark;

    return-object v0
.end method

.method private b(Lath;I)V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Latb;->h:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    iput-object v0, p0, Latb;->j:Lark;

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Latb;->j:Lark;

    invoke-static {v1}, Lase;->a(Lark;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Latb;->j:Lark;

    .line 330
    invoke-virtual {v1}, Lark;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-virtual {p1, v0}, Lath;->a(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Latb;->j:Lark;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lark;->a(Z)V

    .line 332
    return-void
.end method

.method private c()I
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->b()Laqb;

    move-result-object v0

    sget-object v1, Laqb;->User:Laqb;

    invoke-virtual {v0, v1}, Laqb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Latb;->j:Lark;

    .line 417
    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->c()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Laqr;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Laph;->ico_file_squadchat:I

    .line 416
    :goto_0
    return v0

    .line 417
    :cond_0
    sget v0, Laph;->ico_img_squadchat:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Latb;->j:Lark;

    .line 419
    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->c()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Laqr;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Laph;->ico_file_gray_squadchat:I

    goto :goto_0

    :cond_2
    sget v0, Laph;->ico_img_gray_squadchat:I

    goto :goto_0
.end method

.method private c(Lath;I)V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Latb;->h:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    iput-object v0, p0, Latb;->j:Lark;

    .line 336
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lath;->a(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Latb;->j:Lark;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lark;->a(Z)V

    .line 338
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
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
    .line 73
    iput-object p1, p0, Latb;->h:Ljava/util/List;

    .line 74
    iget-object v0, p0, Latb;->j:Lark;

    if-eqz v0, :cond_0

    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Latb;->j:Lark;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lark;->g(Z)V

    .line 78
    :cond_0
    invoke-virtual {p0}, Latb;->notifyDataSetChanged()V

    .line 79
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Latb;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 5

    .prologue
    const/16 v2, 0x9

    const/4 v3, 0x7

    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Latb;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    iput-object v0, p0, Latb;->j:Lark;

    .line 91
    iget-object v0, p0, Latb;->j:Lark;

    if-eqz v0, :cond_3

    .line 93
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0, v1}, Lark;->g(Z)V

    .line 98
    :cond_0
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->b()Laqb;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 100
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0, v1}, Lark;->g(Z)V

    .line 105
    :cond_1
    sget-object v0, Lapu;->TextMessageSent:Lapu;

    invoke-virtual {v0}, Lapu;->getValue()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Latb;->j:Lark;

    .line 106
    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v0

    invoke-virtual {v0}, Lapu;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 108
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0, v1}, Lark;->g(Z)V

    .line 113
    :cond_2
    sget-object v0, Latd;->a:[I

    iget-object v4, p0, Latb;->j:Lark;

    invoke-virtual {v4}, Lark;->b()Laqb;

    move-result-object v4

    invoke-virtual {v4}, Laqb;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 183
    :cond_3
    :goto_1
    const/4 v0, -0x1

    :goto_2
    return v0

    .line 106
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 115
    :pswitch_0
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 116
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->c()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Laqr;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 117
    const/4 v0, 0x6

    goto :goto_2

    .line 119
    :cond_5
    const/16 v0, 0x8

    goto :goto_2

    :cond_6
    move v0, v1

    .line 122
    goto :goto_2

    .line 125
    :pswitch_1
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 126
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->z()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->c()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Laqr;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    .line 127
    goto :goto_2

    :cond_7
    move v0, v3

    .line 130
    goto :goto_2

    .line 133
    :cond_8
    const/4 v0, 0x1

    goto :goto_2

    .line 136
    :pswitch_2
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v0

    sget-object v1, Lapu;->AgentJoined:Lapu;

    if-ne v0, v1, :cond_3

    .line 137
    iget-object v0, p0, Latb;->h:Ljava/util/List;

    iget-object v1, p0, Latb;->j:Lark;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Latb;->b:I

    .line 138
    iget-object v0, p0, Latb;->h:Ljava/util/List;

    iget-object v1, p0, Latb;->j:Lark;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Latb;->b:I

    if-lt v0, v1, :cond_3

    .line 139
    const/4 v0, 0x2

    goto :goto_2

    .line 146
    :cond_9
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->q()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 148
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0, v1}, Lark;->g(Z)V

    .line 151
    :cond_a
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 152
    sget-object v0, Latd;->b:[I

    iget-object v1, p0, Latb;->j:Lark;

    invoke-virtual {v1}, Lark;->c()Lapu;

    move-result-object v1

    invoke-virtual {v1}, Lapu;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    .line 154
    :pswitch_3
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lase;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 155
    const/4 v0, 0x3

    goto/16 :goto_2

    .line 158
    :cond_b
    :pswitch_4
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->b()Laqb;

    move-result-object v0

    sget-object v1, Laqb;->Agent:Laqb;

    invoke-virtual {v0, v1}, Laqb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 159
    const/4 v0, 0x4

    goto/16 :goto_2

    .line 162
    :cond_c
    :pswitch_5
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->b()Laqb;

    move-result-object v0

    sget-object v1, Laqb;->Agent:Laqb;

    invoke-virtual {v0, v1}, Laqb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 163
    const/4 v0, 0x5

    goto/16 :goto_2

    .line 166
    :cond_d
    :pswitch_6
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->b()Laqb;

    move-result-object v0

    sget-object v1, Laqb;->Agent:Laqb;

    invoke-virtual {v0, v1}, Laqb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 168
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->z()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->c()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Laqr;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v2

    .line 169
    goto/16 :goto_2

    :cond_e
    move v0, v3

    .line 172
    goto/16 :goto_2

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 152
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Latb;->j:Lark;

    if-eqz v0, :cond_0

    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->b()Laqb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    sget-object v0, Lapu;->TextMessageSent:Lapu;

    invoke-virtual {v0}, Lapu;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Latb;->j:Lark;

    .line 191
    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v0

    invoke-virtual {v0}, Lapu;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 190
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 242
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    .line 191
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 195
    :pswitch_1
    check-cast p1, Latl;

    .line 196
    invoke-direct {p0, p1, p2}, Latb;->a(Latl;I)V

    goto :goto_1

    .line 199
    :pswitch_2
    check-cast p1, Latg;

    .line 200
    invoke-direct {p0, p1, p2}, Latb;->a(Latg;I)V

    goto :goto_1

    .line 203
    :pswitch_3
    check-cast p1, Lath;

    .line 204
    invoke-direct {p0, p1, p2}, Latb;->a(Lath;I)V

    goto :goto_1

    .line 207
    :pswitch_4
    check-cast p1, Latk;

    .line 208
    invoke-direct {p0, p1, p2}, Latb;->a(Latk;I)V

    goto :goto_1

    .line 211
    :pswitch_5
    check-cast p1, Latj;

    .line 212
    invoke-direct {p0, p1, p2}, Latb;->a(Latj;I)V

    goto :goto_1

    .line 216
    :cond_2
    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Latb;->j:Lark;

    invoke-virtual {v0}, Lark;->b()Laqb;

    move-result-object v0

    sget-object v1, Laqb;->Agent:Laqb;

    invoke-virtual {v0, v1}, Laqb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_6
    goto :goto_1

    .line 225
    :pswitch_7
    check-cast p1, Lath;

    .line 226
    invoke-direct {p0, p1, p2}, Latb;->c(Lath;I)V

    goto :goto_1

    .line 220
    :pswitch_8
    check-cast p1, Lath;

    .line 221
    invoke-direct {p0, p1, p2}, Latb;->b(Lath;I)V

    goto :goto_1

    .line 230
    :pswitch_9
    check-cast p1, Latf;

    .line 231
    invoke-direct {p0, p1, p2}, Latb;->a(Latf;I)V

    goto :goto_1

    .line 235
    :pswitch_a
    check-cast p1, Lati;

    .line 236
    invoke-direct {p0, p1, p2}, Latb;->a(Lati;I)V

    goto :goto_1

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 217
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_9
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 246
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 247
    sget v1, Lapk;->hide_event_adapter:I

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Latb;->g:Landroid/view/View;

    .line 248
    new-instance v1, Late;

    iget-object v2, p0, Latb;->g:Landroid/view/View;

    invoke-direct {v1, p0, v2}, Late;-><init>(Latb;Landroid/view/View;)V

    iput-object v1, p0, Latb;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 250
    packed-switch p2, :pswitch_data_0

    .line 292
    :cond_0
    iget-object v0, p0, Latb;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    :goto_0
    return-object v0

    .line 252
    :pswitch_0
    sget v1, Lapk;->bubble_user_adapter:I

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Latb;->g:Landroid/view/View;

    .line 253
    new-instance v0, Latl;

    iget-object v1, p0, Latb;->g:Landroid/view/View;

    invoke-direct {v0, v1}, Latl;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Latb;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 254
    iget-object v0, p0, Latb;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 256
    :pswitch_1
    sget v1, Lapk;->bubble_agent_adapter:I

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Latb;->g:Landroid/view/View;

    .line 257
    new-instance v0, Latg;

    iget-object v1, p0, Latb;->g:Landroid/view/View;

    invoke-direct {v0, v1}, Latg;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Latb;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 258
    iget-object v0, p0, Latb;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 260
    :pswitch_2
    sget v1, Lapk;->external_adapter:I

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Latb;->g:Landroid/view/View;

    .line 261
    new-instance v0, Lath;

    iget-object v1, p0, Latb;->g:Landroid/view/View;

    invoke-direct {v0, v1}, Lath;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Latb;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 262
    iget-object v0, p0, Latb;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 264
    :pswitch_3
    sget v1, Lapk;->external_adapter:I

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Latb;->g:Landroid/view/View;

    .line 265
    new-instance v0, Lath;

    iget-object v1, p0, Latb;->g:Landroid/view/View;

    invoke-direct {v0, v1}, Lath;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Latb;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 266
    iget-object v0, p0, Latb;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 269
    :pswitch_4
    iget-object v1, p0, Latb;->j:Lark;

    invoke-virtual {v1}, Lark;->b()Laqb;

    move-result-object v1

    sget-object v2, Laqb;->Agent:Laqb;

    invoke-virtual {v1, v2}, Laqb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    sget v1, Lapk;->external_adapter:I

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Latb;->g:Landroid/view/View;

    .line 271
    new-instance v0, Lath;

    iget-object v1, p0, Latb;->g:Landroid/view/View;

    invoke-direct {v0, v1}, Lath;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Latb;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 272
    iget-object v0, p0, Latb;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 276
    :pswitch_5
    sget v1, Lapk;->bubble_user_file_adapter:I

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Latb;->g:Landroid/view/View;

    .line 277
    new-instance v0, Latk;

    iget-object v1, p0, Latb;->g:Landroid/view/View;

    iget-object v2, p0, Latb;->d:Lata;

    invoke-direct {v0, v1, v2}, Latk;-><init>(Landroid/view/View;Lata;)V

    iput-object v0, p0, Latb;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 278
    iget-object v0, p0, Latb;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto/16 :goto_0

    .line 280
    :pswitch_6
    sget v1, Lapk;->bubble_user_file_new_adapter:I

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Latb;->g:Landroid/view/View;

    .line 281
    new-instance v0, Latj;

    iget-object v1, p0, Latb;->g:Landroid/view/View;

    iget-object v2, p0, Latb;->d:Lata;

    invoke-direct {v0, v1, v2}, Latj;-><init>(Landroid/view/View;Lata;)V

    iput-object v0, p0, Latb;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 282
    iget-object v0, p0, Latb;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto/16 :goto_0

    .line 284
    :pswitch_7
    sget v1, Lapk;->bubble_agent_file_adapter:I

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Latb;->g:Landroid/view/View;

    .line 285
    new-instance v0, Latf;

    iget-object v1, p0, Latb;->g:Landroid/view/View;

    iget-object v2, p0, Latb;->e:Lasz;

    invoke-direct {v0, v1, v2}, Latf;-><init>(Landroid/view/View;Lasz;)V

    iput-object v0, p0, Latb;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 286
    iget-object v0, p0, Latb;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto/16 :goto_0

    .line 288
    :pswitch_8
    sget v1, Lapk;->bubble_agent_file_new_adapter:I

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Latb;->g:Landroid/view/View;

    .line 289
    new-instance v0, Lati;

    iget-object v1, p0, Latb;->g:Landroid/view/View;

    iget-object v2, p0, Latb;->e:Lasz;

    invoke-direct {v0, v1, v2}, Lati;-><init>(Landroid/view/View;Lasz;)V

    iput-object v0, p0, Latb;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 290
    iget-object v0, p0, Latb;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto/16 :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method
