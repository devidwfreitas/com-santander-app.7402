.class public Ljpe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljrn;


# instance fields
.field final synthetic a:Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Ljpe;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 87
    check-cast p1, Ljqj;

    .line 89
    iget-object v0, p0, Ljpe;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;

    invoke-static {v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->a(Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Ljpe;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;

    invoke-static {v1}, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->b(Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 90
    iget-object v0, p0, Ljpe;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;

    invoke-static {v0, p1}, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->a(Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;Ljqj;)V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Ljpe;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;

    invoke-static {v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->a(Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Ljpe;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;

    invoke-static {v1}, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->c(Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Ljpe;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;

    invoke-static {v0, p1}, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->b(Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;Ljqj;)V

    goto :goto_0
.end method
