.class public Lhns;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lhns;->b:Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;

    iput-object p2, p0, Lhns;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lhns;->b:Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->b(Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhns;->b:Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->d(Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lhns;->b:Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->b(Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lhns;->b:Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;

    invoke-static {v1}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->d(Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    iget-object v0, p0, Lhns;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 127
    return-void
.end method
