.class public Lfwc;
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

.field private f:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lfwh;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lfwl;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lftn;

.field private l:Lfta;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lfvu;-><init>()V

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lfwc;->f:Ljava/util/Vector;

    .line 44
    new-instance v0, Lfwl;

    invoke-direct {v0}, Lfwl;-><init>()V

    iput-object v0, p0, Lfwc;->g:Lfwl;

    .line 45
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lfwc;->h:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lfta;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lfwc;->l:Lfta;

    .line 84
    return-void
.end method

.method public a(Lftn;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lfwc;->k:Lftn;

    .line 91
    return-void
.end method

.method public a(Lfwl;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lfwc;->g:Lfwl;

    .line 71
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lfwc;->h:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public a(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lfwh;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    iput-object p1, p0, Lfwc;->f:Ljava/util/Vector;

    .line 77
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lfwc;->i:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lfwc;->i:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lfwc;->j:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lfwc;->j:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public d()Lfwl;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lfwc;->g:Lfwl;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lfwc;->e:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public e()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lfwh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lfwc;->f:Ljava/util/Vector;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lfwc;->b:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public f()Lfta;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lfwc;->l:Lfta;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lfwc;->c:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public g()Lftn;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lfwc;->k:Lftn;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lfwc;->d:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lfwc;->e:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lfwc;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lfwc;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lfwc;->d:Ljava/lang/String;

    return-object v0
.end method
