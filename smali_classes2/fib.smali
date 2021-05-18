.class public Lfib;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lfib;->a:Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v1, "Ol\u00e1, eu estou usando o app do Santander. Use voc\u00ea tamb\u00e9m! Acesse https://www.santander.com.br/br/acessomobile e baixe agora."

    .line 99
    const-string v2, "android.intent.extra.SUBJECT"

    const-string v3, "App Santander no Celular"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lfib;->a:Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;

    const-string v2, "Compartilhar com"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/16 v2, 0x3e7

    invoke-virtual {v1, v0, v2}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 102
    return-void
.end method
