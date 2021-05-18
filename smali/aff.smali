.class public Laff;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laff;->a:Landroid/app/Activity;

    invoke-direct {p0}, Laff;->a()V

    invoke-direct {p0}, Laff;->b()V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Laff;->a:Landroid/app/Activity;

    sget v1, Ladr;->button_continuar_dda:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Laff;->b:Landroid/widget/Button;

    return-void
.end method

.method static synthetic a(Laff;)V
    .locals 0

    invoke-direct {p0}, Laff;->c()V

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Laff;->b:Landroid/widget/Button;

    new-instance v1, Lafk;

    invoke-direct {v1, p0}, Lafk;-><init>(Laff;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private c()V
    .locals 3

    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v0

    const-string v1, "Pagamentos_DDA_Cadastrar_Sucesso_Acao"

    const-string v2, "Continuar"

    invoke-virtual {v0, v1, v2}, Ladh;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Laff;->a:Landroid/app/Activity;

    const-class v2, Lbr/com/santander/modulo/ddav1/view/TitlesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Laff;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
