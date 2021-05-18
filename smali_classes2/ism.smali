.class public Lism;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Liew;
.implements Litc;


# static fields
.field public static a:Z = false

.field public static b:Z = false

.field public static final d:I = 0x462

.field public static final e:I = 0x46a

.field private static final f:Ljava/lang/String; = "LoginFragment"


# instance fields
.field public c:Lcom/santander/app/homenaologada/presentation/HomeActivity;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Lcom/santander/app/components/view/SantanderEditText;

.field private k:Lcom/santander/app/components/view/SantanderEditText;

.field private l:Lbr/com/santander/uisdk/SantanderSwitch;

.field private m:Litf;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/app/Dialog;

.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/Button;

.field private r:Landroid/support/v7/app/AlertDialog$Builder;

.field private s:Landroid/app/Dialog;

.field private t:Ljava/lang/String;

.field private u:Landroid/support/design/widget/TextInputLayout;

.field private v:Liex;

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 99
    sput-boolean v0, Lism;->a:Z

    .line 100
    sput-boolean v0, Lism;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lism;->w:Z

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lism;->w:Z

    .line 111
    iput-object p1, p0, Lism;->t:Ljava/lang/String;

    .line 112
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lism;->w:Z

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/santander/app/homenaologada/presentation/HomeActivity;)V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lism;->w:Z

    .line 117
    iput-object p1, p0, Lism;->t:Ljava/lang/String;

    .line 118
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lism;->w:Z

    .line 119
    iput-object p3, p0, Lism;->c:Lcom/santander/app/homenaologada/presentation/HomeActivity;

    .line 120
    return-void
.end method

.method private Q()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    .prologue
    .line 207
    new-instance v0, Lisw;

    invoke-direct {v0, p0}, Lisw;-><init>(Lism;)V

    return-object v0
.end method

.method private R()Landroid/view/View$OnKeyListener;
    .locals 1

    .prologue
    .line 221
    new-instance v0, Lisx;

    invoke-direct {v0, p0}, Lisx;-><init>(Lism;)V

    return-object v0
.end method

.method private S()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 277
    new-instance v0, Lisy;

    invoke-direct {v0, p0}, Lisy;-><init>(Lism;)V

    return-object v0
.end method

.method private T()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 286
    new-instance v0, Lisz;

    invoke-direct {v0, p0}, Lisz;-><init>(Lism;)V

    return-object v0
.end method

.method private U()Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 357
    new-instance v0, Lita;

    invoke-direct {v0, p0}, Lita;-><init>(Lism;)V

    return-object v0
.end method

.method private V()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 403
    new-instance v0, Litb;

    invoke-direct {v0, p0}, Litb;-><init>(Lism;)V

    return-object v0
.end method

.method private W()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 416
    new-instance v0, Liso;

    invoke-direct {v0, p0}, Liso;-><init>(Lism;)V

    return-object v0
.end method

.method private X()V
    .locals 1

    .prologue
    .line 629
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmyz;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 630
    const v0, 0x7f09089a

    invoke-virtual {p0, v0}, Lism;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lism;->d(Ljava/lang/String;)V

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    sget-boolean v0, Lism;->b:Z

    if-nez v0, :cond_0

    .line 633
    const/4 v0, 0x1

    sput-boolean v0, Lism;->b:Z

    .line 634
    iget-object v0, p0, Lism;->m:Litf;

    invoke-interface {v0}, Litf;->r()V

    goto :goto_0
.end method

.method private Y()V
    .locals 8

    .prologue
    .line 646
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0b0224

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 647
    const v0, 0x7f04027a

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 648
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 649
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x7f0b021e

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 651
    const v0, 0x7f100d61

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Button;

    .line 652
    const-string v0, "Cancelar"

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 654
    const v0, 0x7f1002da

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 655
    const-string v2, "Ok"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 656
    new-instance v4, Lisp;

    invoke-direct {v4, p0, v1}, Lisp;-><init>(Lism;Landroid/app/Dialog;)V

    .line 673
    new-instance v5, Lisq;

    invoke-direct {v5, p0, v1}, Lisq;-><init>(Lism;Landroid/app/Dialog;)V

    .line 685
    invoke-virtual {p0}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "J\u00e1 acessou o App Way?"

    invoke-virtual {p0}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f09039f

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v0 .. v5}, Lmxn;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    .line 688
    new-instance v0, Lisr;

    invoke-direct {v0, p0, v1}, Lisr;-><init>(Lism;Landroid/app/Dialog;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 698
    return-void
.end method

.method private Z()V
    .locals 2

    .prologue
    .line 866
    iget-object v0, p0, Lism;->g:Landroid/view/View;

    const v1, 0x7f1009b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 867
    if-nez v0, :cond_0

    .line 881
    :goto_0
    return-void

    .line 879
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lism;)Litf;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lism;->m:Litf;

    return-object v0
.end method

.method private b(Lmwx;)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 797
    invoke-virtual {p0}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v3}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 798
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0b0224

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 800
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 801
    invoke-virtual {p0}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 802
    const v0, 0x7f040196

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 803
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 804
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x7f0b021e

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 806
    new-instance v0, Lmyg;

    invoke-virtual {p0}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 807
    new-instance v0, Lmyh;

    invoke-virtual {p0}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 809
    const v0, 0x7f1007a0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 810
    invoke-virtual {p0}, Lism;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a36

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 812
    const v0, 0x7f1007a1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 813
    invoke-virtual {p0}, Lism;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a1d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 815
    const v0, 0x7f100783

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Liss;

    invoke-direct {v2, p0, p1, v1}, Liss;-><init>(Lism;Lmwx;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 829
    const v0, 0x7f10079f

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, List;

    invoke-direct {v2, p0, v1}, List;-><init>(Lism;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 836
    return-object v1
.end method

.method static synthetic b(Lism;)Lcom/santander/app/components/view/SantanderEditText;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lism;->k:Lcom/santander/app/components/view/SantanderEditText;

    return-object v0
.end method

.method static synthetic c(Lism;)Lcom/santander/app/components/view/SantanderEditText;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lism;->j:Lcom/santander/app/components/view/SantanderEditText;

    return-object v0
.end method

.method static synthetic d(Lism;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lism;->X()V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 0

    .prologue
    .line 641
    invoke-direct {p0}, Lism;->Y()V

    .line 642
    return-void
.end method

.method public B()V
    .locals 3

    .prologue
    .line 702
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lism;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lism;->startActivity(Landroid/content/Intent;)V

    .line 703
    return-void
.end method

.method public C()V
    .locals 3

    .prologue
    .line 707
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lism;->c:Lcom/santander/app/homenaologada/presentation/HomeActivity;

    const-class v2, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 708
    const-string v1, "action"

    sget-object v2, Liev;->OFFER:Liev;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 709
    iget-object v1, p0, Lism;->c:Lcom/santander/app/homenaologada/presentation/HomeActivity;

    const/16 v2, 0x462

    invoke-virtual {v1, v0, v2}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 710
    return-void
.end method

.method public D()V
    .locals 3

    .prologue
    .line 714
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lism;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 715
    const-string v1, "tipo"

    sget-object v2, Lnat;->BLOQUEIO_ADM:Lnat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 716
    invoke-virtual {p0, v0}, Lism;->startActivity(Landroid/content/Intent;)V

    .line 717
    return-void
.end method

.method public E()V
    .locals 3

    .prologue
    .line 721
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lism;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 722
    const-string v1, "tipo"

    sget-object v2, Lnat;->ERRO_INESPERADO:Lnat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 723
    invoke-virtual {p0, v0}, Lism;->startActivity(Landroid/content/Intent;)V

    .line 724
    return-void
.end method

.method public F()V
    .locals 3

    .prologue
    .line 728
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lism;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 729
    const-string v1, "tipo"

    sget-object v2, Lnat;->BLOQUEIO_CLIENTE:Lnat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 730
    invoke-virtual {p0, v0}, Lism;->startActivity(Landroid/content/Intent;)V

    .line 731
    return-void
.end method

.method public G()V
    .locals 3

    .prologue
    .line 735
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lism;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 736
    const-string v1, "tipo"

    sget-object v2, Lnat;->BLOQUEIO_TENTATIVAS:Lnat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 737
    invoke-virtual {p0, v0}, Lism;->startActivity(Landroid/content/Intent;)V

    .line 738
    return-void
.end method

.method public H()V
    .locals 3

    .prologue
    .line 742
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lism;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 743
    const-string v1, "atm"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 744
    invoke-virtual {p0, v0}, Lism;->startActivity(Landroid/content/Intent;)V

    .line 745
    return-void
.end method

.method public I()V
    .locals 3

    .prologue
    .line 749
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lism;->c:Lcom/santander/app/homenaologada/presentation/HomeActivity;

    const-class v2, Lcom/santander/app/idsantander/presentation/IdSantanderOtimizacaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 750
    const-string v1, "action"

    sget-object v2, Liev;->OFFER:Liev;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 751
    iget-object v1, p0, Lism;->c:Lcom/santander/app/homenaologada/presentation/HomeActivity;

    const/16 v2, 0x46a

    invoke-virtual {v1, v0, v2}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 752
    return-void
.end method

.method public J()V
    .locals 3

    .prologue
    .line 756
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lism;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lism;->startActivity(Landroid/content/Intent;)V

    .line 757
    return-void
.end method

.method public K()V
    .locals 3

    .prologue
    .line 761
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lism;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "tipoConversao"

    sget-object v2, Liuu;->OBRIGATORIA:Liuu;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lism;->startActivity(Landroid/content/Intent;)V

    .line 762
    return-void
.end method

.method public L()V
    .locals 3

    .prologue
    .line 766
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lism;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "tipoConversao"

    sget-object v2, Liuu;->OPCIONAL:Liuu;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lism;->startActivity(Landroid/content/Intent;)V

    .line 767
    return-void
.end method

.method public M()V
    .locals 3

    .prologue
    .line 777
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lism;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lism;->startActivity(Landroid/content/Intent;)V

    .line 778
    return-void
.end method

.method public N()V
    .locals 3

    .prologue
    .line 782
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lism;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 783
    const-string v1, "tipo"

    sget-object v2, Lnat;->ID_CANCELADO:Lnat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 784
    invoke-virtual {p0, v0}, Lism;->startActivity(Landroid/content/Intent;)V

    .line 785
    return-void
.end method

.method public O()V
    .locals 3

    .prologue
    .line 789
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lism;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 790
    const-string v1, "tipo"

    sget-object v2, Lnat;->APARELHO_NAO_HABILITADO:Lnat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 791
    invoke-virtual {p0, v0}, Lism;->startActivity(Landroid/content/Intent;)V

    .line 792
    return-void
.end method

.method public P()Litf;
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lism;->m:Litf;

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lism;->s:Landroid/app/Dialog;

    .line 233
    return-void
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lism;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 389
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lism;->i:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 218
    return-void
.end method

.method public a(Lfvu;)V
    .locals 4

    .prologue
    .line 484
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    invoke-virtual {p0}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 485
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 589
    const-string v0, "Senha"

    const-string v1, "N\u00e3o Ok"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b0132

    invoke-virtual {p0, v0, v1}, Lism;->a(Ljava/lang/String;I)V

    .line 591
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lism;->k:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/SantanderEditText;->setText(Ljava/lang/CharSequence;)V

    .line 309
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lism;->u:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 568
    iget-object v0, p0, Lism;->u:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, p2}, Landroid/support/design/widget/TextInputLayout;->setHintTextAppearance(I)V

    .line 569
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 470
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 471
    const-string v1, "Nome"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    const-string v1, "cpf"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    const-string v1, "cadastro"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 474
    invoke-virtual {p0, v0}, Lism;->startActivity(Landroid/content/Intent;)V

    .line 475
    return-void
.end method

.method public a(Lmwx;)V
    .locals 1

    .prologue
    .line 771
    invoke-direct {p0, p1}, Lism;->b(Lmwx;)Landroid/app/Dialog;

    move-result-object v0

    .line 772
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 773
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 338
    if-eqz p1, :cond_0

    .line 339
    iget-object v0, p0, Lism;->j:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SantanderEditText;->requestFocus()Z

    .line 344
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lism;->j:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SantanderEditText;->clearFocus()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 595
    const-string v0, "Senha"

    const-string v1, "Ok"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lism;->m:Litf;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Litf;->a(Z)V

    .line 597
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lism;->j:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/SantanderEditText;->setInputType(I)V

    .line 314
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 489
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    invoke-virtual {p0}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lhav;->e(Landroid/app/Activity;Ljava/lang/String;)V

    .line 490
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 584
    invoke-virtual {p0}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Fechar"

    invoke-static {v0, p1, p2, v1, v2}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/app/Dialog;

    .line 585
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 328
    if-eqz p1, :cond_0

    .line 329
    iget-object v0, p0, Lism;->k:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SantanderEditText;->requestFocus()Z

    .line 333
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lism;->k:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SantanderEditText;->clearFocus()V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lism;->s:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lism;->s:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lism;->s:Landroid/app/Dialog;

    .line 242
    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 4

    .prologue
    .line 318
    iget-object v0, p0, Lism;->j:Lcom/santander/app/components/view/SantanderEditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 319
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lism;->j:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/SantanderEditText;->setText(Ljava/lang/CharSequence;)V

    .line 520
    return-void
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lism;->l:Lbr/com/santander/uisdk/SantanderSwitch;

    invoke-virtual {v0, p1}, Lbr/com/santander/uisdk/SantanderSwitch;->setChecked(Z)V

    .line 432
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lism;->o:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 297
    return-void
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lism;->k:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/SantanderEditText;->setSelection(I)V

    .line 324
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 543
    sget-object v0, Lmxn;->c:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 544
    invoke-virtual {p0}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    sget-object v0, Lmxn;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 546
    invoke-virtual {p0}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lism;->o:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lism;->o:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 304
    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lism;->j:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SantanderEditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 447
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 448
    iget-object v1, p0, Lism;->j:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v1, v0}, Lcom/santander/app/components/view/SantanderEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 552
    invoke-virtual {p0}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lmxn;->d(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    .line 553
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lism;->k:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SantanderEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(I)V
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lism;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 454
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 455
    iget-object v0, p0, Lism;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lism;->s:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lism;->s:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 608
    const/4 v0, 0x0

    iput-object v0, p0, Lism;->s:Landroid/app/Dialog;

    .line 611
    :cond_0
    invoke-virtual {p0}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lmxn;->d(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    .line 612
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lism;->j:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SantanderEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 601
    invoke-virtual {p0, p1}, Lism;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lism;->f(Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 624
    iput-object p1, p0, Lism;->t:Ljava/lang/String;

    .line 625
    return-void
.end method

.method public h()I
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lism;->k:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SantanderEditText;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public h(I)V
    .locals 3

    .prologue
    .line 845
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 846
    const-string v1, "extra_check_version_action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 847
    const/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1}, Lism;->startActivityForResult(Landroid/content/Intent;I)V

    .line 848
    return-void
.end method

.method public i()F
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lism;->n:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRotation()F

    move-result v0

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 399
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lism;->l:Lbr/com/santander/uisdk/SantanderSwitch;

    invoke-virtual {v0}, Lbr/com/santander/uisdk/SantanderSwitch;->a()Z

    move-result v0

    return v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lism;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lism;->h:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public n()V
    .locals 3

    .prologue
    .line 460
    invoke-virtual {p0}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090397

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->e(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    .line 461
    return-void
.end method

.method public o()V
    .locals 3

    .prologue
    .line 465
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lism;->startActivity(Landroid/content/Intent;)V

    .line 466
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 852
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 854
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 856
    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_1

    .line 857
    iget-object v0, p0, Lism;->m:Litf;

    invoke-interface {v0}, Litf;->m()V

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 859
    :cond_1
    iget-object v0, p0, Lism;->m:Litf;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Litf;->b(Z)V

    .line 860
    iget-object v0, p0, Lism;->m:Litf;

    invoke-interface {v0}, Litf;->u()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 126
    const-string v0, "Login"

    const-string v1, "Outros"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/santander/app/MinhaConta;->a(Landroid/content/Context;)V

    .line 130
    const v0, 0x7f0401f4

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lism;->g:Landroid/view/View;

    .line 132
    iget-object v0, p0, Lism;->g:Landroid/view/View;

    const v1, 0x7f100ca1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lism;->h:Landroid/widget/Button;

    .line 133
    iget-object v0, p0, Lism;->h:Landroid/widget/Button;

    invoke-direct {p0}, Lism;->V()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 135
    iget-object v0, p0, Lism;->g:Landroid/view/View;

    const v1, 0x7f1009b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lism;->i:Landroid/widget/Button;

    .line 136
    iget-object v0, p0, Lism;->i:Landroid/widget/Button;

    invoke-direct {p0}, Lism;->W()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lism;->g:Landroid/view/View;

    const v1, 0x7f1009b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderEditText;

    iput-object v0, p0, Lism;->k:Lcom/santander/app/components/view/SantanderEditText;

    .line 139
    iget-object v0, p0, Lism;->k:Lcom/santander/app/components/view/SantanderEditText;

    invoke-direct {p0}, Lism;->U()Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 140
    iget-object v0, p0, Lism;->k:Lcom/santander/app/components/view/SantanderEditText;

    invoke-direct {p0}, Lism;->R()Landroid/view/View$OnKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 141
    iget-object v0, p0, Lism;->k:Lcom/santander/app/components/view/SantanderEditText;

    invoke-direct {p0}, Lism;->Q()Landroid/view/View$OnFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 142
    iget-object v0, p0, Lism;->k:Lcom/santander/app/components/view/SantanderEditText;

    new-instance v1, Lisn;

    invoke-direct {v1, p0}, Lisn;-><init>(Lism;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lism;->g:Landroid/view/View;

    const v1, 0x7f1009b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderEditText;

    iput-object v0, p0, Lism;->j:Lcom/santander/app/components/view/SantanderEditText;

    .line 150
    iget-object v0, p0, Lism;->j:Lcom/santander/app/components/view/SantanderEditText;

    invoke-direct {p0}, Lism;->U()Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 151
    iget-object v0, p0, Lism;->j:Lcom/santander/app/components/view/SantanderEditText;

    invoke-direct {p0}, Lism;->R()Landroid/view/View$OnKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 152
    iget-object v0, p0, Lism;->j:Lcom/santander/app/components/view/SantanderEditText;

    new-instance v1, Lisu;

    invoke-direct {v1, p0}, Lisu;-><init>(Lism;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lism;->g:Landroid/view/View;

    const v1, 0x7f1009b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lism;->u:Landroid/support/design/widget/TextInputLayout;

    .line 161
    iget-object v0, p0, Lism;->g:Landroid/view/View;

    const v1, 0x7f100ca0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lism;->n:Landroid/widget/ImageView;

    .line 163
    iget-object v0, p0, Lism;->g:Landroid/view/View;

    const v1, 0x7f1009b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/SantanderSwitch;

    iput-object v0, p0, Lism;->l:Lbr/com/santander/uisdk/SantanderSwitch;

    .line 164
    iget-object v0, p0, Lism;->l:Lbr/com/santander/uisdk/SantanderSwitch;

    new-instance v1, Lisv;

    invoke-direct {v1, p0}, Lisv;-><init>(Lism;)V

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/SantanderSwitch;->setOnCheckedChangeListener(Lalz;)V

    .line 171
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0b0224

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lism;->o:Landroid/app/Dialog;

    .line 172
    iget-object v0, p0, Lism;->o:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 173
    iget-object v0, p0, Lism;->o:Landroid/app/Dialog;

    invoke-virtual {p0}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 174
    iget-object v0, p0, Lism;->o:Landroid/app/Dialog;

    const v1, 0x7f04016b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 175
    iget-object v0, p0, Lism;->o:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 176
    iget-object v0, p0, Lism;->o:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x7f0b021e

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 178
    iget-object v0, p0, Lism;->o:Landroid/app/Dialog;

    new-instance v1, Lmyg;

    invoke-virtual {p0}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 179
    iget-object v0, p0, Lism;->o:Landroid/app/Dialog;

    new-instance v1, Lmyh;

    invoke-virtual {p0}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 181
    iget-object v0, p0, Lism;->o:Landroid/app/Dialog;

    const v1, 0x7f10071d

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 182
    iget-object v1, p0, Lism;->o:Landroid/app/Dialog;

    const v2, 0x7f10055e

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 183
    iget-object v2, p0, Lism;->o:Landroid/app/Dialog;

    const v3, 0x7f10071e

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lism;->p:Landroid/widget/Button;

    .line 184
    iget-object v2, p0, Lism;->o:Landroid/app/Dialog;

    const v3, 0x7f10071f

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lism;->q:Landroid/widget/Button;

    .line 186
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lism;->r:Landroid/support/v7/app/AlertDialog$Builder;

    .line 188
    const-string v2, "Alerta"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    const-string v0, "Senha inv\u00e1lida."

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lism;->p:Landroid/widget/Button;

    const-string v1, "Voltar"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lism;->p:Landroid/widget/Button;

    invoke-direct {p0}, Lism;->S()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lism;->q:Landroid/widget/Button;

    const-string v1, "Esqueci a senha"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lism;->q:Landroid/widget/Button;

    invoke-direct {p0}, Lism;->T()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    new-instance v0, Litg;

    invoke-direct {v0, p0}, Litg;-><init>(Litc;)V

    iput-object v0, p0, Lism;->m:Litf;

    .line 199
    iget-object v0, p0, Lism;->m:Litf;

    invoke-interface {v0}, Litf;->n()V

    .line 201
    invoke-direct {p0}, Lism;->Z()V

    .line 203
    iget-object v0, p0, Lism;->g:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 530
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 531
    iget-object v0, p0, Lism;->m:Litf;

    invoke-interface {v0}, Litf;->o()V

    .line 532
    return-void
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 246
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 248
    iget-boolean v0, p0, Lism;->w:Z

    if-eqz v0, :cond_0

    .line 250
    invoke-direct {p0}, Lism;->X()V

    .line 253
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 254
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v8, 0x64

    add-long/2addr v2, v8

    const/4 v4, 0x1

    move v6, v5

    .line 252
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lism;->h:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 262
    iput-boolean v7, p0, Lism;->w:Z

    .line 265
    :cond_0
    sget-boolean v0, Lism;->a:Z

    if-eqz v0, :cond_1

    .line 266
    sput-boolean v7, Lism;->a:Z

    .line 268
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmyz;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    const v0, 0x7f09089a

    invoke-virtual {p0, v0}, Lism;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lism;->d(Ljava/lang/String;)V

    .line 273
    :cond_1
    iget-object v0, p0, Lism;->m:Litf;

    invoke-interface {v0}, Litf;->a()V

    .line 274
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 536
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 537
    iget-object v0, p0, Lism;->m:Litf;

    invoke-interface {v0}, Litf;->o()V

    .line 538
    return-void
.end method

.method public p()V
    .locals 3

    .prologue
    .line 479
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lism;->startActivity(Landroid/content/Intent;)V

    .line 480
    return-void
.end method

.method public q()Lism;
    .locals 0

    .prologue
    .line 494
    return-object p0
.end method

.method public r()V
    .locals 3

    .prologue
    .line 499
    invoke-virtual {p0}, Lism;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 500
    iget-object v1, p0, Lism;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 501
    return-void
.end method

.method public s()V
    .locals 3

    .prologue
    .line 506
    iget-object v0, p0, Lism;->g:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 508
    invoke-virtual {p0}, Lism;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 509
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 510
    return-void
.end method

.method public t()V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lism;->m:Litf;

    invoke-interface {v0}, Litf;->m()V

    .line 514
    iget-object v0, p0, Lism;->m:Litf;

    invoke-interface {v0}, Litf;->o()V

    .line 515
    return-void
.end method

.method public u()V
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lism;->m:Litf;

    invoke-interface {v0}, Litf;->o()V

    .line 525
    invoke-virtual {p0}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 526
    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lism;->t:Ljava/lang/String;

    return-object v0
.end method

.method public w()V
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lism;->v:Liex;

    invoke-interface {v0}, Liex;->a()V

    .line 563
    return-void
.end method

.method public x()V
    .locals 3

    .prologue
    .line 573
    new-instance v1, Liey;

    .line 574
    invoke-virtual {p0}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v2, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v0, p0, v2}, Liey;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Liew;Landroid/content/Context;)V

    iput-object v1, p0, Lism;->v:Liex;

    .line 575
    return-void
.end method

.method public y()V
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lism;->v:Liex;

    invoke-interface {v0}, Liex;->b()V

    .line 580
    return-void
.end method

.method public z()V
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lism;->s:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lism;->s:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 618
    const/4 v0, 0x0

    iput-object v0, p0, Lism;->s:Landroid/app/Dialog;

    .line 620
    :cond_0
    return-void
.end method
