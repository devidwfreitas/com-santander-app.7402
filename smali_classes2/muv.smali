.class Lmuv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View$OnClickListener;

.field final synthetic b:Lmuu;


# direct methods
.method constructor <init>(Lmuu;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lmuv;->b:Lmuu;

    iput-object p2, p0, Lmuv;->a:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 89
    invoke-static {}, Lmwm;->p()V

    .line 90
    iget-object v0, p0, Lmuv;->b:Lmuu;

    iget-object v0, v0, Lmuu;->a:Lmsy;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lmuv;->b:Lmuu;

    iget-object v0, v0, Lmuu;->a:Lmsy;

    iget-object v1, p0, Lmuv;->b:Lmuu;

    iget-object v2, p0, Lmuv;->b:Lmuu;

    invoke-static {v2}, Lmuu;->a(Lmuu;)I

    move-result v2

    invoke-virtual {v1, v2}, Lmuu;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmsy;->a(Ljava/lang/String;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lmuv;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 94
    return-void
.end method
