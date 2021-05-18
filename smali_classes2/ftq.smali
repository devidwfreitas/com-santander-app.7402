.class public Lftq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lftd;


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
    iget-object v0, p0, Lftq;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lftd;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lftq;->d:Lftd;

    .line 52
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lftq;->b:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lftq;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lftq;->c:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public c()Lftd;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lftq;->d:Lftd;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 41
    instance-of v0, p1, Lftq;

    if-eqz v0, :cond_0

    .line 42
    check-cast p1, Lftq;

    .line 43
    iget-object v0, p0, Lftq;->b:Ljava/lang/String;

    iget-object v1, p1, Lftq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 45
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
