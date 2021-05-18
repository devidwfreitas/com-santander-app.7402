.class public Ljbd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljbc;


# instance fields
.field private a:Ljaa;

.field private b:Liwz;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljaa;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Ljbd;->a:Ljaa;

    .line 26
    new-instance v0, Lixa;

    invoke-direct {v0, p0, p2}, Lixa;-><init>(Ljbc;Landroid/app/Activity;)V

    iput-object v0, p0, Ljbd;->b:Liwz;

    .line 27
    return-void
.end method

.method static synthetic a(Ljbd;)Ljaa;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Ljbd;->a:Ljaa;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ljbd;->c:Landroid/os/Handler;

    .line 32
    iget-object v0, p0, Ljbd;->c:Landroid/os/Handler;

    new-instance v1, Ljbe;

    invoke-direct {v1, p0}, Ljbe;-><init>(Ljbd;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 39
    return-void
.end method

.method public a(Liuz;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Ljbd;->b:Liwz;

    invoke-interface {v0, p1}, Liwz;->a(Liuz;)V

    .line 49
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Ljbd;->b:Liwz;

    invoke-interface {v0}, Liwz;->a()V

    .line 44
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Ljbd;->a:Ljaa;

    invoke-interface {v0}, Ljaa;->c()V

    .line 54
    return-void
.end method

.method public d()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Ljbd;->c:Landroid/os/Handler;

    return-object v0
.end method
