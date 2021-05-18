.class public Lkhy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkhy;->h:Z

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkhy;->i:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lkhy;->g:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lkhy;->i:Z

    .line 26
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lkhy;->i:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lkhy;->g:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lkhy;->a:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 89
    iput-boolean p1, p0, Lkhy;->h:Z

    .line 90
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lkhy;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lkhy;->b:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lkhy;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lkhy;->c:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lkhy;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lkhy;->d:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lkhy;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lkhy;->e:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lkhy;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lkhy;->f:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lkhy;->f:Ljava/lang/String;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lkhy;->h:Z

    return v0
.end method
