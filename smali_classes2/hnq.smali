.class public Lhnq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lhnq;->a:Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lhnq;->a:Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->a(Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;)Lhnu;

    move-result-object v0

    invoke-interface {v0}, Lhnu;->a()V

    .line 82
    return-void
.end method
