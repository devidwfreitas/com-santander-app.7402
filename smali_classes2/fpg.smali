.class public Lfpg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lfpg;->a:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lfpg;->b:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lfpg;->c:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfpg;->d:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lfpg;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfpg;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lfpg;->a:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lfpg;->d:Z

    .line 41
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lfpg;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lfpg;->b:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lfpg;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lfpg;->c:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lfpg;->d:Z

    return v0
.end method
