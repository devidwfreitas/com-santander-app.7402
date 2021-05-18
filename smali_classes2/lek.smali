.class public Llek;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Llek;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 142
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Llek;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;

    const-class v2, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    const-string v1, "residence-address"

    iget-object v2, p0, Llek;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;

    invoke-static {v2}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->b(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    iget-object v1, p0, Llek;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->c(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Llek;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->c(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 145
    const-string v1, "list-historic-residence"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    iget-object v3, p0, Llek;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;

    invoke-static {v3}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->c(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    :cond_0
    iget-object v1, p0, Llek;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 148
    return-void
.end method
