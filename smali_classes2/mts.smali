.class Lmts;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmtr;


# direct methods
.method constructor <init>(Lmtr;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lmts;->a:Lmtr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lmwm;->m()V

    .line 35
    iget-object v0, p0, Lmts;->a:Lmtr;

    iget-object v0, v0, Lmtr;->a:Lmsy;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lmts;->a:Lmtr;

    iget-object v0, v0, Lmtr;->a:Lmsy;

    invoke-interface {v0}, Lmsy;->finish()V

    .line 38
    :cond_0
    return-void
.end method
