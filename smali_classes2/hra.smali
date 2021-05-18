.class public Lhra;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoChatActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoChatActivity;Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lhra;->c:Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoChatActivity;

    iput-object p2, p0, Lhra;->a:Landroid/app/Dialog;

    iput-object p3, p0, Lhra;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lhra;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 70
    iget-object v0, p0, Lhra;->c:Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoChatActivity;

    iget-object v0, v0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoChatActivity;->i:Landroid/app/Activity;

    iget-object v1, p0, Lhra;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lmyo;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    return-void
.end method
