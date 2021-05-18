.class public Liap;
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
    .line 243
    iput-object p1, p0, Liap;->a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Liap;->a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    invoke-static {v0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->e(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)Libo;

    move-result-object v0

    invoke-static {v0}, Libm;->c(Libo;)V

    .line 247
    iget-object v0, p0, Liap;->a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    invoke-static {v0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->g(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)Liav;

    move-result-object v0

    invoke-interface {v0}, Liav;->a()V

    .line 248
    return-void
.end method
