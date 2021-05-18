.class public Ljbf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lgkw;

.field private b:Lmip;

.field private c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lgkw;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Ljbf;->a:Lgkw;

    .line 27
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Ljbf;->b:Lmip;

    .line 28
    iput-object p2, p0, Ljbf;->c:Landroid/app/Activity;

    .line 29
    return-void
.end method

.method static synthetic a(Ljbf;)Lgkw;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Ljbf;->a:Lgkw;

    return-object v0
.end method


# virtual methods
.method public a(Ljqi;)V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Ljbu;

    new-instance v1, Ljbg;

    invoke-direct {v1, p0}, Ljbg;-><init>(Ljbf;)V

    iget-object v2, p0, Ljbf;->c:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Ljbu;-><init>(Lgkv;Landroid/app/Activity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljqi;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 38
    invoke-virtual {v0, v1}, Ljbu;->c([Ljava/lang/Object;)Lgne;

    .line 39
    return-void
.end method
