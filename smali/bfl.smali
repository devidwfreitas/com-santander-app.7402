.class public Lbfl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:I

.field private b:I

.field private c:Lbfv;

.field private d:Lbfw;

.field private transient e:Lbgl;


# direct methods
.method public constructor <init>(Lbgl;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lbfv;

    invoke-direct {v0}, Lbfv;-><init>()V

    .line 28
    invoke-interface {p1, v0}, Lbgl;->a(Lbfv;)I

    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    iput v1, p0, Lbfl;->a:I

    .line 36
    :goto_0
    return-void

    .line 33
    :cond_0
    iput-object v0, p0, Lbfl;->c:Lbfv;

    .line 34
    iput v1, p0, Lbfl;->a:I

    .line 35
    iput-object p1, p0, Lbfl;->e:Lbgl;

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lbfl;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lbfl;->b:I

    .line 67
    return-void
.end method

.method public a(Lbfv;)V
    .locals 3

    .prologue
    .line 43
    iput-object p1, p0, Lbfl;->c:Lbfv;

    .line 44
    new-instance v0, Lbfw;

    invoke-direct {v0}, Lbfw;-><init>()V

    iput-object v0, p0, Lbfl;->d:Lbfw;

    .line 45
    iget-object v0, p0, Lbfl;->e:Lbgl;

    iget-object v1, p0, Lbfl;->c:Lbfv;

    iget-object v2, p0, Lbfl;->d:Lbfw;

    invoke-interface {v0, v1, v2}, Lbgl;->a(Lbfv;Lbfw;)I

    .line 46
    return-void
.end method

.method public b()Lbfv;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lbfl;->c:Lbfv;

    return-object v0
.end method

.method public c()Lbfw;
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lbfl;->d:Lbfw;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lbfw;

    invoke-direct {v0}, Lbfw;-><init>()V

    iput-object v0, p0, Lbfl;->d:Lbfw;

    .line 54
    :cond_0
    iget-object v0, p0, Lbfl;->e:Lbgl;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lbfl;->e:Lbgl;

    iget-object v1, p0, Lbfl;->c:Lbfv;

    iget-object v2, p0, Lbfl;->d:Lbfw;

    invoke-interface {v0, v1, v2}, Lbgl;->a(Lbfv;Lbfw;)I

    .line 58
    :cond_1
    iget-object v0, p0, Lbfl;->d:Lbfw;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lbfl;->b:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lbfl;->c()Lbfw;

    move-result-object v0

    invoke-virtual {v0}, Lbfw;->a()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lbfl;->c()Lbfw;

    move-result-object v0

    invoke-virtual {v0}, Lbfw;->b()I

    move-result v0

    return v0
.end method
