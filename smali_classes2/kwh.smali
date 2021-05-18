.class public Lkwh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lkwi;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v0, p0, Lkwh;->e:Z

    .line 18
    iput-boolean v0, p0, Lkwh;->f:Z

    .line 19
    iput-boolean v1, p0, Lkwh;->g:Z

    .line 20
    iput-boolean v1, p0, Lkwh;->h:Z

    .line 21
    sget-object v0, Lkwi;->EDIT:Lkwi;

    iput-object v0, p0, Lkwh;->i:Lkwi;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lkwh;->a:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public a(Lkwi;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lkwh;->i:Lkwi;

    .line 37
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lkwh;->h:Z

    .line 29
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lkwh;->h:Z

    return v0
.end method

.method public b()Lkwi;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lkwh;->i:Lkwi;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lkwh;->b:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lkwh;->e:Z

    .line 45
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lkwh;->c:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 84
    iput-boolean p1, p0, Lkwh;->f:Z

    .line 85
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lkwh;->e:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lkwh;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lkwh;->d:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 92
    iput-boolean p1, p0, Lkwh;->g:Z

    .line 93
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lkwh;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lkwh;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lkwh;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lkwh;->f:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lkwh;->g:Z

    return v0
.end method
