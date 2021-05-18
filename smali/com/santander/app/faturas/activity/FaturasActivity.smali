.class public Lcom/santander/app/faturas/activity/FaturasActivity;
.super Lgrs;
.source "SourceFile"


# instance fields
.field private A:Landroid/widget/Button;

.field private B:Landroid/widget/LinearLayout;

.field private C:Landroid/widget/LinearLayout;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/widget/RelativeLayout;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/widget/RelativeLayout;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/widget/TextView;

.field private Q:Landroid/widget/TextView;

.field private R:Landroid/widget/TextView;

.field private S:Landroid/widget/TextView;

.field private T:Landroid/widget/LinearLayout;

.field private U:Landroid/widget/LinearLayout;

.field private V:Landroid/widget/LinearLayout;

.field private W:Landroid/widget/LinearLayout;

.field private X:Lghu;

.field private Y:Z

.field private Z:Z

.field private final a:Ljava/lang/String;

.field private aA:Landroid/widget/TextView;

.field private aB:Landroid/widget/TextView;

.field private aC:Landroid/widget/TextView;

.field private aD:Landroid/widget/LinearLayout;

.field private aE:Landroid/widget/TextView;

.field private aF:Landroid/widget/TextView;

.field private aG:Landroid/widget/TextView;

.field private aH:Lfue;

.field private aI:Landroid/widget/ImageButton;

.field private aJ:Landroid/widget/RelativeLayout;

.field private aK:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

.field private aL:Landroid/widget/RelativeLayout;

.field private aM:Landroid/widget/ImageView;

.field private aN:Landroid/app/Dialog;

.field private aa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfue;",
            ">;"
        }
    .end annotation
.end field

.field private ab:Landroid/widget/LinearLayout;

.field private ac:Landroid/widget/LinearLayout;

.field private ad:Landroid/widget/LinearLayout;

.field private ae:Landroid/widget/TextView;

.field private af:Lfue;

.field private ag:Lfue;

.field private ah:Z

.field private ai:Lcom/santander/app/components/view/ClickToSelectEditText;

.field private aj:Landroid/widget/TextView;

.field private ak:Landroid/widget/TextView;

.field private al:Landroid/widget/TextView;

.field private am:Landroid/widget/TextView;

.field private an:Landroid/widget/TextView;

.field private ao:Landroid/widget/TextView;

.field private ap:Landroid/widget/TextView;

.field private aq:Landroid/widget/TextView;

.field private ar:Landroid/widget/TextView;

.field private as:Landroid/widget/TextView;

.field private at:Landroid/widget/TextView;

.field private au:Landroid/widget/TextView;

.field private av:Landroid/widget/TextView;

.field private aw:Landroid/widget/TextView;

.field private ax:Landroid/widget/TextView;

.field private ay:Landroid/widget/TextView;

.field private az:Landroid/widget/TextView;

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/LinearLayout;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 67
    const-string v0, "FaturasActivity"

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->a:Ljava/lang/String;

    .line 70
    iput-boolean v1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->c:Z

    .line 71
    iput-boolean v1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->d:Z

    .line 112
    iput-boolean v1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->Z:Z

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ah:Z

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/faturas/activity/FaturasActivity;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->b:I

    return v0
.end method

.method public static synthetic a(Lcom/santander/app/faturas/activity/FaturasActivity;I)I
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->b:I

    return p1
.end method

.method public static synthetic a(Lcom/santander/app/faturas/activity/FaturasActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aN:Landroid/app/Dialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/faturas/activity/FaturasActivity;Lfue;)Lfue;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->af:Lfue;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/faturas/activity/FaturasActivity;Lghu;)Lghu;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->X:Lghu;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/faturas/activity/FaturasActivity;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/santander/app/faturas/activity/FaturasActivity;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method private a(Lfue;)V
    .locals 5

    .prologue
    .line 507
    iget-object v1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aj:Landroid/widget/TextView;

    invoke-virtual {p1}, Lfue;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lfue;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->x:Landroid/widget/TextView;

    invoke-virtual {p1}, Lfue;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lfue;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    invoke-virtual {p1}, Lfue;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 511
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->y:Landroid/widget/TextView;

    invoke-virtual {p1}, Lfue;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :goto_2
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->D:Landroid/widget/TextView;

    invoke-virtual {p1}, Lfue;->F()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->E:Landroid/widget/TextView;

    invoke-virtual {p1}, Lfue;->G()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-virtual {p1}, Lfue;->I()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 520
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->F:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Limite dispon\u00edvel em "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lfue;->I()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    :goto_3
    invoke-virtual {p1}, Lfue;->H()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 526
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->G:Landroid/widget/TextView;

    invoke-virtual {p1}, Lfue;->H()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :goto_4
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->I:Landroid/widget/TextView;

    invoke-virtual {p1}, Lfue;->u()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->J:Landroid/widget/TextView;

    invoke-virtual {p1}, Lfue;->J()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->K:Landroid/widget/TextView;

    invoke-virtual {p1}, Lfue;->K()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->L:Landroid/widget/TextView;

    invoke-virtual {p1}, Lfue;->L()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->M:Landroid/widget/TextView;

    invoke-virtual {p1}, Lfue;->M()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->O:Landroid/widget/TextView;

    invoke-virtual {p1}, Lfue;->y()Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-static {v0, v1, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->P:Landroid/widget/TextView;

    invoke-virtual {p1}, Lfue;->x()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-virtual {p1}, Lfue;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 541
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->Q:Landroid/widget/TextView;

    invoke-virtual {p1}, Lfue;->m()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    const-string v3, "###,###,##0.0000"

    invoke-static {v1, v2, v3}, Lnaj;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    :goto_5
    invoke-virtual {p1}, Lfue;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 547
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->R:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cota\u00e7\u00e3o do D\u00f3lar no dia "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lfue;->n()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    :goto_6
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->X:Lghu;

    invoke-virtual {v0}, Lghu;->u()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->Z:Z

    .line 553
    iget-boolean v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->Z:Z

    invoke-direct {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->a(Z)V

    .line 554
    return-void

    .line 507
    :cond_0
    const-string v0, ""

    goto/16 :goto_0

    .line 508
    :cond_1
    const-string v0, ""

    goto/16 :goto_1

    .line 513
    :cond_2
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->y:Landroid/widget/TextView;

    const-string v1, "R$ 0,00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 522
    :cond_3
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->F:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 528
    :cond_4
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->G:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 543
    :cond_5
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->Q:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 549
    :cond_6
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->R:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6
.end method

.method private a(Ljava/lang/Object;I)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 396
    check-cast p1, Lfue;

    iput-object p1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aH:Lfue;

    .line 398
    iget-boolean v1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->c:Z

    if-eqz v1, :cond_0

    move p2, v0

    .line 402
    :cond_0
    if-nez p2, :cond_2

    .line 405
    iget-object v1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ab:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 406
    iget-object v1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ac:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 408
    new-instance v1, Liem;

    invoke-direct {v1, p0}, Liem;-><init>(Lcom/santander/app/faturas/activity/FaturasActivity;)V

    .line 409
    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Liem;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 428
    :goto_0
    iget-boolean v1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->d:Z

    if-eqz v1, :cond_1

    .line 429
    packed-switch p2, :pswitch_data_0

    .line 437
    const-string v1, "Cartoes_Fatura_SelecioneFatura_Acao"

    iget-object v2, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aH:Lfue;

    invoke-virtual {v2}, Lfue;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :cond_1
    :goto_1
    iput-boolean v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->d:Z

    .line 443
    return-void

    .line 411
    :cond_2
    if-ne p2, v0, :cond_3

    .line 413
    iget-object v1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ab:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 414
    iget-object v1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ac:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 416
    new-instance v1, Lieo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lieo;-><init>(Lcom/santander/app/faturas/activity/FaturasActivity;Lieb;)V

    .line 417
    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lieo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 421
    :cond_3
    iget-object v1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ab:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 422
    iget-object v1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ac:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 424
    new-instance v1, Lien;

    iget-object v2, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aH:Lfue;

    invoke-direct {v1, p0, v2, p2}, Lien;-><init>(Lcom/santander/app/faturas/activity/FaturasActivity;Lfue;I)V

    .line 425
    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lien;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 431
    :pswitch_0
    const-string v1, "Cartoes_Fatura_SelecioneFatura_Acao"

    const-string v2, "Aberta"

    invoke-static {v1, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 434
    :pswitch_1
    const-string v1, "Cartoes_Fatura_SelecioneFatura_Acao"

    const-string v2, "Fechada"

    invoke-static {v1, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 429
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Z)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 446
    if-eqz p1, :cond_0

    move v0, v1

    .line 448
    :goto_0
    const v2, 0x7f100ba4

    invoke-virtual {p0, v2}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 449
    const v2, 0x7f100b25

    invoke-virtual {p0, v2}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 450
    const v2, 0x7f100b26

    invoke-virtual {p0, v2}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 451
    const v2, 0x7f100b2a

    invoke-virtual {p0, v2}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 452
    const v2, 0x7f100b29

    invoke-virtual {p0, v2}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 453
    const v2, 0x7f100b32

    invoke-virtual {p0, v2}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 454
    const v2, 0x7f100b31

    invoke-virtual {p0, v2}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 455
    const v2, 0x7f100b36

    invoke-virtual {p0, v2}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 456
    const v2, 0x7f100b35

    invoke-virtual {p0, v2}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 457
    const v2, 0x7f100cb9

    invoke-virtual {p0, v2}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 458
    const v2, 0x7f100b39

    invoke-virtual {p0, v2}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 459
    const v2, 0x7f100cb1

    invoke-virtual {p0, v2}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 460
    iget-object v2, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aD:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 462
    invoke-static {}, Lmzr;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 463
    iget-object v2, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 464
    iget-object v2, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 470
    :goto_1
    const v1, 0x7f100bab

    invoke-virtual {p0, v1}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 471
    const v1, 0x7f100bbb

    invoke-virtual {p0, v1}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 472
    const v1, 0x7f100baa

    invoke-virtual {p0, v1}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 473
    iget-object v1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->U:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 474
    const v1, 0x7f100bb9

    invoke-virtual {p0, v1}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 475
    const v1, 0x7f100bba

    invoke-virtual {p0, v1}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 476
    iget-object v1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->V:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 478
    return-void

    .line 446
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 466
    :cond_1
    iget-object v1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 467
    iget-object v1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public static synthetic a(Lcom/santander/app/faturas/activity/FaturasActivity;Z)Z
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->Z:Z

    return p1
.end method

.method public static synthetic b(Lcom/santander/app/faturas/activity/FaturasActivity;)Lfue;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->af:Lfue;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    const v5, 0x7f100caa

    const v4, 0x7f100bcf

    const v3, 0x7f100bbd

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 187
    const v0, 0x7f1006fb

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ab:Landroid/widget/LinearLayout;

    .line 188
    const v0, 0x7f1006fd

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ac:Landroid/widget/LinearLayout;

    .line 189
    const v0, 0x7f1008a9

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ad:Landroid/widget/LinearLayout;

    .line 190
    const v0, 0x7f100cb2

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aD:Landroid/widget/LinearLayout;

    .line 191
    const v0, 0x7f10055e

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ae:Landroid/widget/TextView;

    .line 192
    const v0, 0x7f100cab

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aM:Landroid/widget/ImageView;

    .line 193
    const v0, 0x7f100cac

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aL:Landroid/widget/RelativeLayout;

    .line 194
    invoke-virtual {p0, v5}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->al:Landroid/widget/TextView;

    .line 195
    invoke-virtual {p0, v3}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->e:Landroid/widget/RelativeLayout;

    .line 196
    invoke-virtual {p0, v4}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->f:Landroid/widget/RelativeLayout;

    .line 197
    const v0, 0x7f100bbf

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->g:Landroid/widget/LinearLayout;

    .line 198
    const v0, 0x7f100bd1

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->w:Landroid/widget/LinearLayout;

    .line 199
    const v0, 0x7f100ba2

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->x:Landroid/widget/TextView;

    .line 200
    const v0, 0x7f100b1b

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->y:Landroid/widget/TextView;

    .line 201
    const v0, 0x7f100ba5

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->z:Landroid/widget/Button;

    .line 202
    const v0, 0x7f100ba6

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->B:Landroid/widget/LinearLayout;

    .line 203
    const v0, 0x7f100cb8

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->C:Landroid/widget/LinearLayout;

    .line 204
    const v0, 0x7f100cb7

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->A:Landroid/widget/Button;

    .line 205
    const v0, 0x7f100baf

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->D:Landroid/widget/TextView;

    .line 206
    const v0, 0x7f100bb3

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->E:Landroid/widget/TextView;

    .line 207
    const v0, 0x7f100bb6

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->F:Landroid/widget/TextView;

    .line 208
    const v0, 0x7f100bb7

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->G:Landroid/widget/TextView;

    .line 209
    const v0, 0x7f100cc2

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aG:Landroid/widget/TextView;

    .line 210
    invoke-virtual {p0, v3}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->H:Landroid/widget/RelativeLayout;

    .line 211
    const v0, 0x7f100bc2

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->I:Landroid/widget/TextView;

    .line 212
    const v0, 0x7f100bc5

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->J:Landroid/widget/TextView;

    .line 213
    const v0, 0x7f100bc8

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->K:Landroid/widget/TextView;

    .line 214
    const v0, 0x7f100bcb

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->L:Landroid/widget/TextView;

    .line 215
    const v0, 0x7f100bce

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->M:Landroid/widget/TextView;

    .line 216
    invoke-virtual {p0, v4}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->N:Landroid/widget/RelativeLayout;

    .line 217
    const v0, 0x7f100bd4

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->O:Landroid/widget/TextView;

    .line 218
    const v0, 0x7f100bd7

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->P:Landroid/widget/TextView;

    .line 219
    const v0, 0x7f100bd9

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->R:Landroid/widget/TextView;

    .line 220
    const v0, 0x7f100ccb

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->S:Landroid/widget/TextView;

    .line 221
    const v0, 0x7f100bda

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->Q:Landroid/widget/TextView;

    .line 222
    const v0, 0x7f100b21

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->T:Landroid/widget/LinearLayout;

    .line 223
    const v0, 0x7f100bac

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->U:Landroid/widget/LinearLayout;

    .line 224
    const v0, 0x7f100bbc

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->V:Landroid/widget/LinearLayout;

    .line 225
    const v0, 0x7f100b20

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->W:Landroid/widget/LinearLayout;

    .line 226
    const v0, 0x7f100ca6

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aj:Landroid/widget/TextView;

    .line 227
    const v0, 0x7f100ca8

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ak:Landroid/widget/TextView;

    .line 228
    invoke-virtual {p0, v5}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->al:Landroid/widget/TextView;

    .line 229
    const v0, 0x7f100cad

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->am:Landroid/widget/TextView;

    .line 230
    const v0, 0x7f100caf

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->an:Landroid/widget/TextView;

    .line 231
    const v0, 0x7f100cb0

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ao:Landroid/widget/TextView;

    .line 232
    const v0, 0x7f100cbd

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ap:Landroid/widget/TextView;

    .line 233
    const v0, 0x7f100cc0

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aq:Landroid/widget/TextView;

    .line 234
    const v0, 0x7f100cc3

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ar:Landroid/widget/TextView;

    .line 235
    const v0, 0x7f100cc4

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->as:Landroid/widget/TextView;

    .line 236
    const v0, 0x7f100cc5

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->at:Landroid/widget/TextView;

    .line 237
    const v0, 0x7f100cc6

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->au:Landroid/widget/TextView;

    .line 238
    const v0, 0x7f100cc7

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->av:Landroid/widget/TextView;

    .line 239
    const v0, 0x7f100cc8

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aw:Landroid/widget/TextView;

    .line 240
    const v0, 0x7f100cc9

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ax:Landroid/widget/TextView;

    .line 241
    const v0, 0x7f100cca

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ay:Landroid/widget/TextView;

    .line 242
    const v0, 0x7f100ccc

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->az:Landroid/widget/TextView;

    .line 243
    const v0, 0x7f100cd1

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aA:Landroid/widget/TextView;

    .line 244
    const v0, 0x7f100cd5

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aB:Landroid/widget/TextView;

    .line 245
    const v0, 0x7f100cd9

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aC:Landroid/widget/TextView;

    .line 246
    const v0, 0x7f100cb3

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aE:Landroid/widget/TextView;

    .line 247
    const v0, 0x7f100cb4

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aF:Landroid/widget/TextView;

    .line 248
    const v0, 0x7f100cb6

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aI:Landroid/widget/ImageButton;

    .line 249
    const v0, 0x7f100cb5

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aJ:Landroid/widget/RelativeLayout;

    .line 250
    const v0, 0x7f100139

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aK:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    .line 251
    const v0, 0x7f1008a8

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/ClickToSelectEditText;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ai:Lcom/santander/app/components/view/ClickToSelectEditText;

    .line 253
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aD:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aF:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aE:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aF:Landroid/widget/TextView;

    new-instance v1, Lieb;

    invoke-direct {v1, p0}, Lieb;-><init>(Lcom/santander/app/faturas/activity/FaturasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aJ:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aI:Landroid/widget/ImageButton;

    new-instance v1, Liee;

    invoke-direct {v1, p0}, Liee;-><init>(Lcom/santander/app/faturas/activity/FaturasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    :goto_0
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 351
    :goto_1
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->z:Landroid/widget/Button;

    new-instance v1, Liej;

    invoke-direct {v1, p0}, Liej;-><init>(Lcom/santander/app/faturas/activity/FaturasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->A:Landroid/widget/Button;

    new-instance v1, Liek;

    invoke-direct {v1, p0}, Liek;-><init>(Lcom/santander/app/faturas/activity/FaturasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    invoke-direct {p0}, Lcom/santander/app/faturas/activity/FaturasActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 381
    invoke-direct {p0}, Lcom/santander/app/faturas/activity/FaturasActivity;->e()V

    .line 386
    :goto_2
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ai:Lcom/santander/app/components/view/ClickToSelectEditText;

    new-instance v1, Liel;

    invoke-direct {v1, p0}, Liel;-><init>(Lcom/santander/app/faturas/activity/FaturasActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ClickToSelectEditText;->setOnItemSelectedListener(Lgpd;)V

    .line 392
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 296
    :goto_3
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aE:Landroid/widget/TextView;

    new-instance v1, Lief;

    invoke-direct {v1, p0}, Lief;-><init>(Lcom/santander/app/faturas/activity/FaturasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aF:Landroid/widget/TextView;

    new-instance v1, Lieg;

    invoke-direct {v1, p0}, Lieg;-><init>(Lcom/santander/app/faturas/activity/FaturasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->B:Landroid/widget/LinearLayout;

    new-instance v1, Lieh;

    invoke-direct {v1, p0}, Lieh;-><init>(Lcom/santander/app/faturas/activity/FaturasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->C:Landroid/widget/LinearLayout;

    new-instance v1, Liei;

    invoke-direct {v1, p0}, Liei;-><init>(Lcom/santander/app/faturas/activity/FaturasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 383
    :cond_3
    invoke-direct {p0}, Lcom/santander/app/faturas/activity/FaturasActivity;->d()V

    goto :goto_2
.end method

.method public static synthetic b(Lcom/santander/app/faturas/activity/FaturasActivity;Lfue;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/santander/app/faturas/activity/FaturasActivity;->a(Lfue;)V

    return-void
.end method

.method private b(Lfue;)V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 559
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aD:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 561
    iget-object v1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aj:Landroid/widget/TextView;

    .line 562
    invoke-virtual {p1}, Lfue;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lfue;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    const v0, 0x7f100ca8

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ak:Landroid/widget/TextView;

    .line 565
    invoke-virtual {p1}, Lfue;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 566
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ak:Landroid/widget/TextView;

    invoke-virtual {p1}, Lfue;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :goto_1
    invoke-virtual {p1}, Lfue;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 571
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->al:Landroid/widget/TextView;

    invoke-virtual {p1}, Lfue;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    :goto_2
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aL:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 577
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aM:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 579
    const v0, 0x7f100cad

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->am:Landroid/widget/TextView;

    .line 580
    invoke-virtual {p1}, Lfue;->V()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 581
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->am:Landroid/widget/TextView;

    invoke-virtual {p1}, Lfue;->V()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->am:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R$ 0,00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aL:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 584
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aM:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 590
    :cond_0
    :goto_3
    const v0, 0x7f100caf

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->an:Landroid/widget/TextView;

    .line 591
    invoke-virtual {p1}, Lfue;->q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 592
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->an:Landroid/widget/TextView;

    invoke-virtual {p1}, Lfue;->q()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :goto_4
    const v0, 0x7f100cb0

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ao:Landroid/widget/TextView;

    .line 597
    invoke-virtual {p1}, Lfue;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 598
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ao:Landroid/widget/TextView;

    invoke-virtual {p1}, Lfue;->p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    :goto_5
    invoke-virtual {p1}, Lfue;->I()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 603
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aG:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Limite dispon\u00edvel em "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lfue;->I()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    :goto_6
    const v0, 0x7f100cbd

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ap:Landroid/widget/TextView;

    .line 609
    invoke-virtual {p1}, Lfue;->F()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 610
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ap:Landroid/widget/TextView;

    invoke-virtual {p1}, Lfue;->F()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :goto_7
    const v0, 0x7f100cc0

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aq:Landroid/widget/TextView;

    .line 617
    invoke-virtual {p1}, Lfue;->G()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 618
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aq:Landroid/widget/TextView;

    invoke-virtual {p1}, Lfue;->G()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :goto_8
    const v0, 0x7f100cc3

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ar:Landroid/widget/TextView;

    .line 625
    invoke-virtual {p1}, Lfue;->H()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 626
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ar:Landroid/widget/TextView;

    invoke-virtual {p1}, Lfue;->H()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :goto_9
    const v0, 0x7f100cc4

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->as:Landroid/widget/TextView;

    .line 633
    invoke-virtual {p1}, Lfue;->u()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 634
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->as:Landroid/widget/TextView;

    invoke-virtual {p1}, Lfue;->u()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    :goto_a
    const v0, 0x7f100cc5

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->at:Landroid/widget/TextView;

    .line 639
    invoke-virtual {p1}, Lfue;->J()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 640
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->at:Landroid/widget/TextView;

    invoke-virtual {p1}, Lfue;->J()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    :goto_b
    const v0, 0x7f100cc6

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->au:Landroid/widget/TextView;

    .line 645
    invoke-virtual {p1}, Lfue;->K()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 646
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->au:Landroid/widget/TextView;

    invoke-virtual {p1}, Lfue;->K()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    :goto_c
    const v0, 0x7f100cc7

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->av:Landroid/widget/TextView;

    .line 652
    invoke-virtual {p1}, Lfue;->L()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 653
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->av:Landroid/widget/TextView;

    invoke-virtual {p1}, Lfue;->L()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    :goto_d
    const v0, 0x7f100cc8

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aw:Landroid/widget/TextView;

    .line 658
    invoke-virtual {p1}, Lfue;->M()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 659
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aw:Landroid/widget/TextView;

    invoke-virtual {p1}, Lfue;->M()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :goto_e
    const v0, 0x7f100cc9

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ax:Landroid/widget/TextView;

    .line 665
    invoke-virtual {p1}, Lfue;->M()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 666
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ax:Landroid/widget/TextView;

    invoke-virtual {p1}, Lfue;->y()Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-static {v0, v1, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :goto_f
    const v0, 0x7f100cca

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ay:Landroid/widget/TextView;

    .line 671
    invoke-virtual {p1}, Lfue;->x()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 672
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ay:Landroid/widget/TextView;

    invoke-virtual {p1}, Lfue;->x()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lgoh;->b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    :goto_10
    const v0, 0x7f100ccc

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->az:Landroid/widget/TextView;

    .line 678
    invoke-virtual {p1}, Lfue;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 679
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->az:Landroid/widget/TextView;

    .line 680
    invoke-virtual {p1}, Lfue;->m()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    const-string v3, "###,###,##0.0000"

    invoke-static {v1, v2, v3}, Lnaj;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    :goto_11
    const v0, 0x7f100cd1

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aA:Landroid/widget/TextView;

    .line 685
    invoke-virtual {p1}, Lfue;->U()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 686
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aA:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lfue;->U()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    :goto_12
    const v0, 0x7f100cd5

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aB:Landroid/widget/TextView;

    .line 691
    invoke-virtual {p1}, Lfue;->W()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 692
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aB:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lfue;->W()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    :goto_13
    const v0, 0x7f100cd9

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aC:Landroid/widget/TextView;

    .line 697
    invoke-virtual {p1}, Lfue;->X()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 698
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aC:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lfue;->X()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    :goto_14
    invoke-virtual {p1}, Lfue;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 703
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->S:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cota\u00e7\u00e3o do D\u00f3lar no dia "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lfue;->n()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    :goto_15
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->X:Lghu;

    invoke-virtual {v0}, Lghu;->u()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->Z:Z

    .line 709
    iget-boolean v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->Z:Z

    invoke-direct {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->a(Z)V

    .line 710
    return-void

    .line 562
    :cond_1
    const-string v0, ""

    goto/16 :goto_0

    .line 568
    :cond_2
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ak:Landroid/widget/TextView;

    const-string v1, "R$0,00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 573
    :cond_3
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->al:Landroid/widget/TextView;

    const-string v1, "R$0,00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 587
    :cond_4
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->al:Landroid/widget/TextView;

    const-string v1, "R$0,00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 594
    :cond_5
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->an:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 600
    :cond_6
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ao:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 605
    :cond_7
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aG:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 613
    :cond_8
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ap:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 621
    :cond_9
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aq:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 629
    :cond_a
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ar:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 636
    :cond_b
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->as:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 642
    :cond_c
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->at:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 649
    :cond_d
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->au:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 655
    :cond_e
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->av:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 662
    :cond_f
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aw:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 668
    :cond_10
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ax:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 675
    :cond_11
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ay:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 682
    :cond_12
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->az:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    .line 688
    :cond_13
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aA:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    .line 694
    :cond_14
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aB:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_13

    .line 700
    :cond_15
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aC:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_14

    .line 705
    :cond_16
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->S:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_15
.end method

.method public static synthetic b(Lcom/santander/app/faturas/activity/FaturasActivity;Z)Z
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->c:Z

    return p1
.end method

.method public static synthetic c(Lcom/santander/app/faturas/activity/FaturasActivity;Lfue;)Lfue;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ag:Lfue;

    return-object p1
.end method

.method private c()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 482
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->A()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static synthetic c(Lcom/santander/app/faturas/activity/FaturasActivity;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->Z:Z

    return v0
.end method

.method public static synthetic d(Lcom/santander/app/faturas/activity/FaturasActivity;)Lfue;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ag:Lfue;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 486
    invoke-direct {p0}, Lcom/santander/app/faturas/activity/FaturasActivity;->f()V

    .line 488
    new-instance v0, Liep;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Liep;-><init>(Lcom/santander/app/faturas/activity/FaturasActivity;Lieb;)V

    .line 489
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Liep;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 490
    return-void
.end method

.method public static synthetic d(Lcom/santander/app/faturas/activity/FaturasActivity;Lfue;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/santander/app/faturas/activity/FaturasActivity;->b(Lfue;)V

    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 493
    invoke-static {p0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    .line 494
    iget-object v1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->t()Lgke;

    move-result-object v1

    new-instance v2, Liec;

    invoke-direct {v2, p0, v0}, Liec;-><init>(Lcom/santander/app/faturas/activity/FaturasActivity;Landroid/app/Dialog;)V

    invoke-interface {v1, v2}, Lgke;->a(Lfoh;)V

    .line 503
    return-void
.end method

.method public static synthetic e(Lcom/santander/app/faturas/activity/FaturasActivity;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/santander/app/faturas/activity/FaturasActivity;->d()V

    return-void
.end method

.method public static synthetic f(Lcom/santander/app/faturas/activity/FaturasActivity;)Lghu;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->X:Lghu;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 713
    invoke-static {}, Lgmy;->c()Ljava/util/List;

    move-result-object v0

    .line 714
    iget-object v1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aK:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    new-instance v2, Lamy;

    invoke-direct {v2, v0}, Lamy;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setAdapter(Lamr;)V

    .line 715
    iget-object v1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aK:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    new-instance v2, Lied;

    invoke-direct {v2, p0, v0}, Lied;-><init>(Lcom/santander/app/faturas/activity/FaturasActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setOnItemSelectedListener(Lamt;)V

    .line 728
    iget-object v1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aK:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    iget v2, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setCurrentItem(Ljava/lang/Object;)V

    .line 729
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 789
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aa:Ljava/util/List;

    .line 790
    const/4 v0, 0x0

    .line 791
    iget-object v1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->X:Lghu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->X:Lghu;

    invoke-virtual {v1}, Lghu;->j()Lfui;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->X:Lghu;

    invoke-virtual {v1}, Lghu;->j()Lfui;

    move-result-object v1

    invoke-virtual {v1}, Lfui;->a()Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 792
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->X:Lghu;

    invoke-virtual {v0}, Lghu;->j()Lfui;

    move-result-object v0

    invoke-virtual {v0}, Lfui;->a()Ljava/util/Vector;

    move-result-object v0

    .line 795
    :cond_0
    new-instance v1, Lfue;

    invoke-direct {v1}, Lfue;-><init>()V

    .line 796
    const-string v2, "Aberta"

    invoke-virtual {v1, v2}, Lfue;->a(Ljava/lang/String;)V

    .line 798
    new-instance v2, Lfue;

    invoke-direct {v2}, Lfue;-><init>()V

    .line 799
    const-string v3, "Fechada"

    invoke-virtual {v2, v3}, Lfue;->a(Ljava/lang/String;)V

    .line 801
    iget-object v3, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aa:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 802
    iget-object v1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aa:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 803
    if-eqz v0, :cond_1

    .line 804
    iget-object v1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aa:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 807
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ai:Lcom/santander/app/components/view/ClickToSelectEditText;

    iget-object v1, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aa:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ClickToSelectEditText;->setItems(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    :goto_0
    return-void

    .line 808
    :catch_0
    move-exception v0

    .line 809
    const-string v1, "ATG"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static synthetic g(Lcom/santander/app/faturas/activity/FaturasActivity;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/santander/app/faturas/activity/FaturasActivity;->g()V

    return-void
.end method

.method public static synthetic h(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ad:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic i(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ae:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic j(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ab:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic k(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ac:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic l(Lcom/santander/app/faturas/activity/FaturasActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->aN:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic m(Lcom/santander/app/faturas/activity/FaturasActivity;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->c:Z

    return v0
.end method

.method public static synthetic n(Lcom/santander/app/faturas/activity/FaturasActivity;)Lcom/santander/app/components/view/ClickToSelectEditText;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->ai:Lcom/santander/app/components/view/ClickToSelectEditText;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 1090
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1091
    const-string v1, "tipo"

    sget-object v2, Lnat;->USUARIO_CONSULTIVO:Lnat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1092
    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->startActivity(Landroid/content/Intent;)V

    .line 1093
    return-void
.end method

.method public a(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v7/app/AppCompatActivity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1084
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1085
    const-string v1, "indexCartao"

    iget v2, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1086
    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->startActivity(Landroid/content/Intent;)V

    .line 1087
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 167
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 169
    const v0, 0x7f0401c7

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->setContentView(I)V

    .line 170
    const v0, 0x7f09049f

    invoke-virtual {p0, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->c(I)V

    .line 172
    iput-object p0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->i:Landroid/app/Activity;

    .line 174
    invoke-virtual {p0}, Lcom/santander/app/faturas/activity/FaturasActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/santander/app/faturas/activity/FaturasActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "indexCartao"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->b:I

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/faturas/activity/FaturasActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/santander/app/faturas/activity/FaturasActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "faturaDoMes"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/santander/app/faturas/activity/FaturasActivity;->c:Z

    .line 182
    :cond_1
    invoke-direct {p0}, Lcom/santander/app/faturas/activity/FaturasActivity;->b()V

    .line 183
    return-void
.end method
