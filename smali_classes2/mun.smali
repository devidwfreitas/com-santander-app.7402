.class Lmun;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmum;


# direct methods
.method constructor <init>(Lmum;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lmun;->a:Lmum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lmun;->a:Lmum;

    iget-object v0, v0, Lmum;->a:Lmsy;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lmun;->a:Lmum;

    iget-object v0, v0, Lmum;->a:Lmsy;

    invoke-interface {v0}, Lmsy;->finish()V

    .line 53
    :cond_0
    return-void
.end method
