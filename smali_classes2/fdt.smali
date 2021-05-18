.class Lfdt;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lfds;


# direct methods
.method constructor <init>(Lfds;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lfdt;->a:Lfds;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lfdt;->a:Lfds;

    invoke-static {v0}, Lfds;->a(Lfds;)Landroid/view/WindowManager;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lfdt;->a:Lfds;

    invoke-static {v1}, Lfds;->b(Lfds;)Lfdr;

    move-result-object v1

    .line 43
    iget-object v2, p0, Lfdt;->a:Lfds;

    invoke-static {v2}, Lfds;->a(Lfds;)Landroid/view/WindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 44
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 45
    iget-object v2, p0, Lfdt;->a:Lfds;

    invoke-static {v2}, Lfds;->c(Lfds;)I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 46
    iget-object v2, p0, Lfdt;->a:Lfds;

    invoke-static {v2, v0}, Lfds;->a(Lfds;I)I

    .line 47
    invoke-interface {v1, v0}, Lfdr;->a(I)V

    .line 50
    :cond_0
    return-void
.end method
