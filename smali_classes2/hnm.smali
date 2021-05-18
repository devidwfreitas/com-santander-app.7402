.class public Lhnm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/emprestimo/chat/ChatV2Activity;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/chat/ChatV2Activity;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lhnm;->a:Lcom/santander/app/emprestimo/chat/ChatV2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lhnm;->a:Lcom/santander/app/emprestimo/chat/ChatV2Activity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->a(Lcom/santander/app/emprestimo/chat/ChatV2Activity;)V

    .line 170
    return-void
.end method
