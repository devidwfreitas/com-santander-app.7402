.class Lmtb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmta;


# direct methods
.method constructor <init>(Lmta;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lmtb;->a:Lmta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lmtb;->a:Lmta;

    iget-object v0, v0, Lmta;->a:Lmsy;

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lmwm;->e()V

    .line 58
    iget-object v0, p0, Lmtb;->a:Lmta;

    iget-object v0, v0, Lmta;->a:Lmsy;

    invoke-interface {v0}, Lmsy;->i()V

    .line 60
    :cond_0
    return-void
.end method
