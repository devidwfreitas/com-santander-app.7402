.class public Lagw;
.super Lakb;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0, p1}, Lakb;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lagw;->a:Landroid/app/Activity;

    iget-object v0, p0, Lagw;->a:Landroid/app/Activity;

    sget v1, Lagg;->financiamento_imovel:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lagw;->b:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lagw;->a:Landroid/app/Activity;

    sget v1, Lagg;->financiamento_auto:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lagw;->c:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lagw;->a:Landroid/app/Activity;

    sget v1, Lagg;->header_titulo:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lagl;->financiamentos:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lagw;->b:Landroid/widget/RelativeLayout;

    new-instance v1, Lagx;

    invoke-direct {v1, p0}, Lagx;-><init>(Lagw;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lagw;->c:Landroid/widget/RelativeLayout;

    new-instance v1, Lagy;

    invoke-direct {v1, p0}, Lagy;-><init>(Lagw;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lagw;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lagw;->a:Landroid/app/Activity;

    return-object v0
.end method
