.class Lmf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmj;

.field final synthetic b:I

.field final synthetic c:Lma;


# direct methods
.method constructor <init>(Lma;Lmj;I)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lmf;->c:Lma;

    iput-object p2, p0, Lmf;->a:Lmj;

    iput p3, p0, Lmf;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 184
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Llg;->car_card_tit_dialog_remover:I

    .line 185
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Llg;->car_card_msg_dialog_remover:I

    .line 186
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Llg;->app_cancelar:I

    new-instance v2, Lmh;

    invoke-direct {v2, p0}, Lmh;-><init>(Lmf;)V

    .line 187
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Llg;->app_sim:I

    new-instance v2, Lmg;

    invoke-direct {v2, p0}, Lmg;-><init>(Lmf;)V

    .line 191
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 204
    return-void
.end method
