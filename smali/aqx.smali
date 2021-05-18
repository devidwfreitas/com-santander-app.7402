.class public Laqx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Larb;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Larv;

.field private final g:Laqw;

.field private final h:Ljava/lang/Integer;

.field private final i:Ljava/lang/Integer;

.field private final j:Lapa;

.field private k:Z


# direct methods
.method public constructor <init>(Laqy;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Laqy;->a(Laqy;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Laqx;->a:Landroid/content/Context;

    .line 29
    invoke-static {p1}, Laqy;->b(Laqy;)Larb;

    move-result-object v0

    iput-object v0, p0, Laqx;->b:Larb;

    .line 30
    invoke-static {p1}, Laqy;->c(Laqy;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laqx;->c:Ljava/lang/String;

    .line 31
    invoke-static {p1}, Laqy;->d(Laqy;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laqx;->d:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Laqy;->e(Laqy;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laqx;->e:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Laqy;->f(Laqy;)Larv;

    move-result-object v0

    iput-object v0, p0, Laqx;->f:Larv;

    .line 34
    invoke-static {p1}, Laqy;->g(Laqy;)Laqw;

    move-result-object v0

    iput-object v0, p0, Laqx;->g:Laqw;

    .line 35
    invoke-static {p1}, Laqy;->h(Laqy;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Laqx;->h:Ljava/lang/Integer;

    .line 36
    invoke-static {p1}, Laqy;->i(Laqy;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Laqx;->i:Ljava/lang/Integer;

    .line 37
    invoke-static {p1}, Laqy;->j(Laqy;)Z

    move-result v0

    iput-boolean v0, p0, Laqx;->k:Z

    .line 38
    invoke-static {p1}, Laqy;->k(Laqy;)Lapa;

    move-result-object v0

    iput-object v0, p0, Laqx;->j:Lapa;

    .line 39
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Laqx;->a:Landroid/content/Context;

    return-object v0
.end method

.method public b()Larb;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Laqx;->b:Larb;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Laqx;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Laqx;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Laqx;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lapa;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Laqx;->j:Lapa;

    return-object v0
.end method

.method public g()Larv;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Laqx;->f:Larv;

    return-object v0
.end method

.method public h()Laqw;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Laqx;->g:Laqw;

    return-object v0
.end method

.method public i()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Laqx;->h:Ljava/lang/Integer;

    return-object v0
.end method

.method public j()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Laqx;->i:Ljava/lang/Integer;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Laqx;->k:Z

    return v0
.end method
