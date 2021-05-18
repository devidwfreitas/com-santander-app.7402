.class public Lnec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lgkw;

.field private b:Landroid/app/Activity;

.field private c:Z

.field private d:Lmip;


# direct methods
.method public constructor <init>(Lgkw;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnec;->c:Z

    .line 29
    iput-object p1, p0, Lnec;->a:Lgkw;

    .line 30
    iput-object p2, p0, Lnec;->b:Landroid/app/Activity;

    .line 31
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lnec;->d:Lmip;

    .line 32
    return-void
.end method

.method public constructor <init>(Lgkw;Landroid/app/Activity;Z)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnec;->c:Z

    .line 35
    iput-object p1, p0, Lnec;->a:Lgkw;

    .line 36
    iput-object p2, p0, Lnec;->b:Landroid/app/Activity;

    .line 37
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lnec;->d:Lmip;

    .line 38
    iput-boolean p3, p0, Lnec;->c:Z

    .line 39
    return-void
.end method

.method static synthetic a(Lnec;)Lgkw;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lnec;->a:Lgkw;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lnel;

    new-instance v1, Lned;

    invoke-direct {v1, p0}, Lned;-><init>(Lnec;)V

    iget-object v2, p0, Lnec;->b:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lnel;-><init>(Lgkv;Landroid/app/Activity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 47
    invoke-virtual {v0, v1}, Lnel;->c([Ljava/lang/Object;)Lgne;

    .line 48
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    iget-boolean v0, p0, Lnec;->c:Z

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Lnem;

    new-instance v1, Lnef;

    invoke-direct {v1, p0}, Lnef;-><init>(Lnec;)V

    iget-object v2, p0, Lnec;->b:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lnem;-><init>(Lgkv;Landroid/app/Activity;)V

    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v3

    .line 72
    invoke-virtual {v0, v1}, Lnem;->c([Ljava/lang/Object;)Lgne;

    .line 81
    :goto_0
    return-void

    .line 74
    :cond_0
    new-instance v0, Lnen;

    new-instance v1, Lneg;

    invoke-direct {v1, p0}, Lneg;-><init>(Lnec;)V

    iget-object v2, p0, Lnec;->b:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lnen;-><init>(Lgkv;Landroid/app/Activity;)V

    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v3

    .line 79
    invoke-virtual {v0, v1}, Lnen;->c([Ljava/lang/Object;)Lgne;

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 51
    new-instance v0, Lnay;

    invoke-direct {v0}, Lnay;-><init>()V

    .line 52
    iget-object v1, p0, Lnec;->d:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnay;->setConnUuid(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lnec;->d:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnay;->setTokenSessao(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lnec;->d:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnay;->setTokenTransacao(Ljava/lang/String;)V

    .line 56
    new-instance v1, Lneo;

    new-instance v2, Lnee;

    invoke-direct {v2, p0}, Lnee;-><init>(Lnec;)V

    invoke-direct {v1, v2}, Lneo;-><init>(Lgkv;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lnay;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 61
    invoke-virtual {v1, v2}, Lneo;->c([Ljava/lang/Object;)Lgne;

    .line 62
    return-void
.end method
