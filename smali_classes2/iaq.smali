.class public Liaq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Liaq;->a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Liaq;->a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    invoke-static {v0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->g(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)Liav;

    move-result-object v0

    iget-object v1, p0, Liaq;->a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    invoke-static {v1}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->i(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Liav;->a(Landroid/app/Activity;)V

    .line 257
    return-void
.end method
