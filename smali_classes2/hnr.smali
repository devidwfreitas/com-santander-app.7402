.class public Lhnr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lhnr;->c:Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;

    iput-object p2, p0, Lhnr;->a:Landroid/app/Dialog;

    iput-object p3, p0, Lhnr;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lhnr;->c:Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->b(Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhnr;->c:Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->c(Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lhnr;->c:Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->b(Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lhnr;->c:Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;

    invoke-static {v1}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->c(Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lhnr;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 115
    iget-object v0, p0, Lhnr;->c:Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;

    iget-object v0, v0, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->i:Landroid/app/Activity;

    iget-object v1, p0, Lhnr;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lmyo;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    return-void
.end method
