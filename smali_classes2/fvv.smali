.class public Lfvv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lfvv;->a:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lfvv;->b:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lfvv;->c:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lfvv;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lfvv;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lfvv;->a:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lfvv;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lfvv;->b:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lfvv;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lfvv;->c:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lfvv;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lfvv;->d:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lfvv;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfvv;->a:Ljava/lang/String;

    .line 43
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lfvv;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lfvv;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfvv;->b:Ljava/lang/String;

    .line 48
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lfvv;->d:Ljava/lang/String;

    goto :goto_0
.end method
