.class Lbkf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/AccessToken;)V
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lbhv;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbkf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lbkf;->b:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lbkf;->c:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 85
    new-instance v0, Lbkh;

    iget-object v1, p0, Lbkf;->b:Ljava/lang/String;

    iget-object v2, p0, Lbkf;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lbkh;-><init>(Ljava/lang/String;Ljava/lang/String;Lbkg;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lbkf;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lbkf;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 61
    instance-of v1, p1, Lbkf;

    if-nez v1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 64
    :cond_1
    check-cast p1, Lbkf;

    .line 65
    iget-object v1, p1, Lbkf;->b:Ljava/lang/String;

    iget-object v2, p0, Lbkf;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lbqq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lbkf;->c:Ljava/lang/String;

    iget-object v2, p0, Lbkf;->c:Ljava/lang/String;

    .line 66
    invoke-static {v1, v2}, Lbqq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 55
    iget-object v0, p0, Lbkf;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lbkf;->c:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 56
    :goto_1
    xor-int/2addr v0, v1

    .line 55
    return v0

    :cond_0
    iget-object v0, p0, Lbkf;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lbkf;->c:Ljava/lang/String;

    .line 56
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method
