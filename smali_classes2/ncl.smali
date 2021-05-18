.class public Lncl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lncl;->a:Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 162
    iget-object v0, p0, Lncl;->a:Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;

    sget-object v1, Lnbc;->BLOQUEIO_CLIENTE:Lnbc;

    invoke-virtual {v1}, Lnbc;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lmzr;->n()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 163
    iget-object v0, p0, Lncl;->a:Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;

    invoke-static {v0}, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;->b(Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;)V

    .line 164
    return-void
.end method
