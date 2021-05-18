.class public Lio;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 34
    iget-object v0, p0, Lio;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lia;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "baseURL key not found"

    invoke-direct {v0, v1, v2}, Lia;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    iget-object v0, p0, Lio;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Lia;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "appKey key not found"

    invoke-direct {v0, v1, v2}, Lia;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    iget-object v0, p0, Lio;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Lia;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "certificate key not found"

    invoke-direct {v0, v1, v2}, Lia;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_2
    iget-object v0, p0, Lio;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    new-instance v0, Lia;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "system key not found"

    invoke-direct {v0, v1, v2}, Lia;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_3
    iget-object v0, p0, Lio;->e:Ljava/lang/Integer;

    if-nez v0, :cond_4

    new-instance v0, Lia;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "timeoutInterval key not found"

    invoke-direct {v0, v1, v2}, Lia;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_4
    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lio;->e:Ljava/lang/Integer;

    .line 80
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lio;->a:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lio;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lio;->b:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lio;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lio;->c:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lio;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lio;->d:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lio;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lio;->e:Ljava/lang/Integer;

    return-object v0
.end method
