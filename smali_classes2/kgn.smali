.class public Lkgn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lkgx;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkgx;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "Ocorreu um erro ao carregar as informa\u00e7\u00f5es"

    iput-object v0, p0, Lkgn;->b:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lkgn;->a:Lkgx;

    .line 32
    return-void
.end method

.method static synthetic a(Lkgn;)Lkgx;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lkgn;->a:Lkgx;

    return-object v0
.end method

.method private b()Lgkv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgkv",
            "<",
            "Lkgk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lkgo;

    invoke-direct {v0, p0}, Lkgo;-><init>(Lkgn;)V

    return-object v0
.end method

.method private c()Lgkv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgkv",
            "<",
            "Lkgi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lkgp;

    invoke-direct {v0, p0}, Lkgp;-><init>(Lkgn;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 36
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 37
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 38
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 39
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 41
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 45
    new-instance v1, Lkgl;

    invoke-direct {v1}, Lkgl;-><init>()V

    .line 46
    invoke-static {}, Lmzr;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkgl;->a(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lmzr;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkgl;->e(Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v2

    invoke-virtual {v2}, Lmiq;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkgl;->d(Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v2

    invoke-virtual {v2}, Lmiq;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkgl;->z(Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v2

    invoke-virtual {v2}, Lmiq;->f()Lmir;

    move-result-object v2

    invoke-virtual {v2}, Lmir;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkgl;->A(Ljava/lang/String;)V

    .line 53
    const-string v2, "false"

    invoke-virtual {v1, v2}, Lkgl;->b(Ljava/lang/String;)V

    .line 54
    const-string v2, "false"

    invoke-virtual {v1, v2}, Lkgl;->k(Ljava/lang/String;)V

    .line 55
    const-string v2, "false"

    invoke-virtual {v1, v2}, Lkgl;->v(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1, v0}, Lkgl;->h(Ljava/lang/String;)V

    .line 58
    new-instance v0, Lkhg;

    invoke-direct {p0}, Lkgn;->b()Lgkv;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkhg;-><init>(Lkgl;Lgkv;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lkhg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 59
    return-void
.end method

.method public a(Lkgj;)V
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkgj;->f(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkgj;->B(Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0}, Lhau;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkgj;->C(Ljava/lang/String;)V

    .line 91
    new-instance v0, Lkko;

    invoke-direct {p0}, Lkgn;->c()Lgkv;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lkko;-><init>(Lkgj;Lgkv;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lkko;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 92
    return-void
.end method
