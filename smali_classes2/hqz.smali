.class public Lhqz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoChatActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoChatActivity;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lhqz;->a:Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lhqz;->a:Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoChatActivity;

    const-string v1, "https://santander.custhelp.com/app/chat/chat_santander/p/73"

    invoke-static {v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoChatActivity;->a(Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoChatActivity;Ljava/lang/String;)V

    .line 43
    return-void
.end method
