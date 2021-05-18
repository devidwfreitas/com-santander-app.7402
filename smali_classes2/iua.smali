.class public Liua;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/santander/app/homenaologada/presentation/HomeActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/homenaologada/presentation/HomeActivity;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 632
    iput-object p1, p0, Liua;->b:Lcom/santander/app/homenaologada/presentation/HomeActivity;

    iput-object p2, p0, Liua;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    const v2, 0x7f0e0042

    .line 635
    iget-object v0, p0, Liua;->a:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Liua;->b:Lcom/santander/app/homenaologada/presentation/HomeActivity;

    invoke-virtual {v1}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 636
    iget-object v0, p0, Liua;->a:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Liua;->b:Lcom/santander/app/homenaologada/presentation/HomeActivity;

    invoke-virtual {v1}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 637
    return-void
.end method
