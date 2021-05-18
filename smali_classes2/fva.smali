.class public Lfva;
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

.field private f:Lfvl;

.field private g:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lfvc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lfvu;-><init>()V

    return-void
.end method

.method public static a()J
    .locals 2

    .prologue
    .line 31
    const-wide/16 v0, 0x1

    return-wide v0
.end method


# virtual methods
.method public a(Lfvl;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lfva;->f:Lfvl;

    .line 72
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lfva;->b:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public a(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lfvc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    iput-object p1, p0, Lfva;->g:Ljava/util/Vector;

    .line 81
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lfva;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lfva;->c:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lfva;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lfva;->d:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lfva;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lfva;->e:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lfva;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lfvl;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lfva;->f:Lfvl;

    return-object v0
.end method

.method public g()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lfvc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lfva;->g:Ljava/util/Vector;

    return-object v0
.end method
