.class public Lfif;
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
    .line 381
    iput-object p1, p0, Lfif;->a:Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 384
    const-string v0, "Login_Acao"

    const-string v1, "BannerHomeLogadaNaoCorren"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v0, "Para acessar este conte\u00fado, uma janela do seu navegador de internet ser\u00e1 aberta. Deseja continuar?"

    .line 387
    invoke-static {v0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->a(Ljava/lang/String;)V

    .line 388
    return-void
.end method
