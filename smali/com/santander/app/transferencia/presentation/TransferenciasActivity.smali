.class public Lcom/santander/app/transferencia/presentation/TransferenciasActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lmpe;


# static fields
.field private static final E:I = 0x1

.field private static final a:Ljava/lang/String; = "TransferenciasActivity"

.field private static final b:I = 0x1

.field private static final c:I = 0x5

.field private static final d:I = 0xa

.field private static final e:I = 0x32

.field private static final f:I = 0x64

.field private static final g:I = 0x1f4

.field private static final w:Ljava/lang/String; = "CC"

.field private static final x:Ljava/lang/String; = "PP"


# instance fields
.field private A:Lcom/santander/app/contacorrente/domain/Conta;

.field private B:Lmqa;

.field private C:Landroid/support/v7/widget/RecyclerView;

.field private D:Landroid/widget/LinearLayout;

.field private F:Lmld;

.field private G:Lmkw;

.field private H:Landroid/widget/LinearLayout;

.field private I:Landroid/widget/Button;

.field private J:Landroid/widget/Button;

.field private K:Landroid/widget/LinearLayout;

.field private L:Landroid/widget/EditText;

.field private M:Lguj;

.field private N:Landroid/widget/Button;

.field private O:Landroid/widget/Button;

.field private P:Landroid/widget/Button;

.field private Q:Landroid/widget/Button;

.field private R:Landroid/widget/Button;

.field private S:Landroid/widget/Button;

.field private T:Landroid/widget/Button;

.field private U:Ljava/lang/String;

.field private y:Landroid/widget/TabHost;

.field private z:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;Lcom/santander/app/contacorrente/domain/Conta;)Lcom/santander/app/contacorrente/domain/Conta;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->A:Lcom/santander/app/contacorrente/domain/Conta;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)Lmld;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->F:Lmld;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;Lmld;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->a(Lmld;)V

    return-void
.end method

.method private a(Lmkw;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    const v9, 0x3f333333    # 0.7f

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 383
    const-string v4, ""

    .line 384
    if-eqz p1, :cond_3

    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->G:Lmkw;

    .line 385
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->D:Landroid/widget/LinearLayout;

    const v5, 0x7f100d51

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz p1, :cond_4

    move v0, v2

    :goto_1
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->H:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 388
    if-eqz p1, :cond_a

    .line 389
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->G:Lmkw;

    invoke-virtual {v0}, Lmkw;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaq;->l(Ljava/lang/String;)I

    move-result v0

    int-to-double v4, v0

    const-wide v6, 0x4040800000000000L    # 33.0

    cmpl-double v0, v4, v6

    if-nez v0, :cond_6

    .line 390
    const-string v0, "CONTA SANTANDER"

    .line 391
    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->J:Landroid/widget/Button;

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setAlpha(F)V

    .line 392
    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->I:Landroid/widget/Button;

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setAlpha(F)V

    .line 393
    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->G:Lmkw;

    invoke-virtual {v2}, Lmkw;->g()Ljava/lang/String;

    move-result-object v2

    const-string v4, "01"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 394
    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->I:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 395
    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->J:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 396
    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->g()V

    .line 409
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->T:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 410
    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->L:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->L:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0,00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 411
    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->T:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    move-object v2, v0

    .line 415
    :goto_3
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->H:Landroid/widget/LinearLayout;

    const v3, 0x7f100d54

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_7

    iget-object v3, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->G:Lmkw;

    invoke-virtual {v3}, Lmkw;->h()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->H:Landroid/widget/LinearLayout;

    const v3, 0x7f100d55

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_8

    :goto_5
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->H:Landroid/widget/LinearLayout;

    const v2, 0x7f100d56

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->G:Lmkw;

    invoke-virtual {v3}, Lmkw;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - conta: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->G:Lmkw;

    invoke-virtual {v3}, Lmkw;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->G:Lmkw;

    invoke-virtual {v3}, Lmkw;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iput-object v1, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->F:Lmld;

    .line 420
    return-void

    :cond_3
    move-object v0, v1

    .line 384
    goto/16 :goto_0

    :cond_4
    move v0, v3

    .line 385
    goto/16 :goto_1

    .line 397
    :cond_5
    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->G:Lmkw;

    invoke-virtual {v2}, Lmkw;->g()Ljava/lang/String;

    move-result-object v2

    const-string v4, "03"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 398
    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->I:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 399
    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->J:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 400
    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->h()V

    goto/16 :goto_2

    .line 403
    :cond_6
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->G:Lmkw;

    invoke-virtual {v0}, Lmkw;->l()Ljava/lang/String;

    move-result-object v0

    .line 404
    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->I:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setPressed(Z)V

    .line 405
    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->J:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 406
    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->g()V

    goto/16 :goto_2

    .line 415
    :cond_7
    const-string v3, ""

    goto/16 :goto_4

    .line 416
    :cond_8
    const-string v2, ""

    goto/16 :goto_5

    .line 417
    :cond_9
    const-string v2, ""

    goto :goto_6

    :cond_a
    move-object v2, v4

    goto/16 :goto_3
.end method

.method private a(Lmld;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const v7, 0x3f333333    # 0.7f

    const-wide v8, 0x4040800000000000L    # 33.0

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 338
    if-eqz p1, :cond_1

    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->F:Lmld;

    .line 339
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->D:Landroid/widget/LinearLayout;

    const v3, 0x7f100d51

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 340
    iget-object v3, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->H:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    move v0, v2

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 342
    if-eqz p1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->F:Lmld;

    invoke-virtual {v0}, Lmld;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaq;->l(Ljava/lang/String;)I

    move-result v0

    int-to-double v4, v0

    cmpl-double v0, v4, v8

    if-nez v0, :cond_5

    .line 344
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->F:Lmld;

    const-string v3, "CONTA SANTANDER"

    invoke-virtual {v0, v3}, Lmld;->i(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->J:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setAlpha(F)V

    .line 346
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->I:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setAlpha(F)V

    .line 347
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->F:Lmld;

    invoke-direct {p0, v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->b(Lmld;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 348
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->I:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 349
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->J:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 350
    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->h()V

    .line 364
    :goto_3
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->T:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 365
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->L:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->L:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0,00"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->T:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->H:Landroid/widget/LinearLayout;

    const v2, 0x7f100d54

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_6

    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->F:Lmld;

    invoke-virtual {v2}, Lmld;->e()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->H:Landroid/widget/LinearLayout;

    const v2, 0x7f100d55

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_7

    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->F:Lmld;

    invoke-virtual {v2}, Lmld;->i()Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->H:Landroid/widget/LinearLayout;

    const v2, 0x7f100d56

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->F:Lmld;

    invoke-virtual {v3}, Lmld;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - conta: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->F:Lmld;

    invoke-virtual {v2}, Lmld;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaq;->l(Ljava/lang/String;)I

    move-result v2

    int-to-double v4, v2

    cmpl-double v2, v4, v8

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->F:Lmld;

    invoke-virtual {v2}, Lmld;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaq;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_7
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iput-object v1, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->G:Lmkw;

    .line 374
    return-void

    :cond_1
    move-object v0, v1

    .line 338
    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 339
    goto/16 :goto_1

    .line 340
    :cond_3
    const/4 v0, 0x4

    goto/16 :goto_2

    .line 352
    :cond_4
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->I:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 353
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->J:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 354
    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->g()V

    goto/16 :goto_3

    .line 357
    :cond_5
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->F:Lmld;

    invoke-virtual {v0}, Lmld;->i()Ljava/lang/String;

    .line 358
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->I:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setPressed(Z)V

    .line 359
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->I:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 360
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->J:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 361
    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->g()V

    goto/16 :goto_3

    .line 369
    :cond_6
    const-string v2, ""

    goto/16 :goto_4

    .line 370
    :cond_7
    const-string v2, ""

    goto/16 :goto_5

    .line 371
    :cond_8
    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->F:Lmld;

    invoke-virtual {v2}, Lmld;->k()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_9
    const-string v2, ""

    goto :goto_7
.end method

.method private b(Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 210
    const v1, 0x7f04014a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 211
    const v0, 0x7f1006ac

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 212
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    return-object v1
.end method

.method public static synthetic b(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)Lmkw;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->G:Lmkw;

    return-object v0
.end method

.method private b(Lmld;)Z
    .locals 4

    .prologue
    .line 377
    invoke-virtual {p1}, Lmld;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 379
    const-string v1, "6"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic c(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->T:Landroid/widget/Button;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 95
    const v0, 0x7f100139

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->z:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    .line 96
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->y:Landroid/widget/TabHost;

    .line 97
    const v0, 0x7f100c78

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->C:Landroid/support/v7/widget/RecyclerView;

    .line 98
    const v0, 0x7f100d50

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->D:Landroid/widget/LinearLayout;

    .line 99
    const v0, 0x7f100d53

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->H:Landroid/widget/LinearLayout;

    .line 100
    const v0, 0x7f100d57

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->L:Landroid/widget/EditText;

    .line 101
    const v0, 0x7f100d59

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->N:Landroid/widget/Button;

    .line 102
    const v0, 0x7f100d5a

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->O:Landroid/widget/Button;

    .line 103
    const v0, 0x7f100d5b

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->P:Landroid/widget/Button;

    .line 104
    const v0, 0x7f100d5c

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->Q:Landroid/widget/Button;

    .line 105
    const v0, 0x7f100d5d

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->R:Landroid/widget/Button;

    .line 106
    const v0, 0x7f100d5e

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->S:Landroid/widget/Button;

    .line 108
    const v0, 0x7f100d5f

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->I:Landroid/widget/Button;

    .line 109
    const v0, 0x7f100d60

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->J:Landroid/widget/Button;

    .line 110
    const v0, 0x7f100d58

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->K:Landroid/widget/LinearLayout;

    .line 111
    const v0, 0x7f100d4e

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->T:Landroid/widget/Button;

    .line 113
    new-instance v0, Lguj;

    invoke-direct {v0}, Lguj;-><init>()V

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->M:Lguj;

    .line 114
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->M:Lguj;

    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->L:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lguj;->a(Landroid/widget/EditText;)V

    .line 115
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->L:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->M:Lguj;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 116
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->L:Landroid/widget/EditText;

    new-instance v1, Lmor;

    invoke-direct {v1, p0}, Lmor;-><init>(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 140
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->D:Landroid/widget/LinearLayout;

    new-instance v1, Lmou;

    invoke-direct {v1, p0}, Lmou;-><init>(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->I:Landroid/widget/Button;

    new-instance v1, Lmov;

    invoke-direct {v1, p0}, Lmov;-><init>(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->J:Landroid/widget/Button;

    new-instance v1, Lmow;

    invoke-direct {v1, p0}, Lmow;-><init>(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->K:Landroid/widget/LinearLayout;

    new-instance v1, Lmox;

    invoke-direct {v1, p0}, Lmox;-><init>(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->T:Landroid/widget/Button;

    new-instance v1, Lmoy;

    invoke-direct {v1, p0}, Lmoy;-><init>(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->N:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->a(I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->O:Landroid/widget/Button;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->a(I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->P:Landroid/widget/Button;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->a(I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->Q:Landroid/widget/Button;

    const/16 v1, 0x32

    invoke-virtual {p0, v1}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->a(I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->R:Landroid/widget/Button;

    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->a(I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->S:Landroid/widget/Button;

    const/16 v1, 0x1f4

    invoke-virtual {p0, v1}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->a(I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->a()V

    .line 193
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->I:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->callOnClick()Z

    .line 194
    new-instance v0, Lmqb;

    invoke-direct {v0, p0}, Lmqb;-><init>(Lmpe;)V

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->B:Lmqa;

    .line 195
    return-void
.end method

.method public static synthetic d(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->L:Landroid/widget/EditText;

    return-object v0
.end method

.method private d()Lmlo;
    .locals 2

    .prologue
    .line 198
    new-instance v0, Lmlo;

    invoke-direct {v0}, Lmlo;-><init>()V

    .line 199
    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->A:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0, v1}, Lmlo;->a(Lcom/santander/app/contacorrente/domain/Conta;)V

    .line 200
    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->F:Lmld;

    invoke-virtual {v0, v1}, Lmlo;->a(Lmld;)V

    .line 201
    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->G:Lmkw;

    invoke-virtual {v0, v1}, Lmlo;->a(Lmkw;)V

    .line 202
    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->L:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlo;->a(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmlo;->b(Ljava/lang/String;)V

    .line 205
    return-object v0
.end method

.method private e()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 263
    new-instance v0, Lmpa;

    invoke-direct {v0, p0}, Lmpa;-><init>(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)V

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)Lcom/santander/app/contacorrente/domain/Conta;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->A:Lcom/santander/app/contacorrente/domain/Conta;

    return-object v0
.end method

.method private f()Landroid/view/View$OnLongClickListener;
    .locals 1

    .prologue
    .line 277
    new-instance v0, Lmpb;

    invoke-direct {v0, p0}, Lmpb;-><init>(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)V

    return-object v0
.end method

.method public static synthetic f(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->g()V

    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 465
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->I:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setPressed(Z)V

    .line 466
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->I:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 467
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->I:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 469
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->J:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setPressed(Z)V

    .line 470
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->J:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 471
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->J:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 473
    const-string v0, "CC"

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->U:Ljava/lang/String;

    .line 475
    return-void
.end method

.method public static synthetic g(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->h()V

    return-void
.end method

.method public static synthetic h(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)Lmlo;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->d()Lmlo;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 478
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->J:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setPressed(Z)V

    .line 479
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->J:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 480
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->J:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 482
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->I:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setPressed(Z)V

    .line 483
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->I:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 484
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->I:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 486
    const-string v0, "PP"

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->U:Ljava/lang/String;

    .line 488
    return-void
.end method

.method public static synthetic i(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)Lmqa;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->B:Lmqa;

    return-object v0
.end method

.method public static synthetic j(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)Landroid/widget/TabHost;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->y:Landroid/widget/TabHost;

    return-object v0
.end method


# virtual methods
.method public a(I)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 424
    new-instance v0, Lmot;

    invoke-direct {v0, p0, p1}, Lmot;-><init>(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;I)V

    return-object v0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->y:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 221
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->y:Landroid/widget/TabHost;

    const-string v1, "tab1"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 222
    const v1, 0x7f090b0e

    invoke-virtual {p0, v1}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 223
    const v1, 0x7f10061d

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 225
    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->y:Landroid/widget/TabHost;

    const-string v2, "tab2"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 226
    const v2, 0x7f090b0f

    invoke-virtual {p0, v2}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 227
    const v2, 0x7f100621

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 229
    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->y:Landroid/widget/TabHost;

    invoke-virtual {v2, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 230
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->y:Landroid/widget/TabHost;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 231
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->y:Landroid/widget/TabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 233
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->y:Landroid/widget/TabHost;

    new-instance v1, Lmoz;

    invoke-direct {v1, p0}, Lmoz;-><init>(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 245
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 450
    invoke-static {p0, p1}, Lhav;->d(Landroid/app/Activity;Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lanb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->z:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    new-instance v1, Lamy;

    invoke-direct {v1, p1}, Lamy;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setAdapter(Lamr;)V

    .line 302
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->z:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    new-instance v1, Lmos;

    invoke-direct {v1, p0}, Lmos;-><init>(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)V

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setOnItemSelectedListener(Lamt;)V

    .line 310
    return-void
.end method

.method public a(Lmlk;)V
    .locals 5

    .prologue
    const v1, 0x7f100c79

    const/16 v2, 0x8

    .line 250
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmlk;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    :cond_0
    invoke-virtual {p0, v1}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->C:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 259
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-virtual {p0, v1}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->C:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 256
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->C:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 257
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->C:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lmpm;

    invoke-virtual {p1}, Lmlk;->a()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->e()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->f()Landroid/view/View$OnLongClickListener;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lmpm;-><init>(Ljava/util/List;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->d()Lmlo;

    move-result-object v0

    .line 457
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->i:Landroid/app/Activity;

    const-class v3, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 458
    const-string v2, "transferencia"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 460
    invoke-virtual {p0, v1}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->startActivity(Landroid/content/Intent;)V

    .line 461
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 314
    invoke-super {p0, p1, p2, p3}, Lgrs;->onActivityResult(IILandroid/content/Intent;)V

    .line 316
    invoke-static {p0}, Lgpu;->b(Landroid/app/Activity;)V

    .line 318
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 319
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 322
    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v0, v0, Lmld;

    if-eqz v0, :cond_1

    .line 323
    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lmld;

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    .line 327
    :goto_0
    if-eqz v1, :cond_2

    .line 328
    invoke-direct {p0, v1}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->a(Lmld;)V

    .line 335
    :cond_0
    :goto_1
    return-void

    .line 325
    :cond_1
    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lmkw;

    goto :goto_0

    .line 330
    :cond_2
    invoke-direct {p0, v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->a(Lmkw;)V

    goto :goto_1

    .line 331
    :cond_3
    if-nez p2, :cond_0

    .line 332
    invoke-direct {p0, v1}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->a(Lmld;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v0, 0x7f0403a0

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->setContentView(I)V

    .line 90
    const v0, 0x7f090b0d

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->c(I)V

    .line 91
    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->c()V

    .line 92
    return-void
.end method
