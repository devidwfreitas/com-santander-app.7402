.class public Lfwb;
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

.field private j:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lfwj;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lftm;

.field private l:Lftn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lfvu;-><init>()V

    .line 39
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lfwb;->j:Ljava/util/Vector;

    .line 40
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lfwb;->e:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lftm;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lfwb;->k:Lftm;

    .line 83
    return-void
.end method

.method public a(Lftn;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lfwb;->l:Lftn;

    .line 90
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lfwb;->e:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public a(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lfwj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    iput-object p1, p0, Lfwb;->j:Ljava/util/Vector;

    .line 77
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lfwb;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lfwb;->f:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lfwb;->g:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lfwb;->g:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lfwb;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lfwb;->h:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lfwb;->i:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lfwb;->i:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public f()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lfwj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lfwb;->j:Ljava/util/Vector;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lfwb;->d:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public g()Lftm;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lfwb;->k:Lftm;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lfwb;->b:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public h()Lftn;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lfwb;->l:Lftn;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lfwb;->c:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lfwb;->d:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lfwb;->b:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lfwb;->c:Ljava/lang/String;

    return-object v0
.end method
