.class Labe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Labb;


# direct methods
.method constructor <init>(Labb;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Labe;->a:Labb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Labe;->a:Labb;

    invoke-static {v0}, Labb;->e(Labb;)Labm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Labe;->a:Labb;

    invoke-static {v0}, Labb;->e(Labb;)Labm;

    move-result-object v0

    iget-object v1, p0, Labe;->a:Labb;

    invoke-interface {v0, v1}, Labm;->a(Labb;)V

    .line 299
    :cond_0
    return-void
.end method
