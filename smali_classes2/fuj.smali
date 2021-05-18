.class public Lfuj;
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

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lfvu;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfuj;->f:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lfuj;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lfuj;->b:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lfuj;->f:Z

    .line 57
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lfuj;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lfuj;->c:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lfuj;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lfuj;->d:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lfuj;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lfuj;->e:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lfuj;->f:Z

    return v0
.end method
