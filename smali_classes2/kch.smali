.class public Lkch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkcf;


# instance fields
.field private a:Lkcn;

.field private b:Lkcg;


# direct methods
.method public constructor <init>(Lkcg;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lkch;->b:Lkcg;

    .line 30
    new-instance v0, Lkco;

    invoke-direct {v0}, Lkco;-><init>()V

    iput-object v0, p0, Lkch;->a:Lkcn;

    .line 31
    return-void
.end method

.method static synthetic a(Lkch;)Lkcg;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lkch;->b:Lkcg;

    return-object v0
.end method

.method private b(Ljava/lang/String;Lkce;)Lkcc;
    .locals 5

    .prologue
    .line 72
    new-instance v0, Lnaf;

    invoke-direct {v0}, Lnaf;-><init>()V

    .line 73
    new-instance v1, Lfwv;

    invoke-direct {v1}, Lfwv;-><init>()V

    .line 75
    new-instance v2, Lkcc;

    invoke-direct {v2}, Lkcc;-><init>()V

    .line 78
    :try_start_0
    invoke-virtual {v1}, Lfwv;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkcc;->a(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1}, Lfwv;->l()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lkcc;->b(Ljava/lang/String;)V

    .line 80
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lkcc;->c(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Lkce;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lkcc;->d(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lkcc;->setConnUuid(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-object v2

    .line 84
    :catch_0
    move-exception v0

    .line 85
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lkch;->a:Lkcn;

    new-instance v1, Lkci;

    invoke-direct {v1, p0}, Lkci;-><init>(Lkch;)V

    invoke-interface {v0, v1}, Lkcn;->a(Lgkw;)V

    .line 41
    return-void
.end method

.method public a(Ljava/lang/String;Lkce;)V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lkch;->a:Lkcn;

    new-instance v1, Lkck;

    invoke-direct {v1, p0}, Lkck;-><init>(Lkch;)V

    .line 66
    invoke-direct {p0, p1, p2}, Lkch;->b(Ljava/lang/String;Lkce;)Lkcc;

    move-result-object v2

    .line 56
    invoke-interface {v0, v1, v2}, Lkcn;->a(Lgkw;Lkcc;)V

    .line 68
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lkch;->a:Lkcn;

    new-instance v1, Lkcj;

    invoke-direct {v1, p0}, Lkcj;-><init>(Lkch;)V

    invoke-interface {v0, v1}, Lkcn;->b(Lgkw;)V

    .line 51
    return-void
.end method
