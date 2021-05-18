.class public Lfss;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private b:I

.field private c:Lfst;

.field private d:Ljava/lang/String;

.field private e:Lftx;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lfss;->b:I

    return-void
.end method


# virtual methods
.method public a()Lfst;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lfss;->c:Lfst;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lfss;->b:I

    .line 52
    return-void
.end method

.method public a(Lfst;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lfss;->c:Lfst;

    .line 36
    return-void
.end method

.method public a(Lftx;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lfss;->e:Lftx;

    .line 44
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lfss;->d:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public b()Lftx;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lfss;->e:Lftx;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lfss;->b:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lfss;->d:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 64
    instance-of v1, p1, Lfss;

    if-eqz v1, :cond_0

    .line 65
    check-cast p1, Lfss;

    .line 67
    iget-object v1, p0, Lfss;->c:Lfst;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lfss;->c:Lfst;

    if-nez v1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 70
    :cond_1
    iget-object v1, p0, Lfss;->c:Lfst;

    invoke-virtual {v1}, Lfst;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lfss;->c:Lfst;

    invoke-virtual {v2}, Lfst;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfss;->c:Lfst;

    .line 71
    invoke-virtual {v1}, Lfst;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lfss;->c:Lfst;

    invoke-virtual {v2}, Lfst;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
