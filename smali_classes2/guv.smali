.class public Lguv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lguv;->a:Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 201
    const-string v0, "Transferencia_Acao"

    const-string v1, "Informativo2"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lguv;->a:Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-static {v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c(Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f02057b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 205
    iget-object v0, p0, Lguv;->a:Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-static {v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c(Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 210
    :goto_0
    return-void

    .line 207
    :cond_0
    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f02057c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 208
    iget-object v0, p0, Lguv;->a:Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-static {v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c(Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
