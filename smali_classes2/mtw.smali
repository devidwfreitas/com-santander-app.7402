.class Lmtw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmtu;


# direct methods
.method constructor <init>(Lmtu;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lmtw;->a:Lmtu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lmwm;->n()V

    .line 45
    iget-object v0, p0, Lmtw;->a:Lmtu;

    iget-object v0, v0, Lmtu;->a:Lmsy;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lmtw;->a:Lmtu;

    iget-object v0, v0, Lmtu;->a:Lmsy;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lmsy;->b(Z)V

    .line 48
    :cond_0
    return-void
.end method
