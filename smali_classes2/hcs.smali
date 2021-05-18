.class public Lhcs;
.super Lfvu;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x4d4ed690e13eb0f1L


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhct;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lfvu;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhcs;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lhcs;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lhct;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lhcs;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lhcs;->b:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lhct;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lhcs;->c:Ljava/util/List;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lhcs;->d:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lhcs;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lhcs;->e:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lhcs;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lhcs;->f:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lhcs;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lhcs;->g:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lhcs;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lhcs;->h:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lhcs;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lhcs;->i:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lhcs;->i:Ljava/lang/String;

    return-object v0
.end method
