.class Ljpb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfzi;


# instance fields
.field final synthetic a:Ljpa;


# direct methods
.method constructor <init>(Ljpa;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Ljpb;->a:Ljpa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 80
    check-cast p1, Lfyj;

    .line 81
    invoke-virtual {p1}, Lfyj;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Lfoi;

    iget-object v1, p0, Ljpb;->a:Ljpa;

    iget-object v1, v1, Ljpa;->a:Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;

    invoke-static {v1}, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->e(Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljpc;

    invoke-direct {v2, p0}, Ljpc;-><init>(Ljpb;)V

    invoke-direct {v0, v1, v2}, Lfoi;-><init>(Landroid/app/Activity;Lfoh;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 96
    invoke-virtual {v0, v1}, Lfoi;->c([Ljava/lang/Object;)Lgne;

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Ljpb;->a:Ljpa;

    iget-object v0, v0, Ljpa;->a:Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;

    invoke-static {v0}, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->e(Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Sistema indispon\u00edvel. Por favor, entre em contato com a Central de Atendimento Santander."

    invoke-static {v0, v1}, Lmxn;->e(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_0
.end method
