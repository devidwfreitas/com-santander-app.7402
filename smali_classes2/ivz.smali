.class public Livz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Livy;


# instance fields
.field private a:Ljal;

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Ljal;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Livz;->a:Ljal;

    .line 35
    iput-object p2, p0, Livz;->b:Landroid/app/Activity;

    .line 36
    return-void
.end method

.method static synthetic a(Livz;)Ljal;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Livz;->a:Ljal;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Ljbh;

    new-instance v1, Liwa;

    invoke-direct {v1, p0}, Liwa;-><init>(Livz;)V

    iget-object v2, p0, Livz;->b:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Ljbh;-><init>(Lgkw;Landroid/app/Activity;)V

    .line 66
    invoke-virtual {v0}, Ljbh;->a()V

    .line 67
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 72
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->c()Live;

    move-result-object v0

    invoke-virtual {v0}, Live;->a()Ljava/lang/String;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    invoke-static {v0}, Lalb;->c(Ljava/lang/String;)V

    .line 78
    :cond_0
    iget-object v0, p0, Livz;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Liwb;

    invoke-direct {v1, p0, p1}, Liwb;-><init>(Livz;Ljava/lang/Object;)V

    const/4 v2, 0x0

    sget-object v3, Lgzr;->SMS:Lgzr;

    invoke-static {v0, v1, v2, v3}, Lgyy;->a(Landroid/content/Context;Lgyx;Ljava/lang/String;Lgzr;)V

    .line 95
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 99
    new-instance v0, Ljbh;

    new-instance v1, Liwc;

    invoke-direct {v1, p0, p1, p2}, Liwc;-><init>(Livz;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Livz;->b:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Ljbh;-><init>(Lgkw;Landroid/app/Activity;)V

    .line 136
    invoke-virtual {v0, p1, p2}, Ljbh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method
