.class Llvs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llvr;


# direct methods
.method constructor <init>(Llvr;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Llvs;->a:Llvr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Llvs;->a:Llvr;

    invoke-static {v0}, Llvr;->a(Llvr;)Llvu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Llvs;->a:Llvr;

    invoke-static {v0}, Llvr;->a(Llvr;)Llvu;

    move-result-object v0

    iget-object v1, p0, Llvs;->a:Llvr;

    iget-object v1, v1, Llvr;->a:Llvv;

    iget-object v2, p0, Llvs;->a:Llvr;

    invoke-static {v2}, Llvr;->b(Llvr;)Lkwk;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Llvu;->a(Llvv;Lkwk;)V

    .line 139
    :cond_0
    return-void
.end method
