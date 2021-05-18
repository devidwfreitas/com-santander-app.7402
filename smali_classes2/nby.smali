.class public Lnby;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lnby;->a:Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 148
    iget-object v0, p0, Lnby;->a:Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;

    invoke-static {v0}, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->b(Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lnby;->a:Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;

    invoke-static {v0}, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->b(Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 150
    :cond_0
    return-void
.end method
