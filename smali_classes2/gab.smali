.class public Lgab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lgab;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 145
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lgab;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;

    const-class v2, Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    const-string v1, "EXTRADADOS"

    iget-object v2, p0, Lgab;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;

    invoke-static {v2}, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->a(Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;)Lgac;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 147
    iget-object v1, p0, Lgab;->a:Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->startActivity(Landroid/content/Intent;)V

    .line 149
    return-void
.end method
