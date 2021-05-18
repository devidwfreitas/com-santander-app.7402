.class public Liwu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liwt;


# instance fields
.field private a:Ljay;

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Ljay;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Liwu;->a:Ljay;

    .line 32
    iput-object p2, p0, Liwu;->b:Landroid/app/Activity;

    .line 33
    return-void
.end method

.method static synthetic a(Liwu;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Liwu;->b:Landroid/app/Activity;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 72
    iget-object v0, p0, Liwu;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Liww;

    invoke-direct {v1, p0}, Liww;-><init>(Liwu;)V

    const/4 v2, 0x0

    sget-object v3, Lgzr;->DEFAULT:Lgzr;

    invoke-static {v0, v1, v2, v3}, Lgyy;->a(Landroid/content/Context;Lgyx;Ljava/lang/String;Lgzr;)V

    .line 85
    return-void
.end method

.method static synthetic b(Liwu;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Liwu;->b()V

    return-void
.end method

.method static synthetic c(Liwu;)Ljay;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Liwu;->a:Ljay;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 37
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->c()Live;

    move-result-object v0

    invoke-virtual {v0}, Live;->a()Ljava/lang/String;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    new-instance v1, Ljbo;

    new-instance v2, Liwv;

    invoke-direct {v2, p0, v0}, Liwv;-><init>(Liwu;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljbo;-><init>(Lgkw;)V

    .line 65
    invoke-virtual {v1}, Ljbo;->a()V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-direct {p0}, Liwu;->b()V

    goto :goto_0
.end method
