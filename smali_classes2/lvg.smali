.class Llvg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llvf;


# direct methods
.method constructor <init>(Llvf;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Llvg;->a:Llvf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Llvg;->a:Llvf;

    invoke-static {v0}, Llvf;->a(Llvf;)Llvh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Llvg;->a:Llvf;

    invoke-static {v0}, Llvf;->a(Llvf;)Llvh;

    move-result-object v0

    invoke-interface {v0}, Llvh;->a()V

    .line 105
    :cond_0
    return-void
.end method
