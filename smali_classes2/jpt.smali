.class public Ljpt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljrn;


# instance fields
.field final synthetic a:Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Ljpt;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 183
    check-cast p1, Ljqm;

    .line 185
    iget-object v0, p0, Ljpt;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;

    invoke-static {v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->a(Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;)Ljqk;

    move-result-object v0

    invoke-virtual {v0}, Ljqk;->e()Ljql;

    move-result-object v0

    sget-object v1, Ljql;->GET_USUARIO_SN:Ljql;

    invoke-virtual {v0, v1}, Ljql;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Ljpt;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;

    invoke-static {v0, p1}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->b(Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;Ljqm;)V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Ljpt;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;

    invoke-static {v0, p1}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->a(Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;Ljqm;)V

    goto :goto_0
.end method
