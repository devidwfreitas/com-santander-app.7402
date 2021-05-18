.class Lmug;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmue;


# direct methods
.method constructor <init>(Lmue;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lmug;->a:Lmue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lmug;->a:Lmue;

    iget-object v0, v0, Lmue;->a:Lmsy;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lmug;->a:Lmue;

    iget-object v0, v0, Lmue;->a:Lmsy;

    invoke-interface {v0}, Lmsy;->b()V

    .line 58
    :cond_0
    return-void
.end method
