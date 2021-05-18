.class public Lgkj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Larv;


# static fields
.field private static a:Lgkj;

.field private static b:Lji;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static b()Lgkj;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lgkj;->a:Lgkj;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lgkj;

    invoke-direct {v0}, Lgkj;-><init>()V

    sput-object v0, Lgkj;->a:Lgkj;

    .line 40
    new-instance v0, Lji;

    invoke-direct {v0}, Lji;-><init>()V

    sput-object v0, Lgkj;->b:Lji;

    .line 43
    :cond_0
    sget-object v0, Lgkj;->a:Lgkj;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lgkj;->b:Lji;

    invoke-virtual {v0}, Lji;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lgkj;->b:Lji;

    invoke-virtual {v0, p1}, Lji;->b(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lgkj;->b:Lji;

    invoke-virtual {v0, p1}, Lji;->a(Z)V

    .line 49
    return-void
.end method

.method public a([B)[B
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lgkj;->b:Lji;

    invoke-virtual {v0, p1}, Lji;->a([B)[B

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public b([B)[B
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lgkj;->b:Lji;

    invoke-virtual {v0, p1}, Lji;->b([B)[B

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lgkj;->b:Lji;

    invoke-virtual {v0, p1}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c([B)[B
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lgkj;->b:Lji;

    invoke-virtual {v0, p1}, Lji;->c([B)[B

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lgkj;->b:Lji;

    invoke-virtual {v0, p1}, Lji;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d([B)[B
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lgkj;->b:Lji;

    invoke-virtual {v0, p1}, Lji;->d([B)[B

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lgkj;->b:Lji;

    invoke-virtual {v0, p1}, Lji;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lgkj;->b:Lji;

    invoke-virtual {v0, p1}, Lji;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
