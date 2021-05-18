.class public Lcom/santander/app/dpp/DPPPreenchimentoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Ljava/io/Serializable;
.implements Lnez;


# static fields
.field private static final g:J = 0x1L

.field private static final w:Ljava/lang/String; = "opcao"

.field private static final x:Ljava/lang/String; = "novaPoupanca"

.field private static final y:Ljava/lang/String; = "DPPoupanca"


# instance fields
.field private transient A:Lcom/santander/app/widget/Carrossel;

.field private transient B:Lcom/santander/app/widget/Indicator;

.field private transient C:Landroid/app/Dialog;

.field private D:Lftc;

.field private E:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

.field private F:Landroid/widget/Button;

.field private G:Landroid/widget/EditText;

.field private H:Landroid/text/TextWatcher;

.field private I:Landroid/widget/EditText;

.field private J:Landroid/widget/Spinner;

.field private K:Lheq;

.field private transient L:Landroid/support/v4/view/ViewPager;

.field private transient M:Lhdi;

.field private transient N:Landroid/support/v4/view/ViewPager;

.field private transient O:Lhdg;

.field private P:Landroid/widget/EditText;

.field private Q:Z

.field private R:Lfuu;

.field private S:Lfwh;

.field private T:Landroid/widget/EditText;

.field private U:Landroid/widget/EditText;

.field private V:I

.field private W:Z

.field private X:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lheq;",
            ">;"
        }
    .end annotation
.end field

.field private transient Y:Lhee;

.field private Z:Z

.field public a:Landroid/widget/ListView;

.field private aa:Z

.field public transient b:Lhcz;

.field public c:Landroid/widget/LinearLayout;

.field public d:Landroid/widget/LinearLayout;

.field public e:Landroid/widget/LinearLayout;

.field public f:Landroid/widget/LinearLayout;

.field private transient z:Lcom/santander/app/widget/Carrossel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 96
    new-instance v0, Lheq;

    invoke-direct {v0}, Lheq;-><init>()V

    iput-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->K:Lheq;

    .line 102
    iput-boolean v1, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->Q:Z

    .line 108
    iput-boolean v1, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->W:Z

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->Z:Z

    .line 112
    iput-boolean v1, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->aa:Z

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->C:Landroid/app/Dialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Lftc;)Lftc;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->D:Lftc;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->X:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    .line 756
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 757
    const-string v1, "01"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    const-string v1, "02"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    const-string v1, "03"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    const-string v1, "04"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    const-string v1, "05"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    const-string v1, "06"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    const-string v1, "07"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    const-string v1, "08"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    const-string v1, "09"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    const-string v1, "10"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    const-string v1, "11"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    const-string v1, "12"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    const-string v1, "13"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    const-string v1, "14"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    const-string v1, "15"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    const-string v1, "16"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    const-string v1, "17"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 774
    const-string v1, "18"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    const-string v1, "19"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 776
    const-string v1, "20"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 777
    const-string v1, "21"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 778
    const-string v1, "22"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    const-string v1, "23"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 780
    const-string v1, "24"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 781
    const-string v1, "25"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 782
    const-string v1, "26"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    const-string v1, "27"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 784
    const-string v1, "28"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 785
    new-instance v1, Lhdt;

    invoke-virtual {p0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f04037e

    invoke-direct {v1, p0, v2, v3, v0}, Lhdt;-><init>(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Landroid/content/Context;ILjava/util/List;)V

    .line 800
    const v0, 0x7f04037d

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 801
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->J:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 803
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->J:Landroid/widget/Spinner;

    new-instance v1, Lhdu;

    invoke-direct {v1, p0}, Lhdu;-><init>(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 819
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Ljava/util/Vector;Z)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a(Ljava/util/Vector;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 842
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    .line 843
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 844
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    .line 845
    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 846
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 849
    :cond_1
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v10, 0x7f1004c9

    const v9, 0x7f1004c8

    const v8, 0x7f10040a

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 616
    const v0, 0x7f100407

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->N:Landroid/support/v4/view/ViewPager;

    .line 617
    invoke-virtual {p0, v8}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/santander/app/widget/Indicator;

    .line 619
    invoke-virtual {p0, v9}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 620
    invoke-virtual {p0, v10}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 622
    new-instance v0, Lhdg;

    iget-object v2, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->N:Landroid/support/v4/view/ViewPager;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lhdg;-><init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lcom/santander/app/widget/Indicator;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    iput-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->O:Lhdg;

    .line 625
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 627
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->O:Lhdg;

    invoke-virtual {v0, p1, v6}, Lhdg;->a(Ljava/util/List;I)V

    .line 628
    invoke-virtual {p0, v8}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 629
    invoke-virtual {p0, v9}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 630
    invoke-virtual {p0, v10}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 666
    :goto_0
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->O:Lhdg;

    new-instance v1, Lhec;

    invoke-direct {v1, p0}, Lhec;-><init>(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)V

    invoke-virtual {v0, v1}, Lhdg;->a(Lnfd;)V

    .line 688
    iget-object v1, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->R:Lfuu;

    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->O:Lhdg;

    invoke-virtual {v0}, Lhdg;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getAutorizado()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfuu;->setAutorizado(Ljava/lang/String;)V

    .line 689
    iget-object v1, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->R:Lfuu;

    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->O:Lhdg;

    invoke-virtual {v0}, Lhdg;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getCpf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfuu;->setCpf(Ljava/lang/String;)V

    .line 690
    iget-object v1, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->R:Lfuu;

    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->O:Lhdg;

    invoke-virtual {v0}, Lhdg;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfuu;->setAgencia(Ljava/lang/String;)V

    .line 691
    iget-object v1, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->R:Lfuu;

    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->O:Lhdg;

    invoke-virtual {v0}, Lhdg;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfuu;->setCuenta(Ljava/lang/String;)V

    .line 693
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 694
    invoke-virtual {p0, v8}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 695
    invoke-virtual {p0, v9}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 696
    invoke-virtual {p0, v10}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 698
    :cond_0
    return-void

    .line 634
    :cond_1
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->M:Lhdi;

    invoke-virtual {v0}, Lhdi;->g()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->M:Lhdi;

    invoke-virtual {v1}, Lhdi;->a()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftl;

    .line 636
    invoke-virtual {v0}, Lftl;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 638
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v2, v6

    .line 640
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 642
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v1}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lftl;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 643
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v1}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lftl;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 645
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    :cond_2
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->O:Lhdg;

    invoke-virtual {v0, v3, v6}, Lhdg;->a(Ljava/util/List;I)V

    .line 652
    invoke-virtual {p0, v8}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 653
    invoke-virtual {p0, v9}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 654
    invoke-virtual {p0, v10}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 640
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 658
    :cond_4
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->O:Lhdg;

    invoke-virtual {v0, p1, v6}, Lhdg;->a(Ljava/util/List;I)V

    .line 659
    invoke-virtual {p0, v8}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 660
    invoke-virtual {p0, v9}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 661
    invoke-virtual {p0, v10}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private a(Ljava/util/Vector;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lftl;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 702
    const v0, 0x7f10083a

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->L:Landroid/support/v4/view/ViewPager;

    .line 703
    const v0, 0x7f10083d

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/santander/app/widget/Indicator;

    .line 704
    const v0, 0x7f10083b

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 705
    const v0, 0x7f10083c

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 707
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->z:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0, v6}, Lcom/santander/app/widget/Carrossel;->setVisibility(I)V

    .line 709
    new-instance v0, Lhdi;

    iget-object v2, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->L:Landroid/support/v4/view/ViewPager;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lhdi;-><init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lcom/santander/app/widget/Indicator;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    iput-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->M:Lhdi;

    .line 713
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->M:Lhdi;

    iget v1, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->V:I

    invoke-virtual {v0, p1, v6, v1, p2}, Lhdi;->a(Ljava/util/Vector;IIZ)V

    .line 715
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->M:Lhdi;

    new-instance v1, Lhds;

    invoke-direct {v1, p0}, Lhds;-><init>(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)V

    invoke-virtual {v0, v1}, Lhdi;->a(Lnfd;)V

    .line 740
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a(Ljava/util/List;)V

    .line 741
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->Z:Z

    return v0
.end method

.method public static synthetic a(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Z)Z
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->Z:Z

    return p1
.end method

.method public static synthetic b(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->P:Landroid/widget/EditText;

    return-object v0
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 823
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 824
    const/16 v2, 0x50

    .line 825
    const/4 v0, 0x0

    move v3, v2

    move-object v2, v0

    move v0, v1

    .line 826
    :goto_0
    iget-object v5, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->b:Lhcz;

    invoke-virtual {v5}, Lhcz;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 827
    iget-object v5, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->b:Lhcz;

    iget-object v6, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v5, v0, v2, v6}, Lhcz;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 828
    if-nez v0, :cond_0

    .line 829
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v4, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 830
    :cond_0
    invoke-virtual {v2, v4, v1}, Landroid/view/View;->measure(II)V

    .line 831
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v3, v5

    .line 826
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 834
    :cond_1
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 836
    iget-object v1, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v1

    iget-object v2, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->b:Lhcz;

    invoke-virtual {v2}, Lhcz;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 837
    iget-object v1, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 838
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    .line 839
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Z)Z
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->Q:Z

    return p1
.end method

.method public static synthetic c(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->V:I

    return v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 852
    const v0, 0x7f101097

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    iput-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->A:Lcom/santander/app/widget/Carrossel;

    .line 853
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->A:Lcom/santander/app/widget/Carrossel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Carrossel;->setVisibility(I)V

    .line 854
    const v0, 0x7f100817

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Indicator;

    iput-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->B:Lcom/santander/app/widget/Indicator;

    .line 855
    new-instance v0, Lfoo;

    iget-object v1, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->q()Lgvx;

    move-result-object v1

    invoke-interface {v1}, Lgvx;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lfoo;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 856
    iget-object v1, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->A:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v1, v0}, Lcom/santander/app/widget/Carrossel;->setAdapter(Lfom;)V

    .line 857
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Z)Z
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->aa:Z

    return p1
.end method

.method public static synthetic d(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lftc;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->D:Lftc;

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->X:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic f(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->G:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic g(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->I:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic h(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->J:Landroid/widget/Spinner;

    return-object v0
.end method

.method public static synthetic i(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lcom/santander/app/dpp/DPPPreenchimentoActivity;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->E:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    return-object v0
.end method

.method public static synthetic j(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->Q:Z

    return v0
.end method

.method public static synthetic k(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->T:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic l(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->U:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic m(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lfwh;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->S:Lfwh;

    return-object v0
.end method

.method public static synthetic n(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lheq;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->K:Lheq;

    return-object v0
.end method

.method public static synthetic o(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lhdg;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->O:Lhdg;

    return-object v0
.end method

.method public static synthetic p(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lhdi;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->M:Lhdi;

    return-object v0
.end method

.method public static synthetic q(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->b()V

    return-void
.end method

.method public static synthetic r(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lfuu;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->R:Lfuu;

    return-object v0
.end method

.method public static synthetic s(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->aa:Z

    return v0
.end method

.method public static synthetic t(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->C:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 862
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lheq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 595
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    new-instance v0, Lheb;

    invoke-direct {v0, p0}, Lheb;-><init>(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)V

    .line 605
    invoke-virtual {p0, p1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 606
    new-instance v2, Lhcz;

    invoke-direct {v2, v1, p0, v0}, Lhcz;-><init>(Ljava/util/ArrayList;Landroid/content/Context;Landroid/database/DataSetObserver;)V

    iput-object v2, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->b:Lhcz;

    .line 607
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->b:Lhcz;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 608
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 609
    invoke-direct {p0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->b()V

    .line 613
    :goto_0
    return-void

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 745
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 746
    if-eqz p1, :cond_1

    .line 747
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 749
    :cond_1
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public b(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lheq;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lheq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 883
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 884
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lheq;

    .line 885
    invoke-virtual {v0}, Lheq;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->M:Lhdi;

    .line 886
    invoke-virtual {v1}, Lhdi;->g()Ljava/util/List;

    move-result-object v1

    iget-object v5, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->M:Lhdi;

    invoke-virtual {v5}, Lhdi;->a()I

    move-result v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lftl;

    .line 887
    invoke-virtual {v1}, Lftl;->c()Lftj;

    move-result-object v1

    invoke-virtual {v1}, Lftj;->a()Ljava/lang/String;

    move-result-object v1

    .line 886
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 888
    invoke-virtual {v0}, Lheq;->g()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->M:Lhdi;

    invoke-virtual {v1}, Lhdi;->g()Ljava/util/List;

    move-result-object v1

    iget-object v5, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->M:Lhdi;

    .line 889
    invoke-virtual {v5}, Lhdi;->a()I

    move-result v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lftl;

    invoke-virtual {v1}, Lftl;->c()Lftj;

    move-result-object v1

    invoke-virtual {v1}, Lftj;->d()Ljava/lang/String;

    move-result-object v1

    .line 888
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 890
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 894
    :cond_1
    return-object v2
.end method

.method public b(I)V
    .locals 4

    .prologue
    .line 867
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->B:Lcom/santander/app/widget/Indicator;

    invoke-virtual {v0, p1}, Lcom/santander/app/widget/Indicator;->setSelected(I)V

    .line 868
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->B:Lcom/santander/app/widget/Indicator;

    invoke-virtual {v0}, Lcom/santander/app/widget/Indicator;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_2

    .line 869
    const/4 v0, 0x0

    .line 870
    iget-object v1, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->D:Lftc;

    invoke-virtual {v1}, Lftc;->c()Ljava/util/Vector;

    move-result-object v1

    .line 871
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    iget-object v3, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->z:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v3}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 872
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->z:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftl;

    .line 874
    :cond_0
    if-eqz v0, :cond_1

    .line 875
    invoke-virtual {v0}, Lftl;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lftl;->m()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    :cond_1
    :goto_0
    return-void

    .line 877
    :cond_2
    invoke-direct {p0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->c()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1081
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1082
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1083
    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->startActivity(Landroid/content/Intent;)V

    .line 1084
    invoke-virtual {p0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->finish()V

    .line 1085
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 116
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const v0, 0x7f0401ab

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->setContentView(I)V

    .line 118
    const-string v0, "Preenchimento"

    const-string v1, "oncreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iput-object p0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->E:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    .line 122
    new-instance v0, Lftc;

    invoke-direct {v0}, Lftc;-><init>()V

    iput-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->D:Lftc;

    .line 124
    invoke-virtual {p0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 125
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 126
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 128
    const v1, 0x7f0903e3

    invoke-virtual {p0, v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 131
    new-instance v0, Lfuu;

    invoke-direct {v0}, Lfuu;-><init>()V

    iput-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->R:Lfuu;

    .line 132
    new-instance v0, Lfwh;

    invoke-direct {v0}, Lfwh;-><init>()V

    iput-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->S:Lfwh;

    .line 133
    const v0, 0x7f100828

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a:Landroid/widget/ListView;

    .line 134
    const v0, 0x7f100835

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->F:Landroid/widget/Button;

    .line 135
    const v0, 0x7f10080e

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 136
    const v1, 0x7f10080f

    invoke-virtual {p0, v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->c:Landroid/widget/LinearLayout;

    .line 137
    const v1, 0x7f100810

    invoke-virtual {p0, v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 138
    const v2, 0x7f100811

    invoke-virtual {p0, v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->d:Landroid/widget/LinearLayout;

    .line 139
    const v2, 0x7f10082c

    invoke-virtual {p0, v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->G:Landroid/widget/EditText;

    .line 140
    const v2, 0x7f100818

    invoke-virtual {p0, v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->e:Landroid/widget/LinearLayout;

    .line 141
    const v2, 0x7f10081d

    invoke-virtual {p0, v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->f:Landroid/widget/LinearLayout;

    .line 142
    const v2, 0x7f100829

    invoke-virtual {p0, v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->I:Landroid/widget/EditText;

    .line 143
    const v2, 0x7f10082e

    invoke-virtual {p0, v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->P:Landroid/widget/EditText;

    .line 144
    const v2, 0x7f10081b

    invoke-virtual {p0, v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->T:Landroid/widget/EditText;

    .line 145
    const v2, 0x7f10081c

    invoke-virtual {p0, v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->U:Landroid/widget/EditText;

    .line 146
    const v2, 0x7f10082a

    invoke-virtual {p0, v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->J:Landroid/widget/Spinner;

    .line 147
    const v2, 0x7f100814

    invoke-virtual {p0, v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/santander/app/widget/Carrossel;

    iput-object v2, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->z:Lcom/santander/app/widget/Carrossel;

    .line 148
    iget-object v2, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 149
    invoke-virtual {p0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 150
    const-string v4, "opcao"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->V:I

    .line 151
    iget-object v4, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->T:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v4, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->U:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 154
    const-string v4, "dpp"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 155
    const-string v4, "dpp"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lheq;

    iput-object v2, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->K:Lheq;

    .line 160
    :goto_0
    iget v2, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->V:I

    if-ne v2, v8, :cond_0

    .line 161
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 163
    :cond_0
    iget-object v2, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->P:Landroid/widget/EditText;

    new-instance v4, Lhdr;

    invoke-direct {v4, p0}, Lhdr;-><init>(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    new-instance v2, Lhdv;

    invoke-direct {v2, p0}, Lhdv;-><init>(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    new-instance v0, Lhdw;

    invoke-direct {v0, p0}, Lhdw;-><init>(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    const-string v0, "##/####"

    iget-object v2, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->G:Landroid/widget/EditText;

    invoke-static {v0, v2}, Lhej;->a(Ljava/lang/String;Landroid/widget/EditText;)Landroid/text/TextWatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->H:Landroid/text/TextWatcher;

    .line 257
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->G:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->H:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 258
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->G:Landroid/widget/EditText;

    new-instance v2, Lhdx;

    invoke-direct {v2, p0}, Lhdx;-><init>(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->I:Landroid/widget/EditText;

    new-instance v2, Lhdy;

    invoke-direct {v2, p0}, Lhdy;-><init>(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 295
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->I:Landroid/widget/EditText;

    new-instance v2, Lhdz;

    invoke-direct {v2, p0}, Lhdz;-><init>(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    invoke-direct {p0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a()V

    .line 306
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->F:Landroid/widget/Button;

    new-instance v2, Lhea;

    invoke-direct {v2, p0}, Lhea;-><init>(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->D:Lftc;

    invoke-virtual {v0}, Lftc;->c()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->D:Lftc;

    .line 500
    invoke-virtual {v0}, Lftc;->c()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 501
    new-instance v0, Lhee;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lhee;-><init>(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Lhdr;)V

    iput-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->Y:Lhee;

    .line 502
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->Y:Lhee;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lhee;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 521
    :cond_1
    :goto_1
    iget v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->V:I

    if-ne v0, v8, :cond_b

    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->K:Lheq;

    if-eqz v0, :cond_b

    .line 526
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move v0, v3

    .line 527
    :goto_2
    if-ge v0, v8, :cond_5

    .line 528
    new-instance v4, Lftl;

    invoke-direct {v4}, Lftl;-><init>()V

    .line 529
    invoke-virtual {v4}, Lftl;->c()Lftj;

    move-result-object v5

    iget-object v6, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->K:Lheq;

    invoke-virtual {v6}, Lheq;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lftj;->a(Ljava/lang/String;)V

    .line 530
    invoke-virtual {v4}, Lftl;->c()Lftj;

    move-result-object v5

    iget-object v6, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->K:Lheq;

    invoke-virtual {v6}, Lheq;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lftj;->d(Ljava/lang/String;)V

    .line 531
    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 527
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 157
    :cond_2
    new-instance v2, Lheq;

    invoke-direct {v2}, Lheq;-><init>()V

    iput-object v2, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->K:Lheq;

    goto/16 :goto_0

    .line 504
    :cond_3
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 505
    iget-boolean v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->W:Z

    if-nez v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->D:Lftc;

    invoke-virtual {v0}, Lftc;->c()Ljava/util/Vector;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a(Ljava/util/Vector;Z)V

    .line 508
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->D:Lftc;

    invoke-virtual {v0}, Lftc;->c()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    iput-boolean v8, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->Q:Z

    goto :goto_1

    .line 513
    :cond_4
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->D:Lftc;

    invoke-virtual {v0}, Lftc;->c()Ljava/util/Vector;

    move-result-object v0

    invoke-direct {p0, v0, v8}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a(Ljava/util/Vector;Z)V

    .line 514
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->D:Lftc;

    invoke-virtual {v0}, Lftc;->c()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    iput-boolean v8, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->Q:Z

    goto :goto_1

    .line 534
    :cond_5
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    .line 535
    invoke-direct {p0, v2, v3}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a(Ljava/util/Vector;Z)V

    .line 536
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->D:Lftc;

    invoke-virtual {v0}, Lftc;->c()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 537
    iput-boolean v8, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->Q:Z

    .line 546
    :cond_6
    :goto_3
    const v0, 0x7f10083d

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 547
    const v0, 0x7f10083b

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 548
    const v0, 0x7f10083c

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 550
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 552
    new-instance v4, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-direct {v4}, Lcom/santander/app/contacorrente/domain/Conta;-><init>()V

    .line 553
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    .line 554
    iget-object v6, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->K:Lheq;

    invoke-virtual {v6}, Lheq;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 555
    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getAutorizado()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/santander/app/contacorrente/domain/Conta;->setAutorizado(Ljava/lang/String;)V

    .line 556
    iget-object v6, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->v:Lmip;

    invoke-interface {v6}, Lmip;->f()Lmir;

    move-result-object v6

    invoke-virtual {v6}, Lmir;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/santander/app/contacorrente/domain/Conta;->setCpf(Ljava/lang/String;)V

    .line 557
    iget-object v6, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->K:Lheq;

    invoke-virtual {v6}, Lheq;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/santander/app/contacorrente/domain/Conta;->setAgencia(Ljava/lang/String;)V

    .line 558
    iget-object v6, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->K:Lheq;

    invoke-virtual {v6}, Lheq;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/santander/app/contacorrente/domain/Conta;->setCuenta(Ljava/lang/String;)V

    .line 559
    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getValor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/santander/app/contacorrente/domain/Conta;->setValor(Ljava/lang/String;)V

    .line 560
    new-instance v6, Lfuy;

    invoke-direct {v6}, Lfuy;-><init>()V

    invoke-virtual {v4, v6}, Lcom/santander/app/contacorrente/domain/Conta;->setExtractoHome(Lfuy;)V

    .line 561
    invoke-virtual {v4}, Lcom/santander/app/contacorrente/domain/Conta;->getExtractoHome()Lfuy;

    move-result-object v6

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getExtractoHome()Lfuy;

    move-result-object v0

    invoke-virtual {v0}, Lfuy;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lfuy;->u(Ljava/lang/String;)V

    .line 562
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 540
    :cond_8
    invoke-direct {p0, v2, v8}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a(Ljava/util/Vector;Z)V

    .line 541
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->D:Lftc;

    invoke-virtual {v0}, Lftc;->c()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 542
    iput-boolean v8, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->Q:Z

    goto/16 :goto_3

    .line 565
    :cond_9
    invoke-direct {p0, v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a(Ljava/util/List;)V

    .line 567
    const v0, 0x7f10040a

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 568
    const v0, 0x7f1004c8

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 569
    const v0, 0x7f1004c9

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 571
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->I:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->K:Lheq;

    invoke-virtual {v2}, Lheq;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 572
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->K:Lheq;

    invoke-virtual {v0}, Lheq;->k()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 573
    iget-object v2, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->G:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v0, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v0, v0, v5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 574
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->K:Lheq;

    invoke-virtual {v0}, Lheq;->r()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 575
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->P:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->K:Lheq;

    invoke-virtual {v2}, Lheq;->r()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 577
    :cond_a
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->J:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->K:Lheq;

    invoke-virtual {v2}, Lheq;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 579
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->K:Lheq;

    invoke-virtual {v0}, Lheq;->o()Ljava/lang/String;

    move-result-object v0

    const-string v2, "T"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 580
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 581
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 582
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 590
    :cond_b
    :goto_5
    new-instance v0, Lhed;

    invoke-direct {v0, p0}, Lhed;-><init>(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lhed;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 591
    return-void

    .line 584
    :cond_c
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 585
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 586
    iget-object v0, p0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 587
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_5
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 0

    .prologue
    .line 1077
    return-void
.end method
