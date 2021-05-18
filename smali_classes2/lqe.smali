.class public Llqe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Llqe;->a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 294
    if-nez p1, :cond_0

    .line 313
    :goto_0
    return-void

    .line 296
    :cond_0
    check-cast p1, Lmli;

    .line 298
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lmli;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lmli;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 299
    invoke-virtual {p1}, Lmli;->b()Ljava/util/List;

    move-result-object v0

    .line 300
    if-eqz v0, :cond_2

    iget-object v1, p0, Llqe;->a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->d(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 301
    iget-object v1, p0, Llqe;->a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->d(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lmhj;->a(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmkq;

    .line 304
    invoke-virtual {v0}, Lmkq;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lmkq;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 305
    iget-object v1, p0, Llqe;->a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->e(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lmkq;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lmkq;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    :cond_2
    iget-object v0, p0, Llqe;->a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->c(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    goto/16 :goto_0
.end method
