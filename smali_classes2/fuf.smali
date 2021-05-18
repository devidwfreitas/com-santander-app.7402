.class public Lfuf;
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

.field private g:Lfvl;

.field private h:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lfun;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lfvu;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lfuf;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lfvl;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lfuf;->g:Lfvl;

    .line 77
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lfuf;->b:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public a(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lfun;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    iput-object p1, p0, Lfuf;->h:Ljava/util/Vector;

    .line 85
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lfuf;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lfuf;->c:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lfuf;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lfuf;->d:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lfuf;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lfuf;->e:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lfuf;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lfuf;->f:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public f()Lfvl;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lfuf;->g:Lfvl;

    return-object v0
.end method

.method public g()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lfun;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lfuf;->h:Ljava/util/Vector;

    return-object v0
.end method
