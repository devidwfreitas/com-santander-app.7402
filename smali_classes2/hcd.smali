.class Lhcd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhxy;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lhca;


# direct methods
.method constructor <init>(Lhca;Ljava/lang/Runnable;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lhcd;->c:Lhca;

    iput-object p2, p0, Lhcd;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lhcd;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lhcd;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 71
    return-void
.end method

.method public a(I)V
    .locals 1
    .param p1    # I
        .annotation build Lhyr;
        .end annotation
    .end param

    .prologue
    .line 65
    iget-object v0, p0, Lhcd;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 66
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lhcd;->c:Lhca;

    iget-object v1, p0, Lhcd;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lhca;->a(Landroid/content/Context;)V

    .line 76
    return-void
.end method
