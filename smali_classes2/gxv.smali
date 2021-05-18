.class public Lgxv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lgkw;

.field private b:Landroid/app/Activity;

.field private c:Lgta;

.field private d:Lmip;


# direct methods
.method public constructor <init>(Lgkw;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lgxv;->a:Lgkw;

    .line 36
    iput-object p2, p0, Lgxv;->b:Landroid/app/Activity;

    .line 37
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lgxv;->d:Lmip;

    .line 38
    return-void
.end method

.method static synthetic a(Lgxv;)Lgkw;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lgxv;->a:Lgkw;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 41
    new-instance v1, Lgxd;

    invoke-direct {v1}, Lgxd;-><init>()V

    .line 42
    iget-object v0, p0, Lgxv;->d:Lmip;

    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgxd;->setConnUuid(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lgxv;->d:Lmip;

    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgxd;->setTokenSessao(Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0}, Lhau;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgxd;->setTokenTransacao(Ljava/lang/String;)V

    .line 46
    :try_start_0
    iget-object v0, p0, Lgxv;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lgxv;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lgxd;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    new-instance v0, Lgya;

    new-instance v2, Lgxw;

    invoke-direct {v2, p0}, Lgxw;-><init>(Lgxv;)V

    iget-object v3, p0, Lgxv;->b:Landroid/app/Activity;

    invoke-direct {v0, v2, v3}, Lgya;-><init>(Lgkv;Landroid/app/Activity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lgxd;

    aput-object v1, v2, v4

    .line 56
    invoke-virtual {v0, v2}, Lgya;->c([Ljava/lang/Object;)Lgne;

    .line 58
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    const-string v2, "Error"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 80
    new-instance v0, Lgxf;

    invoke-direct {v0}, Lgxf;-><init>()V

    .line 82
    invoke-virtual {v0, p1}, Lgxf;->b(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, p2}, Lgxf;->a(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lgxv;->d:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgxf;->setConnUuid(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lgxv;->d:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgxf;->setTokenSessao(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lgxv;->d:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgxf;->setTokenTransacao(Ljava/lang/String;)V

    .line 88
    new-instance v1, Lgyb;

    new-instance v2, Lgxy;

    invoke-direct {v2, p0}, Lgxy;-><init>(Lgxv;)V

    iget-object v3, p0, Lgxv;->b:Landroid/app/Activity;

    invoke-direct {v1, v2, v3}, Lgyb;-><init>(Lgkv;Landroid/app/Activity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lgxf;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 93
    invoke-virtual {v1, v2}, Lgyb;->c([Ljava/lang/Object;)Lgne;

    .line 95
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 61
    new-instance v0, Lgwz;

    invoke-direct {v0}, Lgwz;-><init>()V

    .line 62
    iget-object v1, p0, Lgxv;->d:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgwz;->setConnUuid(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lgxv;->d:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgwz;->setTokenSessao(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v1

    invoke-virtual {v1}, Lhau;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgwz;->setTokenTransacao(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, p1}, Lgwz;->a(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0, p2}, Lgwz;->b(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, p3}, Lgwz;->c(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, p4}, Lgwz;->d(Ljava/lang/String;)V

    .line 70
    new-instance v1, Lgxz;

    new-instance v2, Lgxx;

    invoke-direct {v2, p0}, Lgxx;-><init>(Lgxv;)V

    iget-object v3, p0, Lgxv;->b:Landroid/app/Activity;

    invoke-direct {v1, v2, v3}, Lgxz;-><init>(Lgkv;Landroid/app/Activity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lgwz;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 75
    invoke-virtual {v1, v2}, Lgxz;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 76
    return-void
.end method
