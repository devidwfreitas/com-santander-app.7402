.class public Lixa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liwz;


# instance fields
.field private a:Ljbc;

.field private b:Landroid/app/Activity;

.field private c:Liuz;


# direct methods
.method public constructor <init>(Ljbc;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lixa;->a:Ljbc;

    .line 28
    iput-object p2, p0, Lixa;->b:Landroid/app/Activity;

    .line 29
    return-void
.end method

.method static synthetic a(Lixa;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lixa;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lixa;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lixa;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 73
    check-cast p1, Livh;

    .line 74
    invoke-virtual {p1}, Livh;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lixa;->a:Ljbc;

    invoke-interface {v0}, Ljbc;->c()V

    .line 76
    :cond_0
    return-void
.end method

.method static synthetic b(Lixa;)Liuz;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lixa;->c:Liuz;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Ljbq;

    new-instance v1, Lixd;

    invoke-direct {v1, p0}, Lixd;-><init>(Lixa;)V

    iget-object v2, p0, Lixa;->b:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Ljbq;-><init>(Lgkw;Landroid/app/Activity;)V

    .line 69
    invoke-virtual {v0}, Ljbq;->a()V

    .line 70
    return-void
.end method

.method public a(Liuz;)V
    .locals 3

    .prologue
    .line 33
    iput-object p1, p0, Lixa;->c:Liuz;

    .line 35
    new-instance v0, Ljbq;

    new-instance v1, Lixb;

    invoke-direct {v1, p0, p1}, Lixb;-><init>(Lixa;Liuz;)V

    iget-object v2, p0, Lixa;->b:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Ljbq;-><init>(Lgkw;Landroid/app/Activity;)V

    .line 49
    invoke-virtual {v0}, Ljbq;->a()V

    .line 50
    return-void
.end method
