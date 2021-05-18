.class public Lhnn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/emprestimo/chat/ChatV2Activity;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/chat/ChatV2Activity;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lhnn;->a:Lcom/santander/app/emprestimo/chat/ChatV2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 186
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 187
    iget-object v0, p0, Lhnn;->a:Lcom/santander/app/emprestimo/chat/ChatV2Activity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->b(Lcom/santander/app/emprestimo/chat/ChatV2Activity;)V

    .line 188
    iget-object v0, p0, Lhnn;->a:Lcom/santander/app/emprestimo/chat/ChatV2Activity;

    invoke-static {}, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->a()Lhno;

    move-result-object v1

    invoke-static {v1}, Lhno;->f(Lhno;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmyo;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lhnn;->a:Lcom/santander/app/emprestimo/chat/ChatV2Activity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->c(Lcom/santander/app/emprestimo/chat/ChatV2Activity;)V

    goto :goto_0
.end method
