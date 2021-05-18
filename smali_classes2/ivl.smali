.class public Livl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "0"

    iput-object v0, p0, Livl;->a:Ljava/lang/String;

    .line 15
    const-string v0, "74015"

    iput-object v0, p0, Livl;->b:Ljava/lang/String;

    .line 16
    const-string v0, "74016"

    iput-object v0, p0, Livl;->c:Ljava/lang/String;

    .line 17
    const-string v0, "74100"

    iput-object v0, p0, Livl;->d:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lftz;)Z
    .locals 2

    .prologue
    .line 24
    invoke-virtual {p1}, Lftz;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Lftz;)Z
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p1}, Lftz;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "74015"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c(Lftz;)Z
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p1}, Lftz;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "74016"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d(Lftz;)Z
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p1}, Lftz;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "74100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
