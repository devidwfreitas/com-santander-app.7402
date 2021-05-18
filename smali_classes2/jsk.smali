.class public Ljsk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/novidades/view/NovidadesActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/novidades/view/NovidadesActivity;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Ljsk;->a:Lcom/santander/app/novidades/view/NovidadesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 97
    const-string v0, "Marketing_TelaDeNovidades_Acao"

    const-string v1, "Pular"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Ljsk;->a:Lcom/santander/app/novidades/view/NovidadesActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/santander/app/novidades/view/NovidadesActivity;->setResult(I)V

    .line 99
    iget-object v0, p0, Ljsk;->a:Lcom/santander/app/novidades/view/NovidadesActivity;

    invoke-virtual {v0}, Lcom/santander/app/novidades/view/NovidadesActivity;->finish()V

    .line 100
    return-void
.end method
