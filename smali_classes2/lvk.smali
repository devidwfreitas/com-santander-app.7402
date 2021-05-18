.class Llvk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llvj;


# direct methods
.method constructor <init>(Llvj;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Llvk;->a:Llvj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Llvk;->a:Llvj;

    invoke-static {v0}, Llvj;->a(Llvj;)Llvl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Llvk;->a:Llvj;

    invoke-static {v0}, Llvj;->a(Llvj;)Llvl;

    move-result-object v0

    iget-object v1, p0, Llvk;->a:Llvj;

    invoke-static {v1}, Llvj;->b(Llvj;)Lkwh;

    move-result-object v1

    invoke-interface {v0, v1}, Llvl;->a(Lkwh;)V

    .line 124
    :cond_0
    return-void
.end method
