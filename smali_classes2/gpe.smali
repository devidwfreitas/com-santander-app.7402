.class public abstract Lgpe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lmxc;

.field private b:Laoa;

.field private c:Lgpj;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lgpe;-><init>(Landroid/view/View;Lgpj;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lgpj;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lmxc;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmxc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lgpe;->a:Lmxc;

    .line 31
    iput-object p2, p0, Lgpe;->c:Lgpj;

    .line 32
    invoke-direct {p0, p1}, Lgpe;->a(Landroid/view/View;)V

    .line 33
    return-void
.end method

.method static synthetic a(Lgpe;)Lgpj;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lgpe;->c:Lgpj;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 36
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090b00

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {p1, v0}, Laoa;->a(Landroid/view/View;Ljava/lang/String;)Laoa;

    move-result-object v0

    iput-object v0, p0, Lgpe;->b:Laoa;

    .line 39
    iget-object v0, p0, Lgpe;->b:Laoa;

    new-instance v1, Lgpf;

    invoke-direct {v1, p0}, Lgpf;-><init>(Lgpe;)V

    invoke-virtual {v0, v1}, Laoa;->a(Laok;)V

    .line 51
    iget-object v0, p0, Lgpe;->b:Laoa;

    new-instance v1, Lgpg;

    invoke-direct {v1, p0}, Lgpg;-><init>(Lgpe;)V

    invoke-virtual {v0, v1}, Laoa;->a(Laol;)V

    .line 61
    return-void
.end method

.method static synthetic b(Lgpe;)Lmxc;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lgpe;->a:Lmxc;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)V
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lgpe;->a:Lmxc;

    invoke-virtual {v0}, Lmxc;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lgpe;->c:Lgpj;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lgpe;->c:Lgpj;

    invoke-interface {v0}, Lgpj;->a()V

    .line 70
    :cond_0
    iget-object v0, p0, Lgpe;->b:Laoa;

    invoke-virtual {v0}, Laoa;->b()V

    .line 71
    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    .line 73
    :cond_1
    iget-object v0, p0, Lgpe;->b:Laoa;

    invoke-virtual {v0}, Laoa;->c()V

    .line 74
    const/4 v0, 0x0

    goto :goto_0
.end method
