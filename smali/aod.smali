.class Laod;
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
    .line 404
    iput-object p1, p0, Laod;->a:Laoa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Laod;->a:Laoa;

    invoke-static {v0}, Laoa;->g(Laoa;)Laok;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Laod;->a:Laoa;

    invoke-static {v0}, Laoa;->g(Laoa;)Laok;

    move-result-object v0

    iget-object v1, p0, Laod;->a:Laoa;

    invoke-interface {v0, v1}, Laok;->a(Laoa;)V

    .line 410
    :cond_0
    return-void
.end method
