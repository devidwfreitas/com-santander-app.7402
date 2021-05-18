.class Llkj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llkk;

.field final synthetic b:Llki;


# direct methods
.method constructor <init>(Llki;Llkk;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Llkj;->b:Llki;

    iput-object p2, p0, Llkj;->a:Llkk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Llkj;->b:Llki;

    invoke-static {v0}, Llki;->a(Llki;)Llkl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Llkj;->b:Llki;

    invoke-static {v0}, Llki;->a(Llki;)Llkl;

    move-result-object v0

    iget-object v1, p0, Llkj;->a:Llkk;

    invoke-virtual {v1}, Llkk;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Llkl;->a(I)V

    .line 84
    :cond_0
    return-void
.end method
