.class Lmut;
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
    .line 60
    iput-object p1, p0, Lmut;->a:Lmur;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lmwm;->q()V

    .line 64
    iget-object v0, p0, Lmut;->a:Lmur;

    iget-object v0, v0, Lmur;->a:Lmsy;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lmut;->a:Lmur;

    iget-object v0, v0, Lmur;->a:Lmsy;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lmsy;->a(I)V

    .line 67
    :cond_0
    return-void
.end method
