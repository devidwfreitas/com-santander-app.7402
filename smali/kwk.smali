.class public Lkwk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Integer;
    .annotation runtime Leks;
        a = "id"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "documentType"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "documentName"
    .end annotation
.end field

.field private d:Lkuw;
    .annotation runtime Leks;
        a = "documentStatus"
    .end annotation
.end field

.field private e:Z
    .annotation runtime Leks;
        a = "hide"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkwk;->a:Ljava/lang/Integer;

    .line 69
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lkwk;->b:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public a(Lkuw;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lkwk;->d:Lkuw;

    .line 60
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lkwk;->e:Z

    .line 52
    return-void
.end method

.method public a()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 24
    iget-object v2, p0, Lkwk;->d:Lkuw;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lkwk;->d:Lkuw;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "E"

    aput-object v4, v3, v1

    const-string v4, "X"

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Lkuw;->a([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lkwk;->c:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public b()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 28
    iget-object v2, p0, Lkwk;->d:Lkuw;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lkwk;->d:Lkuw;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "R"

    aput-object v4, v3, v1

    const-string v4, "Z"

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Lkuw;->a([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lkwk;->e:Z

    return v0
.end method

.method public d()Lkuw;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lkwk;->d:Lkuw;

    return-object v0
.end method

.method public e()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lkwk;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lkwk;->a:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lkwk;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lkwk;->c:Ljava/lang/String;

    return-object v0
.end method
