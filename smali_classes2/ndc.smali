.class public Lndc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;


# direct methods
.method public constructor <init>(Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lndc;->a:Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lndc;->a:Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-static {v0}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->a(Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lndc;->a:Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-static {v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;)Lndw;

    move-result-object v1

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lndw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void
.end method
