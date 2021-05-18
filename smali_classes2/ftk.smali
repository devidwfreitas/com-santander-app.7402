.class public Lftk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lftf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lftk;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lftf;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lftk;->e:Lftf;

    .line 47
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lftk;->b:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lftk;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lftk;->c:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lftk;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lftk;->d:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public d()Lftf;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lftk;->e:Lftf;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 55
    instance-of v1, p1, Lftk;

    if-eqz v1, :cond_0

    .line 56
    check-cast p1, Lftk;

    .line 57
    iget-object v1, p0, Lftk;->b:Ljava/lang/String;

    iget-object v2, p1, Lftk;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lftk;->c:Ljava/lang/String;

    iget-object v2, p1, Lftk;->c:Ljava/lang/String;

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 60
    :cond_0
    return v0
.end method
