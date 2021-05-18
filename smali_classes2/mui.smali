.class Lmui;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmuh;


# direct methods
.method constructor <init>(Lmuh;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lmui;->a:Lmuh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lmwm;->m()V

    .line 44
    iget-object v0, p0, Lmui;->a:Lmuh;

    iget-object v0, v0, Lmuh;->a:Lmsy;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lmui;->a:Lmuh;

    iget-object v0, v0, Lmuh;->a:Lmsy;

    invoke-interface {v0}, Lmsy;->finish()V

    .line 47
    :cond_0
    return-void
.end method
