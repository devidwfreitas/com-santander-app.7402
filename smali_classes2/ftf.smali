.class public Lftf;
.super Lfvu;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lfte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lfvu;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lftf;->k:Ljava/util/Vector;

    .line 36
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lftf;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lftf;->b:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public a(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lfte;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    iput-object p1, p0, Lftf;->k:Ljava/util/Vector;

    .line 85
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lftf;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lftf;->c:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lftf;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lftf;->d:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lftf;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lftf;->e:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lftf;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lftf;->f:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public f()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lfte;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lftf;->k:Ljava/util/Vector;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lftf;->g:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lftf;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lftf;->h:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lftf;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lftf;->i:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lftf;->i:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lftf;->j:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lftf;->j:Ljava/lang/String;

    return-object v0
.end method
