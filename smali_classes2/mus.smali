.class Lmus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmur;


# direct methods
.method constructor <init>(Lmur;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lmus;->a:Lmur;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lmwm;->r()V

    .line 54
    iget-object v0, p0, Lmus;->a:Lmur;

    iget-object v0, v0, Lmur;->a:Lmsy;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lmus;->a:Lmur;

    iget-object v0, v0, Lmur;->a:Lmsy;

    invoke-interface {v0}, Lmsy;->finish()V

    .line 57
    :cond_0
    return-void
.end method
