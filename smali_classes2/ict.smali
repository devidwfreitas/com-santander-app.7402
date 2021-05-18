.class public Lict;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/faq/presentation/FaqRespostasActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/faq/presentation/FaqRespostasActivity;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lict;->a:Lcom/santander/app/faq/presentation/FaqRespostasActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 122
    iget-object v0, p0, Lict;->a:Lcom/santander/app/faq/presentation/FaqRespostasActivity;

    invoke-static {v0}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->a(Lcom/santander/app/faq/presentation/FaqRespostasActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lict;->a:Lcom/santander/app/faq/presentation/FaqRespostasActivity;

    invoke-static {v0}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->b(Lcom/santander/app/faq/presentation/FaqRespostasActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lict;->a:Lcom/santander/app/faq/presentation/FaqRespostasActivity;

    invoke-static {v0}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->c(Lcom/santander/app/faq/presentation/FaqRespostasActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lict;->a:Lcom/santander/app/faq/presentation/FaqRespostasActivity;

    invoke-static {v0}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->d(Lcom/santander/app/faq/presentation/FaqRespostasActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lict;->a:Lcom/santander/app/faq/presentation/FaqRespostasActivity;

    invoke-static {v0}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->e(Lcom/santander/app/faq/presentation/FaqRespostasActivity;)Lcom/santander/app/components/view/SantanderTextView;

    move-result-object v0

    const v1, 0x7f09047b

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(I)V

    .line 127
    const-string v0, "Sim"

    iget-object v1, p0, Lict;->a:Lcom/santander/app/faq/presentation/FaqRespostasActivity;

    invoke-static {v1}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->f(Lcom/santander/app/faq/presentation/FaqRespostasActivity;)Libp;

    move-result-object v1

    iget-object v2, p0, Lict;->a:Lcom/santander/app/faq/presentation/FaqRespostasActivity;

    invoke-static {v2}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->g(Lcom/santander/app/faq/presentation/FaqRespostasActivity;)Libo;

    move-result-object v2

    invoke-static {v0, v1, v2}, Libm;->a(Ljava/lang/String;Libp;Libo;)V

    .line 128
    return-void
.end method
