.class Laog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Laoa;


# direct methods
.method constructor <init>(Laoa;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Laog;->a:Laoa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 436
    const/4 v0, 0x1

    .line 437
    iget-object v1, p0, Laog;->a:Laoa;

    invoke-static {v1}, Laoa;->k(Laoa;)Laol;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 438
    iget-object v0, p0, Laog;->a:Laoa;

    invoke-static {v0}, Laoa;->k(Laoa;)Laol;

    move-result-object v0

    iget-object v1, p0, Laog;->a:Laoa;

    invoke-interface {v0, v1}, Laol;->a(Laoa;)Z

    move-result v0

    .line 440
    :cond_0
    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Laog;->a:Laoa;

    invoke-virtual {v0}, Laoa;->c()V

    .line 442
    :cond_1
    return-void
.end method
