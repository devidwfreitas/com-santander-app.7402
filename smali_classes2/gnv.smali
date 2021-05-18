.class public Lgnv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# static fields
.field private static c:I


# instance fields
.field private a:Lgkw;

.field private b:Lir;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput v0, Lgnv;->c:I

    return-void
.end method

.method public constructor <init>(Lgkw;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lgnv;->a:Lgkw;

    .line 29
    return-void
.end method

.method public constructor <init>(Lgkw;Lir;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lgnv;->a:Lgkw;

    .line 33
    iput-object p2, p0, Lgnv;->b:Lir;

    .line 34
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lgnv;->c:I

    return v0
.end method

.method static synthetic a(Lgnv;)Lir;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lgnv;->b:Lir;

    return-object v0
.end method

.method static synthetic b()I
    .locals 2

    .prologue
    .line 20
    sget v0, Lgnv;->c:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lgnv;->c:I

    return v0
.end method

.method static synthetic b(Lgnv;)Lgkw;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lgnv;->a:Lgkw;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    new-instance v1, Lgnw;

    invoke-direct {v1, p0}, Lgnw;-><init>(Lgnv;)V

    invoke-virtual {v0, v1}, Lgnp;->b(Lih;)V

    .line 90
    return-void
.end method

.method static synthetic c(Lgnv;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lgnv;->c()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x191

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x19c

    if-ne v0, v1, :cond_2

    .line 45
    :cond_0
    iget-object v0, p0, Lgnv;->b:Lir;

    invoke-virtual {v0}, Lir;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lgny;->TOKEN_VALIDADE:Lgny;

    invoke-virtual {v1}, Lgny;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    invoke-direct {p0}, Lgnv;->c()V

    .line 50
    :cond_1
    :goto_0
    return-void

    .line 48
    :cond_2
    iget-object v0, p0, Lgnv;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onSuccess(Lis;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lgnv;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 39
    return-void
.end method
