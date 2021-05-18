.class public Licq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/faq/presentation/FaqPerguntasActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/faq/presentation/FaqPerguntasActivity;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Licq;->a:Lcom/santander/app/faq/presentation/FaqPerguntasActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Licq;->a:Lcom/santander/app/faq/presentation/FaqPerguntasActivity;

    invoke-static {v0}, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->a(Lcom/santander/app/faq/presentation/FaqPerguntasActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 96
    return-void
.end method
