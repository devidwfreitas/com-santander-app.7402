.class public Lfuw;
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

.field private f:Lfvb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lfvu;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lfuw;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lfvb;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lfuw;->f:Lfvb;

    .line 75
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lfuw;->b:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lfuw;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lfuw;->c:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lfuw;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lfuw;->d:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public d()Lfvb;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lfuw;->f:Lfvb;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lfuw;->e:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lfuw;->e:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 60
    instance-of v0, p1, Lfuw;

    if-eqz v0, :cond_0

    .line 61
    check-cast p1, Lfuw;

    .line 62
    iget-object v0, p0, Lfuw;->b:Ljava/lang/String;

    iget-object v1, p1, Lfuw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 64
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
