.class public Lfta;
.super Lfvu;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lftl;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lfvu;-><init>()V

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lfta;->b:Ljava/util/Vector;

    .line 37
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lftl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lfta;->b:Ljava/util/Vector;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lfta;->c:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public a(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lftl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    iput-object p1, p0, Lfta;->b:Ljava/util/Vector;

    .line 46
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lfta;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lfta;->d:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lfta;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lfta;->e:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lfta;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lfta;->f:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lfta;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lfta;->g:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lfta;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lfta;->h:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lfta;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lfta;->i:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lfta;->i:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lfta;->j:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lfta;->j:Ljava/lang/String;

    return-object v0
.end method
